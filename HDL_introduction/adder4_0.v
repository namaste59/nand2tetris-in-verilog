/* -----
 * 4-bit adder
 * (adder4.v)
 *------ */

 module adder4 (in_data1, in_data2, out_data, cy);
    //入出力信号の定義
    input  [3:0] in_data1, in_data2; //def input, bitrange: [3:0]
    output [3:0] out_data;
    output       cy; //carrybit

    //モジュール内ローカル信号の定義
    wire [4:0] rslt;
    
    //組み合わせ回路機能の定義(assign文)
    assign rslt = in_data + in_data; //rsltを5bitにしたのは足し算で繰り上がるから
    assign cy = rslt[4];
    assign out_data = rslt[3:0];
    
 endmodule