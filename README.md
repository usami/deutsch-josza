# Deutsch-Josza Quantum Algorithm Simulation
dj is a Matlab function that simulates the Deutsch-Josza quantum algorithm.
quarter\_dj can simulate the algorithm for 3/4-balanced functions.

## Usage
These functions have the following syntax:

    dj(n, f)
    quarter_dj(n, f)

To use these functions in the Matlab prompt, simply run Matlab in the same
directory, and then call these functions.

    >> dj(5, @(x) 1)

    ans =

    CONST

In this example, we applied the constant function to the algorithm.
We put n=5 so the function must return 0 or 1 for any input in 0,...,2^5 - 1.
For this function that always return 1, the algorithm detected that f was
constant.
Here is another example that f is balanced.

    >> dj(8, @(x) rem(x, 2))

    ans =

    BALANCED

The function

    @(x) rem(x, 2)

is balanced because it returns 1 if x is odd, and it return 0 if x is even.

#### for 3/4-balanced functions
quarter\_dj can be used exactly the same as dj.

    >> quarter_dj(5, @(x) 0)

    ans =

    CONST

We prepared quarter\_balanced function that simulates a 3/4-balanced function.

    >> quarter_dj(5, @quarter_balanced)

    ans =

    BALANCED

Since it has error rate 1/4, it sometimes output CONST for 3/4-balanced
functions.

    >> quarter_dj(5, @quarter_balanced)

    ans =

    CONST
