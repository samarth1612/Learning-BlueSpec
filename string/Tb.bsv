// Copyright 2010 Bluespec, Inc. All rights reserved.
package Tb;
    (* synthesize *)
    module mkTb (Empty);
        function Action pass_string( String s );
            return action
            $display("pass_string => ", s);
            endaction;
        endfunction
        Reg#(int) step <- mkReg(0);
        //////////////////////////////////////////////////////////////////////
        rule init ( step == 0 );
            $display("=== step 0 ===");
            String s1 = "This is a test";
            $display("first string = ", s1);
            // we can use + to concatenate
            String s2 = s1 + " of concatenation";
            $display("Second string = ", s2);
            pass_string( "String passed to a function" );
            // the valid escape chars are listed in the reference manual
            step <= step + 1;
        endrule
        //////////////////////////////////////////////////////////////////////
        rule step1 ( step == 1 );
            $display ("All done");
            $finish (0);
        endrule
    endmodule: mkTb
endpackage: Tb
