Print Multiplication Table for the First *n* Prime Numbers
==========================================================

1. Introduction
2. Performance
3. References

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
```
bin/csn_primes n # n = 1,2,3 ..., n; the first number of primes
```

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

Performance [1][2][3][4][5][6]
-----------

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
[2]: https://en.wikipedia.org/wiki/AKS_primality_test "AKS primality test"
[3]: https://rosettacode.org/wiki/AKS_test_for_primes#Ruby "AKS test for primes"
[4]: https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes "Sieve of Eratosthenes"
[5]: https://en.wikipedia.org/wiki/Sieve_of_Sundaram "Sieve of Sundaram"
[6]: https://en.wikipedia.org/wiki/Sieve_of_Atkin "Sieve of Atkin"
