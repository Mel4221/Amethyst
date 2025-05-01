Here’s a complete `features.md` file for the **Amethyst** programming language. This document highlights the **key features** of the language, summarizing its capabilities and unique characteristics.

---

# Amethyst Programming Language Features

Amethyst is a modern, object-oriented programming language designed for simplicity, flexibility, and performance. Below is a list of its key features:

---

## 1. **Dynamic Typing with Optional Type Enforcement**
- Variables are dynamically typed by default, but explicit type enforcement is supported.
  - Example: `var x = int(22)` ensures `x` is an integer.
- Supports primitive types like `int`, `float`, `bool`, `char`, `byte`, and `long`.

---

## 2. **Object-Oriented Programming (OOP)**
- Everything is an object, including primitive types, arrays, and classes.
- Supports encapsulation with `pub` (public) and `pri` (private) keywords.
- Single and multiple inheritance for classes.
  - Example: `Car : Vehicle, AnotherClass`.
- Constructors for object initialization.

---

## 3. **Arrays**
- Zero-indexed arrays with optional type enforcement.
  - Example: `var numbers = int[2, 3, 4]`.
- Built-in methods like `add(item)`, `remove(at)`, and `find(item)`.
- Supports mixed-type arrays (e.g., `var data = [233, "some value", 255]`).

---

## 4. **Control Flow**
- **Loops**:
  - `foreach`: Iterates over collections.
  - `for`: Traditional loop with initialization, condition, and increment/decrement.
  - `loop`: Infinite loop that requires `break` or `return` to exit.
- **Conditionals**:
  - `if` statements for decision-making.
  - Experimental `match` statement for pattern matching.

---

## 5. **Functions**
- Functions are declared with the `function` keyword.
- Supports function overloading based on parameter types.
- Lambda functions (anonymous functions) for concise code.
  - Example: `var t = () { return true }`.

---

## 6. **Memory Management**
- Manual memory management with the `free` keyword.
  - Example: `free(ANY_TYPE)`.
- Automatic memory allocation for variables and objects.

---

## 7. **Modules and Packages**
- Modules can be imported using `import` or `include`.
  - Example: `import calculator from projects`.
- Dynamic imports at runtime.
  - Example: `var OBJECT = import("http://github.com/some_package/latest")`.

---

## 8. **Exception Handling**
- `try-catch` blocks for error handling.
  - Example:
    ```amethyst
    try {
        // Code that may fail
    } catch {
        print(_)  // Print the error
    }
    ```
- Ghost variable (`_`) to capture errors.

---

## 9. **Concurrency**
- Threads for concurrent execution.
  - Example:
    ```amethyst
    const long_operation = thread(() {
        // Long operation
    })
    long_operation.start()
    ```
- Tasks for background operations.
  - Example:
    ```amethyst
    Task.run(() {
        // Background operation
    })
    ```

---

## 10. **Standard Libraries**
- **Collections**: Arrays are the primary collection type. Future plans include lists, queues, and hash maps.
- **I/O**: Built-in objects like `File`, `Directory`, and `Network` for input/output operations.
- **Serialization**: Planned support for JSON, XML, TOML, and HTML.

---

## 11. **Advanced Features**
- **Generics**: Type-safe reusable code (e.g., `List<T>`).
- **Pointers**: Low-level memory access and manipulation.
- **Foreign Function Interface (FFI)**: Interaction with code written in other languages.

---

## 12. **Functional Programming Features**
- Lambda functions for functional programming.
- Support for higher-order functions (functions that take other functions as arguments).

---

## 13. **Syntax Flexibility**
- Minimalistic syntax with optional type enforcement.
- Supports both class-based and functional object creation.

---

## 14. **Cross-Platform Compatibility**
- Designed to work across multiple platforms.
- Future plans for a virtual machine (VM) and native compilation.

---

## 15. **Extensibility**
- Easy to extend with custom libraries and modules.
- Support for dynamic imports and runtime module loading.

---

## Summary of Key Features
- **Dynamic typing with optional enforcement**.
- **Everything is an object**.
- **Manual memory management**.
- **Zero-indexed arrays with type enforcement**.
- **Function overloading and lambda functions**.
- **Exception handling with `try-catch`**.
- **Concurrency with threads and tasks**.
- **Planned support for generics and pointers**.

---

This `features.md` file provides a concise overview of Amethyst's capabilities. Let me know if you'd like to add or modify anything!
