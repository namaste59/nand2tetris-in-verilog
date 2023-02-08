module DMUXTEST;

reg a, b;
wire c, d;

DMUX dmux_instance(a,b,c,d);
initial begin
    $dumpfile("dmux_test.vcd");
    $dumpvars(0,dmux_instance);

    a = 0; b = 0;
    #10
    a = 1; b = 0;
    #10
    a = 1; b = 1;
    #10
    a = 0; b = 0;
    #10
    a = 0; b = 1;
    #10 $finish;
end

endmodule