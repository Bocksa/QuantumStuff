namespace Coinflip {
    @EntryPoint()
    operation Main() : Unit {
        if (FlipCoin() == Zero) {
            Message("Heads");
        } else {
            Message("Tails");
        }
    }

    operation FlipCoin() : Result {
        use q = Qubit();

        H(q); // place into superposition

        let result = M(q); // get 0 or 1 from qubit

        Reset(q); // reset qubit to 0

        return result; 
    }
}