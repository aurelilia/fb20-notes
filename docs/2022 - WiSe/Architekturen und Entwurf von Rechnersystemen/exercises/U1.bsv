package U1;
    interface Blinky;
        method Bool blink();
        method Action start();
        method ActionValue#(int) stop();
    endinterface
    
    module mkBlinky (Blinky);
        Reg#(Bool)  ctrl_on     <- mkReg(False);
        Reg#(Bool)  led_on      <- mkReg(False);
        Reg#(int)   blink_ctr   <- mkReg(0);

        rule change (ctrl_on);
            led_on <= !led_on;
            if (!led_on) blink_ctr <= blink_ctr + 1;
        endrule

        method Bool blink();
            return led_on;
        endmethod
        
        method Action start();
            ctrl_on <= True;
        endmethod
        
        method ActionValue#(int) stop();
            ctrl_on <= False;
            led_on <= False;
            return blink_ctr;
        endmethod
    endmodule


    typedef enum{Mul,Div,Add,Sub,And,Or} AluOps deriving (Eq, Bits);

    interface HelloALU;
        method Action setupCalculation(AluOps op, Int#(32) a, Int#(32) b);
        method ActionValue#(Int#(32)) getResult();
    endinterface

    module mkSimpleALU (HelloALU);
        Reg#(Bool) ready <- mkReg(False);
        Reg#(Int#(32)) result <- mkRegU();

        method Action setupCalculation(AluOps op, Int#(32) a, Int#(32) b);
            result <= case (op)
                Mul: a; // * b The bluespec wiki is offline, CBA.
                Div: a; // / b The bluespec wiki is offline, CBA.
                Add: (a + b);
                Sub: (a - b);
                And: (a & b);
                Or: (a | b);
            endcase;
            ready <= True;
        endmethod

        method ActionValue#(Int#(32)) getResult() if (ready);
            ready <= False;
            return result;
        endmethod
    endmodule
endpackage
