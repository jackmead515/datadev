# Linked List

```python

class Node:
    def __init__(self, data):
        self.data = data
        self.next = None
        self.prev = None


class DoublyLinkedList:

    def __init__(self):
        self.head = None
        self.tail = None

    def __iter__(self):
        current = self.head
        while current is not None:
            yield current.data
            current = current.next

    def append(self, data):
        if self.head is None:
            self.head = Node(data)
            self.tail = self.head
        else:
            self.tail.next = Node(data)
            self.tail.next.prev = self.tail
            self.tail = self.tail.next

    def prepend(self, data):
        if self.head is None:
            self.head = Node(data)
            self.tail = self.head
        else:
            self.head.prev = Node(data)
            self.head.prev.next = self.head
            self.head = self.head.prev

    def delete(self, data):
        if self.head is None:
            return
        elif self.head.data == data:
            self.head = self.head.next
            self.head.prev = None
        elif self.tail.data == data:
            self.tail = self.tail.prev
            self.tail.next = None
        else:
            current = self.head
            while current.next is not None:
                if current.data == data:
                    current.prev.next = current.next
                    current.next.prev = current.prev
                    return
                current = current.next


dll = DoublyLinkedList()

dll.append(1)
dll.append(2)
dll.append(3)
dll.append(4)
dll.append(5)

for i in dll:
    print(i)
```