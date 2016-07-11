Print Multiplication Table for the First *n* Prime Numbers
==========================================================

- Introduction
- Performance
- References

Introduction
------------

1. Clone repo
```
git clone git@github.com:cnemeth/csn_primes.git
```

2. Install Gems
```
cd csn_primes
bundle install
```

3. Run specs
```
rake
```

4. Run app

Run the application from the command line using the command
below
```
bin/csn_primes arg1 arg2
```
It has two modes, one for printing the prime multiplication
table and the other for benchmarking the prime generating algorithm.
The running mode is determined by the second argument, which,
when set to true, runs the benchmark for the prime generating
algorithm. The first agument is the number of primes used for
generating the multiplication table. Both arguments are optional
and default to 10 and false, respectively. (Note, if the second
argument is used, then the first one must also be present.)

5. Sample output for n = 10
```
"    [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]"
"2:  [4, 6, 10, 14, 22, 26, 34, 38, 46, 58]"
"3:  [6, 9, 15, 21, 33, 39, 51, 57, 69, 87]"
"5:  [10, 15, 25, 35, 55, 65, 85, 95, 115, 145]"
"7:  [14, 21, 35, 49, 77, 91, 119, 133, 161, 203]"
"11:  [22, 33, 55, 77, 121, 143, 187, 209, 253, 319]"
"13:  [26, 39, 65, 91, 143, 169, 221, 247, 299, 377]"
"17:  [34, 51, 85, 119, 187, 221, 289, 323, 391, 493]"
"19:  [38, 57, 95, 133, 209, 247, 323, 361, 437, 551]"
"23:  [46, 69, 115, 161, 253, 299, 391, 437, 529, 667]"
"29:  [58, 87, 145, 203, 319, 377, 493, 551, 667, 841]"
```

Performance
-----------

### Running time of the Prime Generating Algorithm

Running times, in Table 1 below, were generated using the
Ruby Standard Library Benchmark class bmbm method, which
takes the average of two consequtive runs.

    Table 1. Running times for n = 10, 100, 1000, 10000, 100000

     First n Primes | Running time in seconds
    -----------------------------------------
                 10 | 0.000014
                100 | 0.000296
              1,000 | 0.007168
             10,000 | 0.198192
            100,000 | 6.079886

    Note: The data for table 1 was acquired on a
          MacbookPro with 2.3GHz core i7 processor
          and 16GB of RAM.

There are a number of probabilistic and deterministic
algorithms [1] in existence for determining or testing
the primarility of a number. Here, the *Trial Division*
algorithm [2] was used, which is sufficient for small n
but it becomes quickly inefficient when n becomes large.
This is because when n is large, there are a large number
of trial divisions required to determine primality. This
is also evident in table 1 where there is a large increase
in running time from n = 10,000 to n = 100,000. Using a
sieve algorithm, Sieve of Eratosthenes [3] or the
AKS primality test algorithm [4] may improve performance
to O(log^x(n)).

### Running Time of the Multiplication Table Algorith

The building of the matrix, in `CsnPrimes::Prime#build_matrix`,
is perfromed in O(n^2). This is not terribly significant
for a small size matrix in question. However, as n increases,
this rapidly becomes a major performance bottle neck.

One way to improve performance is to take advantage of the
matrix symmetry and create a upper (or lower) triangular
matrix, which could be mirrored on output. This would
improve perforemance to O(nlogn).

References
----------

[1]: https://en.wikipedia.org/wiki/Prime_number "Prime Number"
[2]: https://en.wikipedia.org/wiki/Trial_division "Trial division"
[3]: https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes "Sieve of Eratosthenes"
[4]: https://en.wikipedia.org/wiki/AKS_primality_test "AKS primality test"
