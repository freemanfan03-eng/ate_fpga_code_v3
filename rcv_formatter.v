// =========================================================================
// rcv_formatter.v - RCV 接收波形展开引擎 (语法修正版)
// =========================================================================
`include "wave_def.vh"

module rcv_formatter #(
    parameter integer DATA_WIDTH   = 64,
    parameter integer EDGE_WIDTH   = 16,
    parameter integer PERIOD_WIDTH = 24
)(
    input  wire                          clk,
    input  wire                          rst_n,
    input  wire                          trigger_sync,
    input  wire [PERIOD_WIDTH-1:0]      period_ui_in,

    // RCV 专属的 2 个边沿 (E0, E5)
    input  wire [EDGE_WIDTH-1:0]         act_edge_0_ui,
    input  wire [EDGE_WIDTH-1:0]         act_edge_5_ui,
    input  wire                          act_e0,
    input  wire                          act_e5,

    output wire                          next_vector_req,
    output wire [DATA_WIDTH-1:0]        rcv_parallel_data
);

   

endmodule