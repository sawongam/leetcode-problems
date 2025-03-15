# 1. Two Sum
In this problem, we are given an array of integers `nums` and an integer `target`. We need to return the indices of the two numbers such that they add up to the target.

## 1. Using a brute force approach
We can iterate through the array and check if the sum of the current element and any other element in the array equals the target.

This approach has a time complexity of O(n^2) and a space complexity of O(1) which is not optimal.

## 2. Using a hash map 
(Match the difference (complement) between the target and the current element)
We can use a hash map to store the difference between the target and the current element. This way, we can check if the difference exists in the hash map.

This approach has a time complexity of O(n) and a space complexity of O(n) which is optimal.