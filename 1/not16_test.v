module NOT16TEST;

reg [15:0] a;
wire [15:0] b;

NOT16 not16_instance(a,b);

initial begin
    $dumpfile("not16_test.vcd");
    $dumpvars(0,not16_instance);

    a = 16'hFFFF;
    #10
    a = 16'h0000;
    #10
    $finish;
end

endmodule