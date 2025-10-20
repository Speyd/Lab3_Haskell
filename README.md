# Haskell Utility Functions

This project contains a set of simple utility functions implemented in Haskell for manipulating lists, tuples, and custom data types. It demonstrates basic functional programming techniques, including recursion and record updates.

---

## Functions

### 1. `updateAt`

```haskell
updateAt :: Int -> a -> [a] -> [a]
```

Updates the element at a specified index in a list with a new value.

* If the index is out of bounds or negative, the original list is returned.
* Returns an updated list with the value replaced at the given index.

**Example:**

```haskell
updateAt 1 99 [10, 20, 30] -- [10, 99, 30]
updateAt 5 7 [1,2,3]       -- [1,2,3]
```

---

### 2. `updateDict`

```haskell
updateDict :: (Eq k) => [(k, v)] -> k -> v -> [(k, v)]
```

Updates the value of a key in an association list (dictionary).

* If the key exists, its value is updated.
* If the key does not exist, the original list is returned unchanged.

**Example:**

```haskell
let d = [("a",1),("b",2)]
updateDict d "b" 99  -- [("a",1),("b",99)]
```

---

### 3. `appendTuple`

```haskell
appendTuple :: [a] -> a -> [a]
```

Appends an element to the end of a list.

**Example:**

```haskell
appendTuple [1,2,3] 4  -- [1,2,3,4]
appendTuple [] 99      -- [99]
```

---

### 4. `Person` and `incrementAge`

```haskell
data Person = Person { name :: String, age :: Int } deriving Show

incrementAge :: Person -> Person
```

Defines a `Person` data type with `name` and `age` fields.
`incrementAge` increases a person's age by 1.

**Example:**

```haskell
let p = Person "Anna" 25
incrementAge p -- Person {name = "Anna", age = 26}
```

---

### 5. `push`

```haskell
push :: [a] -> a -> [a]
```

Adds an element to the front of a list, simulating a stack push operation.

**Example:**

```haskell
push [3,2,1] 4  -- [4,3,2,1]
```

---

### 6. `removeAt`

```haskell
removeAt :: Int -> [a] -> [a]
```

Removes an element at a specific index from a list.

* If the index is out of bounds or negative, the original list is returned.

**Example:**

```haskell
removeAt 1 [10,20,30]  -- [10,30]
removeAt 5 [1,2,3]     -- [1,2,3]
```

---
