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
	
```
public class Solution {
    public int minCut(String s) {
        // Start typing your Java solution below
        // DO NOT write main() function
        
        // Start typing your C/C++ solution below
        // DO NOT write int main() function
        ArrayList<int[]> partitions = patititions(s);
        return findPartitions(partitions);
    }
    
    public int findPartitions(ArrayList<int[]> lst) {
		int[] minPartCount = new int[lst.size()+1];
//		int[][] partIndices = new int[lst.size()+1][];
		minPartCount[0] = 0;
//		partIndices[0] = null;
		for(int i=1; i<=lst.size(); i++) {
			minPartCount[i] = lst.size();
//			partIndices[i] = new int[2]; 
		}
		
		for (int[] ls : lst) {
			int tempMin = minPartCount[ls[1]];
			int tempMinPre = minPartCount[ls[0]];
			if (tempMin > tempMinPre+1) {
				minPartCount[ls[1]] = tempMinPre+1;
			}
		}
		return minPartCount[lst.get(lst.size()-1)[1]]-1;
	}
	
	public ArrayList<int[]> patititions(String s) {
		ArrayList<int[]> ret = new ArrayList<int[]>();
		for (int i=0; i<s.length(); i++) {
			int i1 = i;
			int j1 = i;
//			System.out.println(i1 + " " + j1);
			while (i1>=0 && j1<s.length() && s.charAt(i1) == s.charAt(j1)) {
				i1--;
				j1++;
				// System.out.println(i1+1 + " " + j1 + " = " + s.substring(i1+1,j1));
				int[] temp = new int[2];
				temp[0] = i1+1;
				temp[1] = j1;
				ret.add(temp);
			}
			if (i < s.length() - 1) {
				int i2 = i;
				int j2 = i+1;
//				System.out.println(i2 + " " + j2);
				while (i2>=0 && j2<s.length() && s.charAt(i2) == s.charAt(j2)) {
					i2--;
					j2++;
				// 	System.out.println(i2+1 + " " + j2 + " = " + s.substring(i2+1,j2));
					int[] temp = new int[2];
					temp[0] = i2+1;
					temp[1] = j2;
					ret.add(temp);
				}
			}
		}
		
		Collections.sort(ret, new Comparator<int[]>() {
			public int compare(int[] o1, int[] o2) {
				if (o1[1] > o2[1]) return 1;
				else if (o1[1] == o2[1])  return -1;
				else return 0;
			}
			
		});
		
		return ret;
	}
}
```
