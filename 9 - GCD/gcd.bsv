interface GCD;
    method Action take_input (Bit#(32) a, Bit#(32) b);
    method ActionValue#(Bit#(32)) getGCD;
endinterface

module mkGCD (GCD);
    Reg#(Bit#(32)) x <- mkReg(0);    
    Reg#(Bit#(32)) y <- mkReg(0);     
    Reg#(Bool) flag <- mkReg(False);

    // Using euclid's algorithm to find gcd
    rule gcd;
        if (x >= y) begin
            x <= x - y;
        end
        else if (x != 0) begin
            x <= y;   
            y <= x;
        end
    endrule

    // Taking inputs 
    method Action take_input (Bit#(32) a, Bit#(32) b) if (!flag);
        x <= a;   
        y <= b;   
        flag <= True;
    endmethod

    // Return GCD
    method ActionValue#(Bit#(32)) getGCD if (flag && (x == 0));
        flag <= False;  
        return y;
    endmethod
endmodule
