import StmtFSM::*;
import LFSR::*;
import gcd::*;

(* synthesize *)
module mkTb();
    GCD gcdVariable <- mkGCD();
    
    Reg#(Bit#(32)) x <- mkReg(1034);
    Reg#(Bit#(32)) y <- mkReg(4975);

    Stmt test = seq
        gcdVariable.take_input(x, y);
        $display("GCD(%0d, %0d) = %0d", x, y, gcdVariable.getGCD());
    endseq;
    mkAutoFSM(test);

endmodule : mkTb
