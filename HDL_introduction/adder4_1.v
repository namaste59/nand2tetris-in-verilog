module adder4 (
    in_data1,
    in_data2,
    out_data,
    cy
);

    input  [3:0] in_data1,in_data2;
    output [3:0] out_data;
    output cy;
    
    wire [4:0] rslt;

    assign{cy, out_data} = in_data1 + in_data2;
    
endmodule