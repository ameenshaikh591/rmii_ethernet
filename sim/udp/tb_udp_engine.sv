`timescale 1ns/1ps

module tb_udp_engine;
    localparam time AXI_PERIOD = 10ns;
    localparam time RMII_PERIOD = 20ns;
    localparam logic [47:0] LOCAL_MAC = 48'h00_11_22_33_44_55;
    localparam logic [47:0] PEER_MAC  = 48'h02_AA_BB_CC_DD_EE;
    localparam logic [31:0] LOCAL_IP = 32'hC0A8_0164; // 192.168.1.100
    localparam logic [31:0] PEER_IP  = 32'hC0A8_0132; // 192.168.1.50
    localparam logic [31:0] DMA_BASE = 32'h0000_1000;
    localparam int TX0_ADDR = DMA_BASE + 9000;

    logic axi_clk = 0;
    logic axi_resetn = 0;
    logic ref_clk = 0;
    logic rmii_resetn = 0;
    logic [1:0] rxd = 0;
    logic rxer = 0;
    logic crs_dv = 0;
    logic [1:0] txd;
    logic tx_en;

    logic [31:0] s_awaddr, s_wdata, s_araddr, s_rdata;
    logic [2:0] s_awprot, s_arprot;
    logic [3:0] s_wstrb;
    logic s_awvalid, s_awready, s_wvalid, s_wready;
    logic [1:0] s_bresp, s_rresp;
    logic s_bvalid, s_bready, s_arvalid, s_arready, s_rvalid, s_rready;

    logic [31:0] rd_araddr, rd_rdata;
    logic [7:0] rd_arlen;
    logic [2:0] rd_arsize, rd_arprot;
    logic [1:0] rd_arburst, rd_rresp;
    logic rd_arvalid, rd_arready, rd_rlast, rd_rvalid, rd_rready;

    logic [31:0] wr_awaddr, wr_wdata;
    logic [7:0] wr_awlen;
    logic [2:0] wr_awsize, wr_awprot;
    logic [1:0] wr_awburst, wr_bresp;
    logic wr_awvalid, wr_awready;
    logic [3:0] wr_wstrb;
    logic wr_wlast, wr_wvalid, wr_wready, wr_bvalid, wr_bready;

    byte unsigned memory [0:65535];
    logic write_address_pending;
    logic [31:0] captured_write_address;

    byte unsigned observed_frame[$];

    always #(AXI_PERIOD/2) axi_clk = ~axi_clk;
    always #(RMII_PERIOD/2) ref_clk = ~ref_clk;

    udp_engine #(
        .G_LOCAL_MAC(LOCAL_MAC),
        .G_ARP_RETRY_INTERVAL_CYCLES(2000),
        .G_ARP_MAX_REQUESTS(3)
    ) dut (
        .S_AXI_ACLK(axi_clk), .S_AXI_ARESETN(axi_resetn),
        .i_ref_clk(ref_clk), .i_rmii_resetn(rmii_resetn),
        .i_rxd(rxd), .i_rxer(rxer), .i_crs_dv(crs_dv),
        .o_txd(txd), .o_tx_en(tx_en),
        .S_AXI_AWADDR(s_awaddr), .S_AXI_AWPROT(s_awprot),
        .S_AXI_AWVALID(s_awvalid), .S_AXI_AWREADY(s_awready),
        .S_AXI_WDATA(s_wdata), .S_AXI_WSTRB(s_wstrb),
        .S_AXI_WVALID(s_wvalid), .S_AXI_WREADY(s_wready),
        .S_AXI_BRESP(s_bresp), .S_AXI_BVALID(s_bvalid), .S_AXI_BREADY(s_bready),
        .S_AXI_ARADDR(s_araddr), .S_AXI_ARPROT(s_arprot),
        .S_AXI_ARVALID(s_arvalid), .S_AXI_ARREADY(s_arready),
        .S_AXI_RDATA(s_rdata), .S_AXI_RRESP(s_rresp),
        .S_AXI_RVALID(s_rvalid), .S_AXI_RREADY(s_rready),
        .M_AXI_RD_ARADDR(rd_araddr), .M_AXI_RD_ARLEN(rd_arlen),
        .M_AXI_RD_ARSIZE(rd_arsize), .M_AXI_RD_ARBURST(rd_arburst),
        .M_AXI_RD_ARPROT(rd_arprot), .M_AXI_RD_ARVALID(rd_arvalid),
        .M_AXI_RD_ARREADY(rd_arready), .M_AXI_RD_RDATA(rd_rdata),
        .M_AXI_RD_RRESP(rd_rresp), .M_AXI_RD_RLAST(rd_rlast),
        .M_AXI_RD_RVALID(rd_rvalid), .M_AXI_RD_RREADY(rd_rready),
        .M_AXI_WR_AWADDR(wr_awaddr), .M_AXI_WR_AWLEN(wr_awlen),
        .M_AXI_WR_AWSIZE(wr_awsize), .M_AXI_WR_AWBURST(wr_awburst),
        .M_AXI_WR_AWPROT(wr_awprot), .M_AXI_WR_AWVALID(wr_awvalid),
        .M_AXI_WR_AWREADY(wr_awready), .M_AXI_WR_WDATA(wr_wdata),
        .M_AXI_WR_WSTRB(wr_wstrb), .M_AXI_WR_WLAST(wr_wlast),
        .M_AXI_WR_WVALID(wr_wvalid), .M_AXI_WR_WREADY(wr_wready),
        .M_AXI_WR_BRESP(wr_bresp), .M_AXI_WR_BVALID(wr_bvalid),
        .M_AXI_WR_BREADY(wr_bready)
    );

    assign rd_arready = !rd_rvalid;
    assign wr_awready = !write_address_pending && !wr_bvalid;
    assign wr_wready = write_address_pending && !wr_bvalid;

    always @(posedge axi_clk) begin
        if (!axi_resetn) begin
            rd_rvalid <= 0;
            rd_rdata <= 0;
            rd_rresp <= 0;
            rd_rlast <= 0;
        end else begin
            if (rd_arvalid && rd_arready) begin
                assert (rd_arlen == 0 && rd_arsize == 3'b010)
                    else $fatal(1, "Unexpected read burst shape");
                rd_rdata <= {memory[rd_araddr+3], memory[rd_araddr+2],
                             memory[rd_araddr+1], memory[rd_araddr]};
                rd_rresp <= 2'b00;
                rd_rlast <= 1;
                rd_rvalid <= 1;
            end else if (rd_rvalid && rd_rready) begin
                rd_rvalid <= 0;
                rd_rlast <= 0;
            end
        end
    end

    always @(posedge axi_clk) begin
        if (!axi_resetn) begin
            write_address_pending <= 0;
            captured_write_address <= 0;
            wr_bvalid <= 0;
            wr_bresp <= 0;
        end else begin
            if (wr_awvalid && wr_awready) begin
                assert (wr_awlen == 0 && wr_awsize == 3'b010)
                    else $fatal(1, "Unexpected write burst shape");
                captured_write_address <= wr_awaddr;
                write_address_pending <= 1;
            end
            if (wr_wvalid && wr_wready) begin
                assert (wr_wlast) else $fatal(1, "Single-beat write lacked WLAST");
                for (int lane = 0; lane < 4; lane++) begin
                    if (wr_wstrb[lane])
                        memory[captured_write_address + lane] <= wr_wdata[lane*8 +: 8];
                end
                write_address_pending <= 0;
                wr_bresp <= 2'b00;
                wr_bvalid <= 1;
            end else if (wr_bvalid && wr_bready) begin
                wr_bvalid <= 0;
            end
        end
    end

    function automatic logic [31:0] crc32_update(logic [31:0] crc_in,
                                                  byte unsigned data_byte);
        logic [31:0] crc;
        crc = crc_in ^ data_byte;
        for (int bit_index = 0; bit_index < 8; bit_index++)
            crc = crc[0] ? ((crc >> 1) ^ 32'hEDB88320) : (crc >> 1);
        return crc;
    endfunction

    task automatic memory_write_word(input int address, input logic [31:0] value);
        for (int lane = 0; lane < 4; lane++)
            memory[address + lane] = value[lane*8 +: 8];
    endtask

    task automatic axil_write(input logic [31:0] address, input logic [31:0] value);
        @(posedge axi_clk);
        s_awaddr <= address;
        s_awvalid <= 1;
        do @(posedge axi_clk); while (!s_awready);
        s_awvalid <= 0;
        s_wdata <= value;
        s_wstrb <= 4'hF;
        s_wvalid <= 1;
        do @(posedge axi_clk); while (!s_wready);
        s_wvalid <= 0;
        s_bready <= 1;
        do @(posedge axi_clk); while (!s_bvalid);
        assert (s_bresp == 0) else $fatal(1, "AXI-Lite write failed at %08x", address);
        s_bready <= 0;
    endtask

    task automatic axil_read(input logic [31:0] address, output logic [31:0] value);
        @(posedge axi_clk);
        s_araddr <= address;
        s_arvalid <= 1;
        do @(posedge axi_clk); while (!s_arready);
        s_arvalid <= 0;
        s_rready <= 1;
        do @(posedge axi_clk); while (!s_rvalid);
        assert (s_rresp == 0) else $fatal(1, "AXI-Lite read failed at %08x", address);
        value = s_rdata;
        s_rready <= 0;
    endtask

    task automatic send_rmii_byte(input byte unsigned value);
        for (int dibit = 0; dibit < 4; dibit++) begin
            @(negedge ref_clk);
            crs_dv <= 1;
            rxd <= value[dibit*2 +: 2];
        end
    endtask

    task automatic send_ethernet_frame(input byte unsigned packet[$]);
        byte unsigned bytes[$];
        logic [31:0] crc;
        logic [31:0] fcs;
        bytes = packet;
        while (bytes.size() < 60) bytes.push_back(8'h00);
        repeat (7) send_rmii_byte(8'h55);
        send_rmii_byte(8'hD5);
        crc = 32'hFFFF_FFFF;
        foreach (bytes[index]) begin
            send_rmii_byte(bytes[index]);
            crc = crc32_update(crc, bytes[index]);
        end
        fcs = ~crc;
        send_rmii_byte(fcs[7:0]);
        send_rmii_byte(fcs[15:8]);
        send_rmii_byte(fcs[23:16]);
        send_rmii_byte(fcs[31:24]);
        @(negedge ref_clk);
        crs_dv <= 0;
        rxd <= 0;
        repeat (50) @(posedge ref_clk);
    endtask

    task automatic collect_tx_frame(output byte unsigned bytes[$]);
        byte unsigned value;
        bytes.delete();
        wait (tx_en);
        while (tx_en) begin
            value = 0;
            for (int dibit = 0; dibit < 4; dibit++) begin
                @(negedge ref_clk);
                assert (tx_en) else $fatal(1, "TX_EN fell within a byte");
                value[dibit*2 +: 2] = txd;
            end
            bytes.push_back(value);
            @(posedge ref_clk);
            #1ps;
        end
    endtask

    task automatic push_mac(ref byte unsigned bytes[$], input logic [47:0] mac);
        for (int index = 5; index >= 0; index--)
            bytes.push_back(mac[index*8 +: 8]);
    endtask

    task automatic push_ip(ref byte unsigned bytes[$], input logic [31:0] ip);
        for (int index = 3; index >= 0; index--)
            bytes.push_back(ip[index*8 +: 8]);
    endtask

    task automatic send_arp_reply;
        byte unsigned bytes[$];
        push_mac(bytes, LOCAL_MAC);
        push_mac(bytes, PEER_MAC);
        bytes.push_back(8'h08); bytes.push_back(8'h06);
        bytes.push_back(8'h00); bytes.push_back(8'h01);
        bytes.push_back(8'h08); bytes.push_back(8'h00);
        bytes.push_back(8'h06); bytes.push_back(8'h04);
        bytes.push_back(8'h00); bytes.push_back(8'h02);
        push_mac(bytes, PEER_MAC);
        push_ip(bytes, PEER_IP);
        push_mac(bytes, LOCAL_MAC);
        push_ip(bytes, LOCAL_IP);
        send_ethernet_frame(bytes);
    endtask

    function automatic logic [15:0] ipv4_checksum(input byte unsigned header[$]);
        int unsigned sum;
        sum = 0;
        for (int index = 0; index < 20; index += 2)
            sum += (header[index] << 8) | header[index+1];
        while (sum >> 16) sum = (sum & 16'hFFFF) + (sum >> 16);
        return ~sum[15:0];
    endfunction

    task automatic send_udp_to_fpga;
        byte unsigned bytes[$];
        byte unsigned ip_header[$];
        logic [15:0] checksum;
        push_mac(bytes, LOCAL_MAC);
        push_mac(bytes, PEER_MAC);
        bytes.push_back(8'h08); bytes.push_back(8'h00);

        ip_header = '{8'h45,8'h00,8'h00,8'h1E,8'h12,8'h34,8'h40,8'h00,
                      8'h40,8'h11,8'h00,8'h00,
                      8'hC0,8'hA8,8'h01,8'h32,8'hC0,8'hA8,8'h01,8'h64};
        checksum = ipv4_checksum(ip_header);
        ip_header[10] = checksum[15:8];
        ip_header[11] = checksum[7:0];
        foreach (ip_header[index]) bytes.push_back(ip_header[index]);
        bytes.push_back(8'h16); bytes.push_back(8'h2E); // source 5678
        bytes.push_back(8'h04); bytes.push_back(8'hD2); // destination 1234
        bytes.push_back(8'h00); bytes.push_back(8'h0A);
        bytes.push_back(8'h00); bytes.push_back(8'h00);
        bytes.push_back("O"); bytes.push_back("K");
        send_ethernet_frame(bytes);
    endtask

    task automatic expect_byte(input int index, input byte unsigned expected);
        assert (observed_frame[index] == expected)
            else $fatal(1, "Frame[%0d]: expected %02x got %02x",
                        index, expected, observed_frame[index]);
    endtask

    initial begin
        logic [31:0] value;
        int unsigned checksum_sum;
        for (int index = 0; index < 65536; index++) memory[index] = 0;
        s_awaddr = 0; s_awprot = 0; s_awvalid = 0;
        s_wdata = 0; s_wstrb = 0; s_wvalid = 0; s_bready = 0;
        s_araddr = 0; s_arprot = 0; s_arvalid = 0; s_rready = 0;

        repeat (10) @(posedge axi_clk);
        axi_resetn <= 1;
        rmii_resetn <= 1;
        repeat (10) @(posedge axi_clk);

        axil_write(32'h00, DMA_BASE);
        axil_write(32'h24, LOCAL_IP);
        axil_write(32'h28, 32'hFFFF_FF00);
        axil_write(32'h2C, 32'hC0A8_0101);
        axil_write(32'h08, 0);
        axil_write(32'h04, 32'h8000_04D2); // socket 0, UDP port 1234

        memory_write_word(TX0_ADDR + 0, PEER_IP);
        memory_write_word(TX0_ADDR + 4, {16'd1234, 16'd4321});
        memory_write_word(TX0_ADDR + 8, 32'd5);
        memory_write_word(TX0_ADDR + 12, 0);
        memory[TX0_ADDR + 16] = "H";
        memory[TX0_ADDR + 17] = "E";
        memory[TX0_ADDR + 18] = "L";
        memory[TX0_ADDR + 19] = "L";
        memory[TX0_ADDR + 20] = "O";
        axil_write(32'h20, 1);

        collect_tx_frame(observed_frame);
        assert (observed_frame.size() == 72) else $fatal(1, "ARP frame length");
        for (int index = 8; index < 14; index++) expect_byte(index, 8'hFF);
        expect_byte(20, 8'h08); expect_byte(21, 8'h06);
        expect_byte(46, 8'hC0); expect_byte(47, 8'hA8);
        expect_byte(48, 8'h01); expect_byte(49, 8'h32);

        fork
            send_arp_reply();
            collect_tx_frame(observed_frame);
        join
        assert (observed_frame.size() == 72)
            else $fatal(1, "UDP frame length: got %0d", observed_frame.size());
        for (int index = 0; index < 6; index++)
            expect_byte(8 + index, PEER_MAC[(5-index)*8 +: 8]);
        expect_byte(20, 8'h08); expect_byte(21, 8'h00);
        expect_byte(24, 8'h00); expect_byte(25, 8'h21); // IPv4 total length 33
        expect_byte(34, 8'hC0); expect_byte(35, 8'hA8);
        expect_byte(36, 8'h01); expect_byte(37, 8'h64);
        expect_byte(38, 8'hC0); expect_byte(39, 8'hA8);
        expect_byte(40, 8'h01); expect_byte(41, 8'h32);
        expect_byte(42, 8'h04); expect_byte(43, 8'hD2); // source port 1234
        expect_byte(44, 8'h10); expect_byte(45, 8'hE1); // destination port 4321
        expect_byte(46, 8'h00); expect_byte(47, 8'h0D); // UDP length 13
        checksum_sum = 0;
        for (int index = 22; index < 42; index += 2)
            checksum_sum += (observed_frame[index] << 8) | observed_frame[index+1];
        while (checksum_sum >> 16)
            checksum_sum = (checksum_sum & 16'hFFFF) + (checksum_sum >> 16);
        assert (checksum_sum[15:0] == 16'hFFFF)
            else $fatal(1, "Transmitted IPv4 checksum is invalid");
        expect_byte(50, "H"); expect_byte(51, "E"); expect_byte(52, "L");
        expect_byte(53, "L"); expect_byte(54, "O");

        send_udp_to_fpga();
        do begin
            axil_read(32'h0C, value);
        end while ((value & 7) == 0);
        assert (value[2:0] == 3'b001) else $fatal(1, "RX tail did not advance");
        assert ({memory[DMA_BASE+3],memory[DMA_BASE+2],memory[DMA_BASE+1],memory[DMA_BASE]} == PEER_IP)
            else $fatal(1, "RX source IP metadata mismatch");
        assert ({memory[DMA_BASE+7],memory[DMA_BASE+6],memory[DMA_BASE+5],memory[DMA_BASE+4]} ==
                32'h04D2_162E)
            else $fatal(1, "RX UDP port metadata mismatch");
        assert ({memory[DMA_BASE+11],memory[DMA_BASE+10],memory[DMA_BASE+9],memory[DMA_BASE+8]} == 2)
            else $fatal(1, "RX payload length metadata mismatch");
        assert (memory[DMA_BASE+16] == "O" && memory[DMA_BASE+17] == "K")
            else $fatal(1, "RX payload mismatch");

        $display("SUCCESS: ARP miss/reply, UDP TX, and UDP RX all completed");
        $finish;
    end

    initial begin
        #2ms;
        $fatal(1, "Timed out");
    end
endmodule
