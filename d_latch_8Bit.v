module d_latch_8Bit(
    input [7:0]D,
    input E,
    output reg [7:0] Q, 
    output [7:0] NotQ
);
    
    always @(E,D) begin
            if(E)
                Q <= D;
    end
    
    assign NotQ = ~Q;
            
endmodule
