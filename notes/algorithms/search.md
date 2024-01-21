# Linear Search

Time Complexity: O(n)
Space Complexity: O(1)

```python
def linear_search(array, target):
    for i in range(len(array)):
        if array[i] == target:
            return i
    return -1

array = [1, 2, 3, 4, 5]
target = 3

print(linear_search(array, target))
```

# Binary Search

Time Complexity: O(log n)
Space Complexity: O(1)

The search splits the array in half each iteration. But the array
has to be sorted for this to work.

```python

def binary_search(array, target):
    left = 0
    right = len(array) - 1

    while left <= right:
        mid = (left + right) // 2
        if array[mid] == target:
            return mid
        elif array[mid] < target:
            left = mid + 1
        else:
            right = mid - 1
    return -1

array = [1, 2, 3, 4, 5]
target = 3

print(binary_search(array, target))
```

# Recursive Binary Search

Time Complexity: O(log n)
Space Complexity: O(log n)

Recursive binary search is the same as binary search, but it 
has a higher space complexity because it uses the call stack.

```python

def recursive_binary_search(array, target):
    if len(array) == 0:
        return -1
    else:
        mid = len(array) // 2
        if array[mid] == target:
            return mid
        elif array[mid] < target:
            # return right side of array
            return recursive_binary_search(array[mid + 1:], target)
        else:
            # return left side of array
            return recursive_binary_search(array[:mid], target)


array = [1, 2, 3, 4, 5]
target = 3

print(recursive_binary_search(array, target, 0, len(array) - 1))
```