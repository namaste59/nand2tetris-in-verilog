module MUXTEST;

reg a, b, c;
wire d;

MUX mux_instance(a,b,c,d);

initial begin
    $dumpfile("mux_test.vcd");
    $dumpvars(1,mux_instance);

    a = 0; b = 0; c = 0;
    #10 a = 1;
    #10 b = 1;
    #10 a = 0; b = 0; c = 1;
    #10 a = 1;
    #10 b = 1;
    #10 $finish;
end

endmodule