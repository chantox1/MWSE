# tes3iterator

A collection that can be iterated over Contains items in a simple linked list, and stores its head/tail.

## Properties

### `current`

A reference for the currently iterated node. This is used by the core game engine, but should not be accessed from lua.

**Returns**:

* `result` ([tes3iteratorNode](../../types/tes3iteratorNode))

***

### `head`

The first node in the collection.

**Returns**:

* `result` ([tes3iteratorNode](../../types/tes3iteratorNode))

***

### `size`

The amount of items in the iterator.

**Returns**:

* `result` (number)

***

### `tail`

The last node in the collection.

**Returns**:

* `result` ([tes3iteratorNode](../../types/tes3iteratorNode))

***
