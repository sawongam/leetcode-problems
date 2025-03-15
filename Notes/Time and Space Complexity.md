# Time and Space Complexity

This guide explains the **core concepts of time and space complexity** in a simple and structured way. It includes definitions, examples, and practice problems to help you master algorithm analysis.

---

## 1. What is Time Complexity?

- **Definition:** Time complexity measures how the runtime of an algorithm grows as the input size increases.
- **Goal:** Compare algorithms and choose the most efficient one for a given problem.
- **Notation:** Expressed using **Big O Notation** (e.g., O(n), O(log n), O(n^2)).

---

## 2. Big O Notation

- **Big O Notation** describes the **upper bound** of an algorithm's runtime. It tells us the **worst-case scenario**.
- **Why Use Big O?**
  - It simplifies analysis by focusing on the dominant term (the term that grows the fastest).
  - It ignores constants and lower-order terms because they become insignificant for large inputs.

---

## 3. Common Time Complexities

Here are the most common time complexities, ordered from fastest to slowest:

### 1. **O(1) - Constant Time**
- The algorithm takes the **same amount of time** regardless of the input size.
- **Example:** Accessing an element in an array by index.
  ```dart
  int getFirstElement(List<int> arr) {
    return arr[0]; // O(1)
  }

### 2. **O(log n) - Logarithmic Time**
- The algorithm's runtime **grows logarithmically** as the input size increases.
- Common in algorithms that divide the problem into smaller subproblems (e.g., Binary Search).
- **Example:** Finding an element in a sorted array using Binary Search.
  ```dart
  int binarySearch(List<int> arr, int target) {
  int low = 0, high = arr.length - 1;
    while (low <= high) {
        int mid = (low + high) ~/ 2;
        if (arr[mid] == target) return mid;
        if (arr[mid] < target) low = mid + 1;
        else high = mid - 1;
    }
    return -1; // O(log n)
 }

### 3. **O(n) - Linear Time**
- The algorithm's runtime **grows linearly** with the input size.
- **Example:** Iterating through an array to find a specific element.
  ```dart
  bool containsElement(List<int> arr, int target) {
    for (int num in arr) {
      if (num == target) return true;
    }
    return false; // O(n)
  }

### 4. **O(n log n) - Linearithmic Time**
- The algorithm's runtime grows in **n log n** complexity.
- Common in sorting algorithms like Merge Sort and Quick Sort.
- **Example:** Sorting an array using Merge Sort.
  ```dart
  void mergeSort(List<int> arr) {
    if (arr.length > 1) {
      int mid = arr.length ~/ 2;
      List<int> left = arr.sublist(0, mid);
      List<int> right = arr.sublist(mid);
      mergeSort(left);
      mergeSort(right);
      merge(arr, left, right);
    }
  }

### 5. **O(n^2) - Quadratic Time**
- The algorithm's runtime grows in **n^2** complexity.
- Common in algorithms with nested loops.
- **Example:** Bubble Sort, Selection Sort.
  ```dart
  void bubbleSort(List<int> arr) {
    int n = arr.length;
    for (int i = 0; i < n - 1; i++) {
      for (int j = 0; j < n - i - 1; j++) {
        if (arr[j] > arr[j + 1]) {
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }
      }
    }
  }

### 6. **O(2^n) - Exponential Time**
- The algorithm's runtime grows in **2^n** complexity.
- Common in algorithms that solve problems through **exhaustive search**.
- **Example:** Recursive Fibonacci calculation.
  ```dart
  int fibonacci(int n) {
    if (n <= 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
  }

### 7. **O(n!) - Factorial Time**
- The algorithm's runtime grows in **n!** complexity.
- Common in algorithms that generate all permutations or combinations.
- **Example:** Generating all permutations of a string.
  ```dart
  void permute(String str, int left, int right) {
    if (left == right) print(str);
    else {
      for (int i = left; i <= right; i++) {
        str = swap(str, left, i);
        permute(str, left + 1, right);
        str = swap(str, left, i);
      }
    }
  }

---

## 4. Space Complexity

- **Definition:** Space complexity measures how the memory usage of an algorithm grows as the input size increases.
- **Notation:** Expressed using **Big O Notation** (e.g., O(1), O(n), O(n^2)).
- **Common Space Complexities:**
  - **O(1) - Constant Space:** The algorithm uses a fixed amount of memory.
  - **O(n) - Linear Space:** The algorithm's memory usage grows linearly with the input size.
  - **O(n^2) - Quadratic Space:** The algorithm's memory usage grows in n^2 complexity.
  - **O(log n) - Logarithmic Space:** The algorithm's memory usage grows logarithmically.
  - **O(n log n) - Linearithmic Space:** The algorithm's memory usage grows in n log n complexity.
  - **O(2^n) - Exponential Space:** The algorithm's memory usage grows in 2^n complexity.
  - **O(n!) - Factorial Space:** The algorithm's memory usage grows in n! complexity.

**Note:** Space complexity is often less critical than time complexity.

---

## 5\. **Common Space Complexities**

### **1\. O(1) - Constant Space**

*   The algorithm uses a **fixed amount of memory** regardless of the input size. 
*   **Example:** Finding the maximum element in an array.
    ```dart
    int findMax(List arr) { 
    int max = arr\[0\]; 
    for (int num in arr) { 
        if (num > max) max = num; 
    } 
    return max; // O(1) space }

### **2\. O(n) - Linear Space**

*   The memory usage grows **linearly** with the input size.
*   **Example:** Storing elements in a new array.
    ```dart
    List copyArray(List arr) { 
    List newArr = \[\]; 
    for (int num in arr) { 
        newArr.add(num); // O(n) space } 
        return newArr; 
    }
    
### **3\. O(n^2) - Quadratic Space**

*   The memory usage grows **quadratically** with the input size.
*   **Example:** Storing a 2D matrix.
    ```dart
    List<List<int>> createMatrix(int n) { 
    List<List<int>> matrix = \[\]; 
        for (int i = 0; i < n; i++) { 
        matrix.add(List.filled(n, 0)); // O(n^2) space 
        } 
    return matrix; 
    }
    

## **6\. How to Calculate Time and Space Complexity**

1.  **Identify the Input Size (n):** Determine what n represents (e.g., length of an array, number of nodes in a graph).
    
2.  **Count the Operations (Time Complexity):** Count how many times the basic operations (e.g., loops, recursive calls) are executed.
    
3.  **Count the Memory Usage (Space Complexity):** Count how much memory the algorithm uses (e.g., variables, data structures).
    
4.  **Simplify Using Big O:** Drop constants (e.g., O(2n) → O(n)). Keep only the dominant term (e.g., O(n^2 + n) → O(n^2)).
    

## **7\. Examples of Time and Space Complexity Analysis**

#### **Example 1: Single Loop**

```dart
void printNumbers(int n) {
  for (int i = 0; i < n; i++) {
    print(i); // O(n) time, O(1) space
  }
}  
```
*   **Time Complexity:** O(n)  
*   **Space Complexity:** O(1)
    

#### **Example 2: Nested Loops**

```dart
void printPairs(int n) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print("($i, $j)"); // O(n^2) time, O(1) space
    }
  }
}
```
*   **Time Complexity:** O(n^2)
*   **Space Complexity:** O(1)
    

#### **Example 3: Recursive Function**

```dart
int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1); // O(n) time, O(n) space (call stack)
}
```
*   **Time Complexity:** O(n)
*   **Space Complexity:** O(n) (due to the call stack)
    

## **8\. Summary of Time and Space Complexities**

| Complexity  | Time Complexity Example      | Space Complexity Example   |
|------------|----------------------------|---------------------------|
| O(1)       | Array access by index       | Single variable           |
| O(log n)   | Binary Search               | Recursive call stack (log n) |
| O(n)       | Traversing an array         | Storing elements in a new array |
| O(n log n) | Merge Sort, Quick Sort      | Recursive call stack (log n) |
| O(n²)      | Bubble Sort, Nested Loops   | 2D matrix                 |
| O(2ⁿ)      | Recursive Fibonacci         | Recursive call stack (2ⁿ) |
| O(n!)      | Generating all permutations | Recursive call stack (n!) |



