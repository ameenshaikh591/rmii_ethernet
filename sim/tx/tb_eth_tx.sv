`timescale 1ns/1ps

module tb_eth_tx;
    localparam time AXI_CLK_PERIOD = 10ns;
    localparam time RMII_CLK_PERIOD = 20ns;

    localparam int AXI_ADDR_WIDTH = 32;
    localparam int AXI_DATA_WIDTH = 32;
    localparam int TEST_PAYLOAD_BYTES = 50;
    localparam int MIN_PAYLOAD_BYTES = 46;
    localparam int FRAME_PAYLOAD_BYTES =
        (TEST_PAYLOAD_BYTES < MIN_PAYLOAD_BYTES) ? MIN_PAYLOAD_BYTES : TEST_PAYLOAD_BYTES;
    localparam int EXPECTED_FRAME_BYTES = 8 + 6 + 6 + 2 + FRAME_PAYLOAD_BYTES + 4;

    localparam logic [47:0] DEST_MAC = 48'hA1_B2_C3_D4_E5_F6;
    localparam logic [47:0] SRC_MAC = 48'h00_11_22_33_44_55;
    localparam logic [15:0] ETH_TYPE = 16'h88D5;

    logic s_axi_aclk = 1'b0;
    logic s_axi_aresetn = 1'b0;
    logic i_ref_clk = 1'b0;
    logic i_rst_n = 1'b0;

    logic o_tx_en;
    logic [1:0] o_txd;

    logic [AXI_ADDR_WIDTH-1:0] s_axi_awaddr;
    logic [2:0] s_axi_awprot;
    logic s_axi_awvalid;
    logic s_axi_awready;
    logic [AXI_DATA_WIDTH-1:0] s_axi_wdata;
    logic [(AXI_DATA_WIDTH/8)-1:0] s_axi_wstrb;
    logic s_axi_wvalid;
    logic s_axi_wready;
    logic [1:0] s_axi_bresp;
    logic s_axi_bvalid;
    logic s_axi_bready;
    logic [AXI_ADDR_WIDTH-1:0] s_axi_araddr;
    logic [2:0] s_axi_arprot;
    logic s_axi_arvalid;
    logic s_axi_arready;
    logic [AXI_DATA_WIDTH-1:0] s_axi_rdata;
    logic [1:0] s_axi_rresp;
    logic s_axi_rvalid;
    logic s_axi_rready;

    logic [AXI_ADDR_WIDTH-1:0] m_axi_araddr;
    logic [7:0] m_axi_arlen;
    logic [2:0] m_axi_arsize;
    logic [1:0] m_axi_arburst;
    logic m_axi_arvalid;
    logic m_axi_arready;
    logic [AXI_DATA_WIDTH-1:0] m_axi_rdata;
    logic [1:0] m_axi_rresp;
    logic m_axi_rlast;
    logic m_axi_rvalid;
    logic m_axi_rready;

    byte observed_frame [$];

    always #(AXI_CLK_PERIOD / 2) s_axi_aclk = ~s_axi_aclk;
    always #(RMII_CLK_PERIOD / 2) i_ref_clk = ~i_ref_clk;

    eth_tx dut (
        .S_AXI_ACLK(s_axi_aclk),
        .S_AXI_ARESETN(s_axi_aresetn),
        .i_ref_clk(i_ref_clk),
        .i_rst_n(i_rst_n),
        .o_tx_en(o_tx_en),
        .o_txd(o_txd),
        .S_AXI_AWADDR(s_axi_awaddr),
        .S_AXI_AWPROT(s_axi_awprot),
        .S_AXI_AWVALID(s_axi_awvalid),
        .S_AXI_AWREADY(s_axi_awready),
        .S_AXI_WDATA(s_axi_wdata),
        .S_AXI_WSTRB(s_axi_wstrb),
        .S_AXI_WVALID(s_axi_wvalid),
        .S_AXI_WREADY(s_axi_wready),
        .S_AXI_BRESP(s_axi_bresp),
        .S_AXI_BVALID(s_axi_bvalid),
        .S_AXI_BREADY(s_axi_bready),
        .S_AXI_ARADDR(s_axi_araddr),
        .S_AXI_ARPROT(s_axi_arprot),
        .S_AXI_ARVALID(s_axi_arvalid),
        .S_AXI_ARREADY(s_axi_arready),
        .S_AXI_RDATA(s_axi_rdata),
        .S_AXI_RRESP(s_axi_rresp),
        .S_AXI_RVALID(s_axi_rvalid),
        .S_AXI_RREADY(s_axi_rready),
        .M_AXI_ARADDR(m_axi_araddr),
        .M_AXI_ARLEN(m_axi_arlen),
        .M_AXI_ARSIZE(m_axi_arsize),
        .M_AXI_ARBURST(m_axi_arburst),
        .M_AXI_ARVALID(m_axi_arvalid),
        .M_AXI_ARREADY(m_axi_arready),
        .M_AXI_RDATA(m_axi_rdata),
        .M_AXI_RRESP(m_axi_rresp),
        .M_AXI_RLAST(m_axi_rlast),
        .M_AXI_RVALID(m_axi_rvalid),
        .M_AXI_RREADY(m_axi_rready)
    );

    memory_tester #(
        .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
        .AXI_DATA_WIDTH(AXI_DATA_WIDTH),
        .TEST_PAYLOAD_BYTES(TEST_PAYLOAD_BYTES)
    ) payload_memory (
        .axi_aclk(s_axi_aclk),
        .axi_aresetn(s_axi_aresetn),
        .s_axi_araddr(m_axi_araddr),
        .s_axi_arlen(m_axi_arlen),
        .s_axi_arsize(m_axi_arsize),
        .s_axi_arburst(m_axi_arburst),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_arready(m_axi_arready),
        .s_axi_rdata(m_axi_rdata),
        .s_axi_rresp(m_axi_rresp),
        .s_axi_rlast(m_axi_rlast),
        .s_axi_rvalid(m_axi_rvalid),
        .s_axi_rready(m_axi_rready)
    );

    task automatic axil_write(input logic [31:0] addr, input logic [31:0] data);
        fork
            begin
                s_axi_awaddr <= addr;
                s_axi_awprot <= 3'b000;
                s_axi_awvalid <= 1'b1;
                do begin
                    @(posedge s_axi_aclk);
                end while (!s_axi_awready);
                s_axi_awvalid <= 1'b0;
                s_axi_awaddr <= '0;
            end
            begin
                s_axi_wdata <= data;
                s_axi_wstrb <= 4'hF;
                s_axi_wvalid <= 1'b1;
                do begin
                    @(posedge s_axi_aclk);
                end while (!s_axi_wready);
                s_axi_wvalid <= 1'b0;
                s_axi_wdata <= '0;
                s_axi_wstrb <= '0;
            end
        join

        s_axi_bready <= 1'b1;
        do begin
            @(posedge s_axi_aclk);
        end while (!s_axi_bvalid);

        assert (s_axi_bresp == 2'b00)
            else $fatal(1, "AXI-Lite write to 0x%08x failed with BRESP=%b", addr, s_axi_bresp);

        @(posedge s_axi_aclk);
        s_axi_bready <= 1'b0;
    endtask

    task automatic rmii_collect_frame(output byte frame[$]);
        byte rx_byte;
        frame.delete();

        do begin
            @(posedge i_ref_clk);
            #1ps;
        end while (!o_tx_en);

        while (o_tx_en) begin
            rx_byte = '0;
            for (int phase = 0; phase < 4; phase++) begin
                if (phase != 0) begin
                    @(posedge i_ref_clk);
                    #1ps;
                end
                assert (o_tx_en)
                    else $fatal(1, "TX_EN deasserted in the middle of a byte");
                rx_byte[phase * 2 +: 2] = o_txd;
            end
            frame.push_back(rx_byte);
            @(posedge i_ref_clk);
            #1ps;
        end
    endtask

    function automatic logic [31:0] crc32_update(input logic [31:0] crc_in, input byte data);
        logic [31:0] crc;
        crc = crc_in ^ {24'h0, data};
        for (int i = 0; i < 8; i++) begin
            if (crc[0]) begin
                crc = (crc >> 1) ^ 32'hEDB88320;
            end else begin
                crc = crc >> 1;
            end
        end
        return crc;
    endfunction

    function automatic byte payload_byte(input int payload_idx, input int byte_idx);
        return byte'(payload_idx * 8'h40 + byte_idx);
    endfunction

    task automatic check_byte(input int index, input byte expected);
        assert (observed_frame[index] == expected)
            else $fatal(
                1,
                "Frame byte %0d mismatch: expected 0x%02x, got 0x%02x",
                index,
                expected,
                observed_frame[index]
            );
    endtask

    task automatic check_observed_frame;
        logic [31:0] crc;
        logic [31:0] expected_fcs;
        int index;

        assert (observed_frame.size() == EXPECTED_FRAME_BYTES)
            else $fatal(
                1,
                "Frame length mismatch: expected %0d bytes, got %0d",
                EXPECTED_FRAME_BYTES,
                observed_frame.size()
            );

        for (int i = 0; i < 7; i++) begin
            check_byte(i, 8'h55);
        end
        check_byte(7, 8'hD5);

        index = 8;
        for (int i = 0; i < 6; i++) begin
            check_byte(index++, DEST_MAC[i * 8 +: 8]);
        end

        for (int i = 0; i < 6; i++) begin
            check_byte(index++, SRC_MAC[(5 - i) * 8 +: 8]);
        end

        check_byte(index++, ETH_TYPE[15:8]);
        check_byte(index++, ETH_TYPE[7:0]);

        for (int i = 0; i < TEST_PAYLOAD_BYTES; i++) begin
            check_byte(index++, payload_byte(0, i));
        end

        for (int i = TEST_PAYLOAD_BYTES; i < FRAME_PAYLOAD_BYTES; i++) begin
            check_byte(index++, 8'h00);
        end

        crc = 32'hFFFFFFFF;
        for (int i = 8; i < (8 + 6 + 6 + 2 + FRAME_PAYLOAD_BYTES); i++) begin
            crc = crc32_update(crc, observed_frame[i]);
        end
        expected_fcs = ~crc;

        check_byte(index++, expected_fcs[7:0]);
        check_byte(index++, expected_fcs[15:8]);
        check_byte(index++, expected_fcs[23:16]);
        check_byte(index++, expected_fcs[31:24]);
    endtask

    initial begin
        s_axi_awaddr = '0;
        s_axi_awprot = '0;
        s_axi_awvalid = 1'b0;
        s_axi_wdata = '0;
        s_axi_wstrb = '0;
        s_axi_wvalid = 1'b0;
        s_axi_bready = 1'b0;
        s_axi_araddr = '0;
        s_axi_arprot = '0;
        s_axi_arvalid = 1'b0;
        s_axi_rready = 1'b0;

        repeat (10) @(posedge s_axi_aclk);
        s_axi_aresetn <= 1'b1;
        i_rst_n <= 1'b1;

        repeat (4) @(posedge s_axi_aclk);

        axil_write(32'h00, 32'h0000_0000);
        axil_write(32'h10, DEST_MAC[31:0]);
        axil_write(32'h14, {16'h0000, DEST_MAC[47:32]});
        axil_write(32'h18, TEST_PAYLOAD_BYTES);
        axil_write(32'h04, 32'h0000_0001);

        rmii_collect_frame(observed_frame);
        check_observed_frame();

        $display("SUCCESS: eth_tx emitted the expected RMII frame");
        $finish;
    end

    initial begin
        #(200us);
        $fatal(1, "Timed out waiting for TX frame");
    end
endmodule
