module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr

    // og demux values
    wire [7:0] arr_vec[3:0];
    // store values for each byte memory
    wire stores[3:0];

    demultiplexer demux1(.data(data), .sel(addr), .A(arr_vec[0]), .B(arr_vec[1]), .C(arr_vec[2]), .D(arr_vec[3]));

    demux_4x1 demux2(.data(store), .sel(addr), .A(stores[0]), .B(stores[1]), .C(stores[2]), .D(stores[3]));

    // memories to be passed onto the multiplexer
    wire [7:0] memories[3:0];
    byte_memory mem1(.data(arr_vec[0]), .store(stores[0]), .memory(memories[0]));
    byte_memory mem2(.data(arr_vec[1]), .store(stores[1]), .memory(memories[1]));
    byte_memory mem3(.data(arr_vec[2]), .store(stores[2]), .memory(memories[2]));
    byte_memory mem4(.data(arr_vec[3]), .store(stores[3]), .memory(memories[3]));

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory
    multiplexer multi(.sel(addr), .A(memories[0]), .B(memories[1]), .C(memories[2]), .D(memories[3]), .out(memory));

endmodule
