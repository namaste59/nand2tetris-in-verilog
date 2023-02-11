module ALUTEST;

reg signed [15:0] x,y;
reg zx,nx,zy,ny,f,no;
wire signed [15:0] out;
wire zr,ng;

ALU alu_instance(
        .x0(x),
        .y0(y),
        .zx(zx),
        .nx(nx),
        .zy(zy),
        .ny(ny),
        .f(f),
        .no(no),
        .out1(out),
        .zr(zr),
        .ng(ng)
    );

initial begin
    $dumpfile("alu_test.vcd");
    $dumpvars(1,ALUTEST);

    x = 16'sh0001; y = 16'sh0002;
    zx = 1; nx = 0; zy = 1; ny = 0; f = 1; no = 0;
    #10 
    zx = 1; nx = 1; zy = 1; ny = 1; f = 1; no = 1;
    #10
    zx = 1; nx = 1; zy = 1; ny = 0; f = 1; no = 0;
    #10
    zx = 0; nx = 0; zy = 1; ny = 1; f = 0; no = 0;
    #10
    zx = 1; nx = 1; zy = 0; ny = 0; f = 0; no = 0;
    #10
    zx = 0; nx = 0; zy = 1; ny = 1; f = 0; no = 1;
    #10
    zx = 1; nx = 1; zy = 0; ny = 0; f = 0; no = 1;
    #10
    zx = 0; nx = 0; zy = 1; ny = 1; f = 1; no = 1;
    #10
    zx = 1; nx = 1; zy = 0; ny = 0; f = 1; no = 1;
    #10
    zx = 0; nx = 1; zy = 1; ny = 1; f = 1; no = 1;
    #10
    zx = 1; nx = 1; zy = 0; ny = 1; f = 1; no = 1;
    #10
    zx = 0; nx = 0; zy = 1; ny = 1; f = 1; no = 0;
    #10
    zx = 1; nx = 1; zy = 0; ny = 0; f = 1; no = 0;
    #10
    zx = 0; nx = 0; zy = 0; ny = 0; f = 1; no = 0;
    #10
    zx = 0; nx = 1; zy = 0; ny = 0; f = 1; no = 1;
    #10
    zx = 0; nx = 0; zy = 0; ny = 1; f = 1; no = 1;
    #10
    zx = 0; nx = 0; zy = 0; ny = 0; f = 0; no = 0;
    #10
    zx = 0; nx = 1; zy = 0; ny = 1; f = 0; no = 1;
    #10
    $finish;
end

endmodule