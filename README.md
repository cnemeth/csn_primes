Print Multiplication Table for the First Ten Prime Numbers
==========================================================

Author: Csaba Nemeth
last updated: Wednesday, July 6, 2016
repository: git@github.com:cnemeth/csn_primes.git

Performance
===========

The building of the matrix, in `CsnPrimes::Prime#build_matrix`,
is perfromed in O(n^2). This is not terribly significant
for a small size matrix in question. However, as n increases,
this rapidly becomes a major performance bottle neck.

One way to improve performance is to take advantage of the
matrix symmetry and create a upper (or lower) triangular
matrix, which could be mirrored on output. This would
improve perforemance to O(nlogn).
