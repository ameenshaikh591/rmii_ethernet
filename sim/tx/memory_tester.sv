`timescale 1ns/1ps

module memory_tester #(
    parameter int AXI_ADDR_WIDTH = 32,
    parameter int AXI_DATA_WIDTH = 32,
    parameter int PAYLOAD_BYTES = 1500,
    parameter int NUM_PAYLOADS = 4,
    parameter int TEST_PAYLOAD_BYTES = 50
) (
    input  logic                         axi_aclk,
    input  logic                         axi_aresetn,

    input  logic [AXI_ADDR_WIDTH-1:0]    s_axi_araddr,
    input  logic [7:0]                   s_axi_arlen,
    input  logic [2:0]                   s_axi_arsize,
    input  logic [1:0]                   s_axi_arburst,
    input  logic                         s_axi_arvalid,
    output logic                         s_axi_arready,

    output logic [AXI_DATA_WIDTH-1:0]    s_axi_rdata,
    output logic [1:0]                   s_axi_rresp,
    output logic                         s_axi_rlast,
    output logic                         s_axi_rvalid,
    input  logic                         s_axi_rready
);
    localparam int TOTAL_BYTES = PAYLOAD_BYTES * NUM_PAYLOADS;

    logic [7:0] mem [0:TOTAL_BYTES-1];

    logic active;
    logic [AXI_ADDR_WIDTH-1:0] read_addr;
    logic [7:0] beats_remaining;

    function automatic logic [7:0] payload_byte(input int payload_idx, input int byte_idx);
        payload_byte = logic'(8'(payload_idx * 8'h40 + byte_idx));
    endfunction

    function automatic logic [AXI_DATA_WIDTH-1:0] read_word(input logic [AXI_ADDR_WIDTH-1:0] addr);
        int unsigned base;
        begin
            base = int'(addr);
            read_word = '0;

            for (int byte_idx = 0; byte_idx < (AXI_DATA_WIDTH / 8); byte_idx++) begin
                if ((base + byte_idx) < TOTAL_BYTES) begin
                    read_word[byte_idx * 8 +: 8] = mem[base + byte_idx];
                end
            end
        end
    endfunction

    initial begin
        for (int i = 0; i < TOTAL_BYTES; i++) begin
            mem[i] = 8'h00;
        end

        for (int payload_idx = 0; payload_idx < NUM_PAYLOADS; payload_idx++) begin
            for (int byte_idx = 0; byte_idx < TEST_PAYLOAD_BYTES; byte_idx++) begin
                mem[(payload_idx * PAYLOAD_BYTES) + byte_idx] = payload_byte(payload_idx, byte_idx);
            end
        end
    end

    always_ff @(posedge axi_aclk) begin
        if (!axi_aresetn) begin
            active <= 1'b0;
            read_addr <= '0;
            beats_remaining <= '0;

            s_axi_arready <= 1'b1;
            s_axi_rdata <= '0;
            s_axi_rresp <= 2'b00;
            s_axi_rlast <= 1'b0;
            s_axi_rvalid <= 1'b0;
        end else begin
            if (s_axi_rvalid && s_axi_rready) begin
                if (beats_remaining == 8'd0) begin
                    active <= 1'b0;
                    s_axi_arready <= 1'b1;
                    s_axi_rvalid <= 1'b0;
                    s_axi_rlast <= 1'b0;
                end else begin
                    read_addr <= read_addr + (1 << s_axi_arsize);
                    beats_remaining <= beats_remaining - 8'd1;
                    s_axi_rdata <= read_word(read_addr + (1 << s_axi_arsize));
                    s_axi_rlast <= (beats_remaining == 8'd1);
                end
            end

            if (!active && s_axi_arvalid && s_axi_arready) begin
                active <= 1'b1;
                read_addr <= s_axi_araddr;
                beats_remaining <= s_axi_arlen;

                s_axi_arready <= 1'b0;
                s_axi_rdata <= read_word(s_axi_araddr);
                s_axi_rresp <= (s_axi_arburst == 2'b01 && s_axi_arsize == 3'b010) ? 2'b00 : 2'b10;
                s_axi_rlast <= (s_axi_arlen == 8'd0);
                s_axi_rvalid <= 1'b1;
            end
        end
    end
endmodule
