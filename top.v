module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);
    d_latch part1(
        .D(sw[0]),
        .Q(led[0]),
        .NotQ(led[1]),
        .E(btnC)
    );
    
    wire[7:0] memOut;
    memory_system part2(
        .data(sw[15:8]),
        .addr(sw[7:6]),
        .store(btnC),
        .memory(memOut)
    );
    
    assign led[15:8] = memOut;
    assign led[7:2] = 6'b0;

endmodule
