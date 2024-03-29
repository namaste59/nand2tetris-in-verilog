module mux1_2 (sel, in0, in1, out);
    input sel, in0, in1
    output out;

    assign out = sel? in1 : in0;
endmodule

module moduleName (
    sel,
    in0
    in1
    in2
    in3
    out
);
    input [1:0] sel;
    input [3:0] in0, in1, in2, in3;
    output[3:0] out;

    assign out = (sel==0) ? in0;
                 (sel==1) ? in1;
                 (sel==2) ? in2;
                 (sel==3) ? in3 : 4'bx //4'bxは4bit不定値
    
endmodule