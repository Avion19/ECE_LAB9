module byte_memory(
    input [7:0] data,
    input store,
    output [7:0] memory
);

    d_latch_8Bit d_latch_8Bit(
        .D(data),
        .E(store),
        .Q(memory)
    );
            
endmodule