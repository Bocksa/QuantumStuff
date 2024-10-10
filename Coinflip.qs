namespace Coinflip {
    @EntryPoint()
    operation Main() : String {
        mutable output = "";

        if (FlipCoin() == Zero) {
            set output = "Heads";
        } else {
            set output = "Tails";
        }

        Message(output);
        return output
    }

    operation FlipCoin() : Result {
        use q = Qubit();

        H(q); // place into superposition

        let result = M(q); // get 0 or 1 from qubit

        Reset(q); // reset qubit to 0

        return result; 
    }
}