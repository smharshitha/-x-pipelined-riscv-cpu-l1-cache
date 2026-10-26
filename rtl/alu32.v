module alu32 (
    input wire [31:0] a,b,
    input wire [3:0] op,
    output reg [31:0] y,
    output wire zero
);
    always @* begin
        case (op)
            4'h0: y=a+b;
            4'h1: y=a-b;
            4'h2: y=a&b;
            4'h3: y=a|b;
            4'h4: y=a^b;
            4'h5: y=a<<b[4:0];
            4'h6: y=a>>b[4:0];
            4'h7: y=$signed(a)>>>b[4:0];
            4'h8: y=($signed(a)<$signed(b))?32'd1:32'd0;
            4'h9: y=(a<b)?32'd1:32'd0;
            default: y=32'b0;
        endcase
    end
    assign zero=(y==32'b0);
endmodule
