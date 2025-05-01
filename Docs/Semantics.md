Here’s a complete `semantic.md` file for the **Amethyst** programming language. This document explains the **meaning** and **behavior** of the language's constructs at runtime, based on the syntax and features you provided.

---

# Amethyst Programming Language Semantics

This document describes the **semantics** of the Amethyst programming language. Semantics define how the language's syntax behaves when the program is executed.

---

## 1. **Variables and Types**

### Dynamic Typing with Optional Enforcement
- Variables are dynamically typed by default, meaning their type is inferred from the assigned value.
- Explicit type enforcement can be applied using constructors like `int(22)` or `float(3.14)`.
  - Example: `var x = int(22)` ensures `x` is an integer.
  - Assigning a value of a different type (e.g., `x = 2.4`) throws a type error.

### Primitive Types
- The language supports primitive types:
  - `int`: Signed integer.
  - `float`: High-precision signed floating-point number.
  - `bool`: Boolean (`true` or `false`).
  - `char`: Single character (e.g., `char("t")` or `char('t')`).
  - `byte`: Signed byte (range: -128 to 127).
  - `long`: Signed or unsigned long integer.

### Null Values
- The `null` type represents the absence of a value.
  - Example: `var x = null()` or `var x = null`.
  - Functions without a return type default to returning `null`.

---

## 2. **Classes and Objects**

### Everything is an Object
- All entities, including primitive types, arrays, and classes, are treated as objects.

### Encapsulation
- `pub` and `pri` keywords define public and private properties/methods, respectively.
  - Public members can be accessed from outside the class.
  - Private members can only be accessed within the class.

### Inheritance
- Classes support single and multiple inheritance.
  - Example: `Car : Vehicle, AnotherClass` allows `Car` to inherit from both `Vehicle` and `AnotherClass`.

### Constructors
- Constructors (e.g., `Vehicle()`) initialize objects when they are created.

### Functional Objects
- Objects can also be created using a functional approach, where properties and methods are added dynamically.
  - Example:
    ```amethyst
    var car = {
        color: Color.rgb(22, 44, 68)
    }
    car.drive = function() {
        print("Driving...")
    }
    ```

---

## 3. **Arrays**

### Zero-Indexed
- Arrays start at index `0`.

### Type Enforcement
- If all elements in an array are of the same type, the array enforces that type.
  - Example: `var numbers = int[2, 3, 4]` ensures all elements are integers.
- Mixed-type arrays are allowed but lose type enforcement.
  - Example: `var data = [233, "some value", 255]`.

### Methods
- Arrays have built-in methods:
  - `add(item)`: Adds an item to the array.
  - `remove(at)`: Removes an item at the specified index.
  - `find(item)`: Finds the index of an item.

### Indexing
- Elements can be accessed using square brackets (e.g., `colors[0]`).

---

## 4. **Control Flow**

### Loops
- `foreach`: Iterates over each item in a collection.
  - Example:
    ```amethyst
    foreach(item in array) {
        print(item)
    }
    ```
- `for`: Traditional loop with initialization, condition, and increment/decrement.
  - Example:
    ```amethyst
    for(i = 0; i < array.length; i++) {
        print(array[i])
    }
    ```
- `loop`: Infinite loop that requires `break` or `return` to exit.
  - Example:
    ```amethyst
    loop {
        if(i == 2000) {
            break
        }
    }
    ```

### Conditionals
- `if` statements are supported.
  - Example:
    ```amethyst
    if(x > 10) {
        print("x is greater than 10")
    }
    ```
- `else`, `else if`, and `switch` are not yet implemented.

---

## 5. **Functions**

### Declaration
- Functions are declared with the `function` keyword.
  - Example:
    ```amethyst
    function Hello() {
        print("Hello World!!!")
    }
    ```
- If no return type is specified, the function returns `null`.

### Overloading
- Functions can be overloaded based on parameter types.
  - Example:
    ```amethyst
    function int Sum(a, b) {
        return a + b
    }

    function int Sum(a, int b) {
        return a + b
    }
    ```

### Lambdas
- Anonymous functions (lambdas) can be assigned to variables.
  - Example:
    ```amethyst
    var t = () {
        print("working")
        return true
    }
    ```

---

## 6. **Memory Management**

### Manual Memory Management
- Memory must be manually deallocated using the `free` keyword.
  - Example: `free(ANY_TYPE)` releases memory allocated for a variable or object.

### Automatic Allocation
- Memory is automatically allocated when a variable is declared or an object is created.

---

## 7. **Modules and Packages**

### Imports
- Modules can be imported using `import` or `include`.
  - Example: `import calculator from projects` imports the `calculator` module from the `projects` directory.

### Dynamic Imports
- Modules can be imported dynamically at runtime.
  - Example: `var OBJECT = import("http://github.com/some_package/latest")`.

---

## 8. **Exception Handling**

### Try-Catch
- Exception handling is done using `try-catch` blocks.
  - Example:
    ```amethyst
    try {
        // Code that may fail
    } catch {
        print(_)  // Print the error
    }
    ```

### Ghost Variable
- The ghost variable (`_`) captures the error in the `catch` block.

---

## 9. **Concurrency**

### Threads
- Concurrency is achieved using threads.
  - Example:
    ```amethyst
    const long_operation = thread(() {
        // Long operation
    })
    long_operation.start()
    ```

### Tasks
- Background tasks can be run using `Task.run`.
  - Example:
    ```amethyst
    Task.run(() {
        // Background operation
    })
    ```

---

## 10. **Standard Libraries**

### Collections
- Arrays are the primary collection type. Future plans include lists, queues, and hash maps.

### I/O
- Built-in objects like `File`, `Directory`, and `Network` handle I/O operations.

### Serialization
- Support for JSON, XML, TOML, and HTML is planned.

---

## 11. **Advanced Features**

### Generics
- Generics will allow type-safe reusable code (e.g., `List<T>`).

### Pointers
- Pointers will provide low-level memory access and manipulation.

### Foreign Function Interface (FFI)
- FFI will allow interaction with code written in other languages.

---

This `semantic.md` file provides a comprehensive explanation of how Amethyst behaves at runtime. Let me know if you need further refinements or additions!
