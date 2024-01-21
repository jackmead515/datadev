# Adjacency Matrix

Stores the edges in a 2D array, where each inner array represents a node and each value represents a connection to another node.

| Pros | Cons |
| ---- | ---- |
| Space efficient for dense graphs | Requires O(V^2) space |
| Edge weight lookup is O(1) | Iterating over all edges takes O(V^2) time |
| Simplest graph representation | |

```python
graph = [
    [0, 0, 0, 0],
    [1, 0, 0, 1],
    [0, 0, 0, 0],
    [0, 0, 1, 0]
]
```

# Adjacency List

Stores the nodes as keys and the neighbors in a list.

| Pros | Cons |
| ---- | ---- |
| Space efficient for sparse graphs | Requires more space (list + linked lists) |
| Iterating over all edges is efficient | Edge weight lookup is O(E) |
| | Slightly more complex graph representation |

```python

graph = {
    0: [1],
    1: [3],
    2: [0],
    3: [2, 2]
}

# print
for node in graph:
    for neighbor in graph[node]:
        print(node, '->', neighbor)
```

# Edge List

Simple storage of edges, no additional information.

| Pros | Cons |
| ---- | ---- |
| Space efficient for sparse graphs | Requires more space (list + linked lists) |
| Iterating over all edges is efficient | Edge weight lookup is O(E) |
| Very simple structure | |

```python

graph = [
    (0, 1, 4),
    (0, 2, 3),
    (1, 3, 2),
    (2, 1, 1),
    (2, 3, 4),
    (3, 0, 4),
    (3, 2, 1)
]

```