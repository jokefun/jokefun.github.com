---
layout: post
title: Palindrome_Partitioning_II
---

1. Partition given string `S` to all possible palindromes.
	1. Start from each index, (odd or even) increase in both directions.
	2. aba -> [a, __b__, __aba__, a], not only the longest, but __all__.
2. Find the min partition count in them.
	1. Sort aoo tuples (start and end of a partition) according to end positions.
	2. for each tuple , say (s,e), compare `count[s]+1` with `count[e]`, if `count[s]+1<count[e]`, then put `count[s]+1` to `count[e]`. Since they are sorted according to end position, when looking at ending position `E`, we are sure all count ending in `e<E` are the smallest partition count.