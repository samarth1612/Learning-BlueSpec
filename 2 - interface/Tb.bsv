package Tb;
    (* synthesize *)
    module mkTb (Empty);
        Ifc_type ifc <- mkModuleDeepThought;

        rule theUltimateAnswer;
            $display ("Hello World! The answer is: %0d",ifc.the_answer (10, 15, 17));
            $display ("Hello World! The answer is: %0d",ifc.ans (10, 15, 17));
            $finish (0);
        endrule

    endmodule: mkTb

    interface Ifc_type;
        method int the_answer (int x, int y, int z);
        method int ans (int a, int b, int c);
    endinterface: Ifc_type



    (* synthesize *)
    module mkModuleDeepThought (Ifc_type);
        method int the_answer (int x, int y, int z);
            return x + y + z;
        endmethod
        method int ans (int a, int b, int c);
            return a + b - c;
        endmethod
    endmodule: mkModuleDeepThought

endpackage: Tb
