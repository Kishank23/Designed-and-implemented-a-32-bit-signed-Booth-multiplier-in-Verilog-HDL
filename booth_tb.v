`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2024 16:24:23
// Design Name: 
// Module Name: booth_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module booth_test(

    );
     reg [15:0] data_in;
     reg clk, start;
     wire done;
     
     booth BOT (ldA, ldQ, ldM, clrA, clrQ, clrff, sftA, sftQ, addsub, decr, ldcnt, data_in,
                    clk, qm1, eqz);
     controller CON (ldA, clrA, sftA, ldQ, clrQ, sftQ, ldM, clrff, addsub, start,
                    decr, ldcnt, done, clk, q0, qm1,eqz);
                    
     initial
        begin
        clk = 1'b0;
        #3 start = 1'b1;
        #1000 $finish;
        end
     always #5 clk = ~clk;
     
     initial
        begin
        #12 data_in = 14;
        #14 data_in = 10;
        end
endmodule
