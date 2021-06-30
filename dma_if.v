// Generator : SpinalHDL v1.4.0    git head : ecb5a80b713566f417ea3ea061f9969e73770a7f
// Date      : 30/06/2021, 17:35:01
// Component : dma_if



module dma_if (
  input      [1:0]    peri_sel,
  output reg          dma_req,
  input               dma_gnt,
  output reg [31:0]   dma_addr,
  output reg          dma_we,
  output reg [31:0]   dma_wdata,
  input      [31:0]   dma_rdata,
  input               dma_rvalid,
  input               peri0_req,
  output reg          peri0_gnt,
  input      [31:0]   peri0_addr,
  input               peri0_we,
  input      [31:0]   peri0_wdata,
  output reg [31:0]   peri0_rdata,
  output reg          peri0_rvalid,
  input               peri1_req,
  output reg          peri1_gnt,
  input      [31:0]   peri1_addr,
  input               peri1_we,
  input      [31:0]   peri1_wdata,
  output reg [31:0]   peri1_rdata,
  output reg          peri1_rvalid,
  input               peri2_req,
  output reg          peri2_gnt,
  input      [31:0]   peri2_addr,
  input               peri2_we,
  input      [31:0]   peri2_wdata,
  output reg [31:0]   peri2_rdata,
  output reg          peri2_rvalid,
  input               peri3_req,
  output reg          peri3_gnt,
  input      [31:0]   peri3_addr,
  input               peri3_we,
  input      [31:0]   peri3_wdata,
  output reg [31:0]   peri3_rdata,
  output reg          peri3_rvalid,
  input               clk,
  input               reset 
);
  reg                 peri0_req_regNext;
  reg                 peri0_we_regNext;
  reg        [31:0]   peri0_addr_regNext;
  reg        [31:0]   peri0_wdata_regNext;
  reg                 dma_gnt_regNext;
  reg        [31:0]   dma_rdata_regNextWhen;
  reg                 dma_rvalid_regNext;
  reg                 peri1_req_regNext;
  reg                 peri1_we_regNext;
  reg        [31:0]   peri1_addr_regNext;
  reg        [31:0]   peri1_wdata_regNext;
  reg                 dma_gnt_regNext_1_;
  reg        [31:0]   dma_rdata_regNextWhen_1_;
  reg                 dma_rvalid_regNext_1_;
  reg                 peri2_req_regNext;
  reg                 peri2_we_regNext;
  reg        [31:0]   peri2_addr_regNext;
  reg        [31:0]   peri2_wdata_regNext;
  reg                 dma_gnt_regNext_2_;
  reg        [31:0]   dma_rdata_regNextWhen_2_;
  reg                 dma_rvalid_regNext_2_;
  reg                 peri3_req_regNext;
  reg                 peri3_we_regNext;
  reg        [31:0]   peri3_addr_regNext;
  reg        [31:0]   peri3_wdata_regNext;
  reg                 dma_gnt_regNext_3_;
  reg        [31:0]   dma_rdata_regNextWhen_3_;
  reg                 dma_rvalid_regNext_3_;

  always @ (*) begin
    peri0_gnt = 1'b0;
    case(peri_sel)
      2'b00 : begin
        peri0_gnt = dma_gnt_regNext;
      end
      2'b01 : begin
      end
      2'b10 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    peri0_rdata = 32'h0;
    case(peri_sel)
      2'b00 : begin
        peri0_rdata = dma_rdata_regNextWhen;
      end
      2'b01 : begin
      end
      2'b10 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    peri0_rvalid = 1'b0;
    case(peri_sel)
      2'b00 : begin
        peri0_rvalid = dma_rvalid_regNext;
      end
      2'b01 : begin
      end
      2'b10 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    peri1_gnt = 1'b0;
    case(peri_sel)
      2'b00 : begin
      end
      2'b01 : begin
        peri1_gnt = dma_gnt_regNext_1_;
      end
      2'b10 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    peri1_rdata = 32'h0;
    case(peri_sel)
      2'b00 : begin
      end
      2'b01 : begin
        peri1_rdata = dma_rdata_regNextWhen_1_;
      end
      2'b10 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    peri1_rvalid = 1'b0;
    case(peri_sel)
      2'b00 : begin
      end
      2'b01 : begin
        peri1_rvalid = dma_rvalid_regNext_1_;
      end
      2'b10 : begin
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    peri2_gnt = 1'b0;
    case(peri_sel)
      2'b00 : begin
      end
      2'b01 : begin
      end
      2'b10 : begin
        peri2_gnt = dma_gnt_regNext_2_;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    peri2_rdata = 32'h0;
    case(peri_sel)
      2'b00 : begin
      end
      2'b01 : begin
      end
      2'b10 : begin
        peri2_rdata = dma_rdata_regNextWhen_2_;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    peri2_rvalid = 1'b0;
    case(peri_sel)
      2'b00 : begin
      end
      2'b01 : begin
      end
      2'b10 : begin
        peri2_rvalid = dma_rvalid_regNext_2_;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    peri3_gnt = 1'b0;
    case(peri_sel)
      2'b00 : begin
      end
      2'b01 : begin
      end
      2'b10 : begin
      end
      default : begin
        peri3_gnt = dma_gnt_regNext_3_;
      end
    endcase
  end

  always @ (*) begin
    peri3_rdata = 32'h0;
    case(peri_sel)
      2'b00 : begin
      end
      2'b01 : begin
      end
      2'b10 : begin
      end
      default : begin
        peri3_rdata = dma_rdata_regNextWhen_3_;
      end
    endcase
  end

  always @ (*) begin
    peri3_rvalid = 1'b0;
    case(peri_sel)
      2'b00 : begin
      end
      2'b01 : begin
      end
      2'b10 : begin
      end
      default : begin
        peri3_rvalid = dma_rvalid_regNext_3_;
      end
    endcase
  end

  always @ (*) begin
    case(peri_sel)
      2'b00 : begin
        dma_req = peri0_req_regNext;
      end
      2'b01 : begin
        dma_req = peri1_req_regNext;
      end
      2'b10 : begin
        dma_req = peri2_req_regNext;
      end
      default : begin
        dma_req = peri3_req_regNext;
      end
    endcase
  end

  always @ (*) begin
    case(peri_sel)
      2'b00 : begin
        dma_we = peri0_we_regNext;
      end
      2'b01 : begin
        dma_we = peri1_we_regNext;
      end
      2'b10 : begin
        dma_we = peri2_we_regNext;
      end
      default : begin
        dma_we = peri3_we_regNext;
      end
    endcase
  end

  always @ (*) begin
    case(peri_sel)
      2'b00 : begin
        dma_addr = peri0_addr_regNext;
      end
      2'b01 : begin
        dma_addr = peri1_addr_regNext;
      end
      2'b10 : begin
        dma_addr = peri2_addr_regNext;
      end
      default : begin
        dma_addr = peri3_addr_regNext;
      end
    endcase
  end

  always @ (*) begin
    case(peri_sel)
      2'b00 : begin
        dma_wdata = peri0_wdata_regNext;
      end
      2'b01 : begin
        dma_wdata = peri1_wdata_regNext;
      end
      2'b10 : begin
        dma_wdata = peri2_wdata_regNext;
      end
      default : begin
        dma_wdata = peri3_wdata_regNext;
      end
    endcase
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      peri0_req_regNext <= 1'b0;
      peri0_we_regNext <= 1'b0;
      peri0_addr_regNext <= 32'h0;
      peri0_wdata_regNext <= 32'h0;
      dma_gnt_regNext <= 1'b0;
      dma_rdata_regNextWhen <= 32'h0;
      dma_rvalid_regNext <= 1'b0;
    end else begin
      peri0_req_regNext <= peri0_req;
      if(dma_gnt)begin
        peri0_req_regNext <= 1'b0;
      end
      peri0_we_regNext <= peri0_we;
      peri0_addr_regNext <= peri0_addr;
      peri0_wdata_regNext <= peri0_wdata;
      dma_gnt_regNext <= dma_gnt;
      if((dma_rvalid == 1'b1))begin
        dma_rdata_regNextWhen <= dma_rdata;
      end
      dma_rvalid_regNext <= dma_rvalid;
    end
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      peri1_req_regNext <= 1'b0;
      peri1_we_regNext <= 1'b0;
      peri1_addr_regNext <= 32'h0;
      peri1_wdata_regNext <= 32'h0;
      dma_gnt_regNext_1_ <= 1'b0;
      dma_rdata_regNextWhen_1_ <= 32'h0;
      dma_rvalid_regNext_1_ <= 1'b0;
    end else begin
      peri1_req_regNext <= peri1_req;
      if(dma_gnt)begin
        peri1_req_regNext <= 1'b0;
      end
      peri1_we_regNext <= peri1_we;
      peri1_addr_regNext <= peri1_addr;
      peri1_wdata_regNext <= peri1_wdata;
      dma_gnt_regNext_1_ <= dma_gnt;
      if((dma_rvalid == 1'b1))begin
        dma_rdata_regNextWhen_1_ <= dma_rdata;
      end
      dma_rvalid_regNext_1_ <= dma_rvalid;
    end
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      peri2_req_regNext <= 1'b0;
      peri2_we_regNext <= 1'b0;
      peri2_addr_regNext <= 32'h0;
      peri2_wdata_regNext <= 32'h0;
      dma_gnt_regNext_2_ <= 1'b0;
      dma_rdata_regNextWhen_2_ <= 32'h0;
      dma_rvalid_regNext_2_ <= 1'b0;
    end else begin
      peri2_req_regNext <= peri2_req;
      if(dma_gnt)begin
        peri2_req_regNext <= 1'b0;
      end
      peri2_we_regNext <= peri2_we;
      peri2_addr_regNext <= peri2_addr;
      peri2_wdata_regNext <= peri2_wdata;
      dma_gnt_regNext_2_ <= dma_gnt;
      if((dma_rvalid == 1'b1))begin
        dma_rdata_regNextWhen_2_ <= dma_rdata;
      end
      dma_rvalid_regNext_2_ <= dma_rvalid;
    end
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      peri3_req_regNext <= 1'b0;
      peri3_we_regNext <= 1'b0;
      peri3_addr_regNext <= 32'h0;
      peri3_wdata_regNext <= 32'h0;
      dma_gnt_regNext_3_ <= 1'b0;
      dma_rdata_regNextWhen_3_ <= 32'h0;
      dma_rvalid_regNext_3_ <= 1'b0;
    end else begin
      peri3_req_regNext <= peri3_req;
      if(dma_gnt)begin
        peri3_req_regNext <= 1'b0;
      end
      peri3_we_regNext <= peri3_we;
      peri3_addr_regNext <= peri3_addr;
      peri3_wdata_regNext <= peri3_wdata;
      dma_gnt_regNext_3_ <= dma_gnt;
      if((dma_rvalid == 1'b1))begin
        dma_rdata_regNextWhen_3_ <= dma_rdata;
      end
      dma_rvalid_regNext_3_ <= dma_rvalid;
    end
  end


endmodule
