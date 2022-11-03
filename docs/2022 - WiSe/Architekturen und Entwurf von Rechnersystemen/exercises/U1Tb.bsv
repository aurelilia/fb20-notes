package U1Tb;
    import U1 :: *;

    module mkU1Tb();
        Blinky dut <- mkBlinky();

        Reg#(Bool) started <- mkReg(False);
        Reg#(UInt#(33)) cycles <- mkReg(0);
        Reg#(Bool) checked <- mkReg(False);

        UInt#(33) cycle_limit = `CYCLES;
        UInt#(33) n_blinks = (cycle_limit+1) / 2;

        rule start (!started);
            started <= True;
            dut.start();
        endrule

        rule let_blink (cycles <= cycle_limit);
            if (cycle_limit < 100) $display("LED on? %d", dut.blink());
            cycles <= cycles + 1;
        endrule

        rule check (cycles > cycle_limit);
            let blinked <- dut.stop();
            if (extend(blinked) != unpack(pack(n_blinks))) begin
                $display("LED count != Reference value. Expected %d, got %d", n_blinks, blinked);
            end
            else 
                $display("Test successful!");
            checked <= True;
        endrule

        rule shutdown (checked);
            $finish();
        endrule
    endmodule

    // TODO: Too lazy to do 1.5b
endpackage
