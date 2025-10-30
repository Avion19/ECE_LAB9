module multiplexer(
    input [1:0] sel,
    input  [7:0] A,
    input  [7:0] B,
    input  [7:0] C,
    input  [7:0] D,
    output reg [7:0] out
);

    always @(*) begin 
        out = 8'b0;
        case(sel)
            2'b00: out = A; 
            2'b01: out = B;
            2'b10: out = C;
            2'b11: out = D;
        endcase
    end
    
endmodule
