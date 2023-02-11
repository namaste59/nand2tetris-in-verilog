module ALU(
    input wire signed [15:0] x0,y0,
    input wire zx,nx,zy,ny,f,no,
    output wire signed [15:0] out1,
    output wire zr,ng
);
    wire signed [15:0] x1, x2;
    wire signed [15:0] y1, y2;
    wire signed [15:0] out0;
    
    assign x1 = zx ? 16'sh0000 : x0; 
    assign x2 = nx ? ~x1 : x1;

    assign y1 = zy ? 16'sh0000 : y0;
    assign y2 = ny ? ~y1 : y1;    

    assign out0 = f? x2 + y2 : x2 & y2;
    assign out1 = no? ~out0: out0;

    assign zr = (out1 == 16'sh0000) ? 1 : 0;
    assign ng = (out1 < 0) ? 1 : 0;

    // assign
    // function nagate[15:0] (
    //     input wire signed [15:0] a,
    //     input bool
    // );
    // begin
    //     case (bool)
    //         0: nagate = a;
    //         1: nagate = ~a;
    //         default: zero = 0;
    //     endcase
    // end 
    // endfunction

    // function [15:0] zero(
    //     input wire signed [15:0] a,
    //     input bool
    // );
    // begin
    //     case (bool)
    //         0: zero = a;
    //         1: zero = 0;
    //         default: zero = 0;
    //     endcase
    // end 
    // endfunction

    // function [15:0] func(
    //     input wire signed [15:0] a,b,
    //     input f
    //     );
    // begin
    //     case (f)
    //         0: func = a + b;
    //         1: func = a & b;
    //         default: func = 16'sh0000;
    //     endcase
    // end 
    // endfunction
endmodule