# Merge Sort

> Time Complexity: O(n log n)

> Space Complexity: O(n)

```python
def merge(left, right):
    result = []
    left_index = 0
    right_index = 0

    # Walk through both arrays at the same time. Compare the indicies
    # and append the smaller value to the result array.
    while left_index < len(left) and right_index < len(right):
        if left[left_index] < right[right_index]:
            result.append(left[left_index])
            left_index += 1
        else:
            result.append(right[right_index])
            right_index += 1

    # Append the rest of the array that has not been added yet.
    # The left and right may not be the same length.
    result += left[left_index:]
    result += right[right_index:]
    return result


def merge_sort(array):

    # Base case. Already sorted!
    if len(array) == 1:
        return array

    # Divide step
    mid = len(array) // 2
    left = array[:mid]
    right = array[mid:]

    # Conquer step.
    left = merge_sort(left)
    right = merge_sort(right)

    # Combine step.
    return merge(left, right)


array = [5, 3, 1, 2, 4]
print(merge_sort(array))
```

# Quick Sort

> Time Complexity: O(n log n)

> Space Complexity: O(log n)

```python

def quick_sort(array):
    if len(array) < 2:
        return array
    
    # Choose a pivot element
    pivot = array[0]

    # Divide step
    # get all elements less than or equal to the pivot in one array
    # get all elements greater than the pivot in another array
    lower, greater = [], []
    for i in array[1:]:
        if i <= pivot:
            lower.append(i)
        else:
            greater.append(i)

    # Conquer step
    # recursively sort the left and right arrays
    left = quick_sort(lower)
    right = quick_sort(greater)

    # Combine step
    # return the sorted array
    return left + [pivot] + right


array = [5, 3, 1, 2, 4]
print(quick_sort(array))
```

# Selection Sort

> Time Complexity: O(n^2)

> Space Complexity: O(1)

```python

def selection_sort(array):
    # for each element in the array
    for i in range(len(array)):

        # find the smallest element in the array
        min_index = i
        for j in range(i + 1, len(array)):
            if array[min_index] > array[j]:
                min_index = j
        
        # swap the smallest element with the current element
        array[i], array[min_index] = array[min_index], array[i]
```
