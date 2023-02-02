module NANDTEST;

reg a, b;
wire c;

NAND nand_instance(a, b, c); //オブジェクト指向感

initial begin
        $dumpfile("nand_test.vcd");
        $dumpvars(1, NANDTEST);

        a = 0; b = 0;
        #10 a = 1;
        #10 a = 0; b = 1;
        #10 a = 1;
        #10 a = 0; b = 0;
        #10 $finish;
end

endmodule