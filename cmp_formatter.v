// =========================================================================
// cmp_formatter.v - ATE 高吞吐比对窗口掩码展开引擎 (完美对齐边界流水线版 + 智能 STB 选择)
// =========================================================================
`include "wave_def.vh"

module cmp_formatter #(
    parameter integer DATA_WIDTH      = 64,
    parameter integer EDGE_WIDTH      = 16,
    parameter integer PERIOD_WIDTH    = 24,
    parameter integer STROBE_WIDTH_UI = 10
)(
    input  wire                          clk,
    input  wire                          rst_n,
    input  wire                          trigger_sync,
    input  wire [PERIOD_WIDTH-1:0]       period_ui_in,
    input  wire [EDGE_WIDTH-1:0]         cmp_edge_r0_ui,
    input  wire [EDGE_WIDTH-1:0]         cmp_edge_r1_ui,
    input  wire                          act_r0,
    input  wire                          act_r1,
    input  wire [1:0]                    act_r0_mode,
    input  wire [1:0]                    act_r1_mode,
    input  wire                          act_cmp_win_en,
    output wire                          next_vector_req,
    output wire [DATA_WIDTH-1:0]         cmp_win_mask,
    output wire [2*DATA_WIDTH-1:0]       cmp_op_code
);
  

endmodule