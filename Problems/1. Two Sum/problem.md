# 1. Two Sum

**Difficulty:** Easy  
**Topics:** Arrays, Hash Tables  
**Companies:** Various  
**Hint:** Use a hash map to store the difference between the target and the current element.

---

## Problem Statement

Given an array of integers `nums` and an integer `target`, return indices of the two numbers such that they add up to `target`.

You may assume that each input would have **exactly one solution**, and you may not use the same element twice.

You can return the answer in any order.

---

## Examples

### Example 1:
**Input:**  
`nums = [2, 7, 11, 15]`, `target = 9`  

**Output:**  
`[0, 1]`  

**Explanation:**  
Because `nums[0] + nums[1] == 9`, we return `[0, 1]`.

---

### Example 2:
**Input:**  
`nums = [3, 2, 4]`, `target = 6`  

**Output:**  
`[1, 2]`

---

### Example 3:
**Input:**  
`nums = [3, 3]`, `target = 6`  

**Output:**  
`[0, 1]`

---

## Constraints

- `2 <= nums.length <= 10^4`
- `-10^9 <= nums[i] <= 10^9`
- `-10^9 <= target <= 10^9`
- **Only one valid answer exists.**

---

## Solution Approach

1. **Brute Force:**  
   - Use two nested loops to check every pair of elements.  
   - Time Complexity: O(n^2)  
   - Space Complexity: O(1)

2. **Optimized Approach (Hash Map):**  
   - Use a hash map to store the difference between the target and the current element.  
   - Time Complexity: O(n)  
   - Space Complexity: O(n)

---

## Example Code (Dart)

```dart
List<int> twoSum(List<int> nums, int target) {
  Map<int, int> map = {};
  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];
    if (map.containsKey(complement)) {
      return [map[complement]!, i];
    }
    map[nums[i]] = i;
  }
  throw Exception("No solution found");
}