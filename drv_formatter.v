// =========================================================================
// drv_formatter.v - 专职 DRV 驱动波形展开引擎 (双模完全解耦与 4 边沿优化版)
// =========================================================================
`include "wave_def.vh"

module drv_formatter #(
    parameter integer DATA_WIDTH   = 64,
    parameter integer EDGE_WIDTH   = 16,
    parameter integer PERIOD_WIDTH = 24
)(
    input  wire                          clk,
    input  wire                          rst_n,

    // 流控接口
    input  wire                          trigger_sync,
    input  wire [PERIOD_WIDTH-1:0]      period_ui_in,

    // DRV 的 4 个驱动边沿时间戳 (E1 ~ E4)
    input  wire [EDGE_WIDTH-1:0]         act_edge_1_ui, act_edge_2_ui,
    input  wire [EDGE_WIDTH-1:0]         act_edge_3_ui, act_edge_4_ui,

    // DRV 的 4 个 1-bit 驱动目标电平
    input  wire                          act_e1, act_e2, act_e3, act_e4,

    // 输出接口
    output wire                          next_vector_req,
    output wire [DATA_WIDTH-1:0]        drv_parallel_data
);

   

endmodule