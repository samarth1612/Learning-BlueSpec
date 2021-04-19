package Tb;
import DeepThought::*;
    (* synthesize *)
    module mkTb (Empty);
        Ifc_type ifc <- mkModuleDeepThought;

        rule theUltimateAnswer;
            $display ("Hello World! The answer is: %0d",ifc.the_answer (10, 15, 17));
            $display ("Hello World! The answer is: %0d",ifc.ans (10, 15, 17));
            $finish (0);
        endrule

    endmodule: mkTb
endpackage


