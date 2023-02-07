module NOTTEST;

reg a;
wire b;

NOT not_instance(a, b); //オブジェクト指向感

initial begin
        $dumpfile("not_test.vcd");
        $dumpvars(1, NOTTEST);

        a = 0;
        #10 a = 1;
        #10 a = 0;
        #10 a = 1;
        #10 a = 0;
        #10 $finish;
end

endmodule