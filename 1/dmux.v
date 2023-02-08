module DMUX (
    input wire in,
    input wire sel,
    output wire out0,
    output wire out1
);
assign out0 = sel? 0 : in;
assign out1 = sel? in : 0;
endmodule