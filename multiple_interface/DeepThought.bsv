package DeepThought;
    (* synthesize *)
    module mkModuleDeepThought (Ifc_type);
        method int the_answer (int x, int y, int z);
            return x + y + z;
        endmethod

        method int ans (int a, int b, int c);
            return a + b - c;
        endmethod
    endmodule: mkModuleDeepThought

    interface Ifc_type;
        method int the_answer (int x, int y, int z);
        method int ans (int a, int b, int c);
    endinterface: Ifc_type

endpackage: DeepThought