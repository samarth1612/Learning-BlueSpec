package helloworld;

    (* synthesize *)
    module hello (Empty);

        rule say_hello;
            $display("strange");
            $finish(0);
        endrule

    endmodule

    (* synthesize *)
    module hi (Empty);

        rule say_hello;
            $display("hi");
            $finish(0);
        endrule

    endmodule

endpackage
