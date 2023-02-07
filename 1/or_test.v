module ORTEST;

reg a, b;
wire c;

OR or_instance(a, b, c); //オブジェクト指向感

initial begin
        $dumpfile("or_test.vcd");
        $dumpvars(1, ORTEST);

        a = 0; b = 0;
        #10 a = 1;
        #10 a = 0; b = 1;
        #10 a = 1;
        #10 a = 0; b = 0;
        #10 $finish;
end

endmodule