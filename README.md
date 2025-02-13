# Amethyst
Amethyst: A modern, lightweight OOP language in development. Combines Python/JS simplicity with C/C# control. Compiles to IL, runs on a VM, generates standalone executables. Future: JIT compilation. 🚀

# Amethyst Programming Language

Welcome to **Amethyst**, a modern, lightweight, and object-oriented programming language currently in the **planning and early development stages**. Amethyst is designed to combine the simplicity and productivity of languages like Python and JavaScript with the performance and control of languages like C and C#. 

This repository is the home of Amethyst's design, development, and future implementation. If you're interested in programming languages, compilers, or virtual machines, you're in the right place!

---

## **What is Amethyst?**

Amethyst is a **statically-typed**, **object-oriented** programming language that compiles to an **Intermediate Language (IL)**. The IL is interpreted by Amethyst's own **Virtual Machine (VM)**, with plans to eventually support **Just-In-Time (JIT)** compilation. Amethyst is designed to be **lightweight**, **platform-independent**, and capable of generating standalone executables without requiring a runtime environment.

---

## **Key Features (Planned)**

Amethyst is being designed with the following features in mind:

### **1. Control Flow (CF)**
- **Branching**: `break`, `continue`, `goto`, `return`
- **Conditionals**: `if`, `else`, `switch`, ternary operator
- **Loops**: `for`, `foreach`, `while`

### **2. Concurrency**
- **Threads**: Thread creation, pooling, and synchronization
- **Task API**: A high-level `Task.run()` API for simplified multithreading
- **Async/Await**: Not planned for now, but may be added in the future

### **3. Exception Handling (EH)**
- `try`, `catch`, `throw` for robust error handling

### **4. Functions**
- **Declaration**: Named, optional, and positional parameters
- **Invocation**: Function calls and recursion
- **Lambda Functions**: Anonymous functions and closures
- **Overloading**: By parameters and return type

### **5. Modules, Abstractions, and Packages (MAP)**
- **Exports**: Public and private exports
- **Imports**: Absolute and relative imports

### **6. Memory Management (MM)**
- **Heap Allocation**: All objects are heap-allocated by default
- **Garbage Collection**: Planned for the future (currently manual deallocation)
- **References**: Support for pointers

### **7. Objects**
- **Encapsulation**: Public and private members
- **Inheritance**: Single, multiple, and interface-based inheritance
- **Polymorphism**: Method overloading and overriding
- **Properties**: Constructors, fields, and methods

### **8. Standard Libraries (SL)**
- **Collections**: Lists, maps, queues, and sets
- **I/O**: Console, file, directory, and network operations
- **Serialization**: JSON, XML, TOML, and HTML support
- **Utilities**: Math, random, string manipulation, and date/time

### **9. Types**
- **Primitives**: Integers, floats, booleans, characters
- **Advanced**: Generics, nullable types, function types
- **User-Defined**: Classes and interfaces

---

## **How Amethyst Works**

1. **Compilation**: Amethyst code is compiled to an **Intermediate Language (IL)**.
2. **Execution**: The IL is interpreted by Amethyst's **Virtual Machine (VM)**.
3. **Standalone Executables**: Amethyst generates platform-specific executables, eliminating the need for a runtime environment.
4. **Future Plans**: Support for **JIT compilation** to improve performance.

---

## **Why Amethyst?**

Amethyst is designed to be:
- **Simple**: Easy to learn and use, with a clean and intuitive syntax.
- **Powerful**: Combines high-level abstractions with low-level control.
- **Lightweight**: No runtime dependencies; generates standalone executables.
- **Extensible**: A rich standard library and support for user-defined types.

---

## **Development Status**

Amethyst is currently in the **planning and design phase**. The language is not yet implemented, but the following milestones are planned:

1. **Design the Language**: Finalize syntax, semantics, and features.
2. **Build the Compiler**: Translate Amethyst code to IL.
3. **Implement the VM**: Create a virtual machine to interpret the IL.
4. **Add Standard Libraries**: Develop core libraries for I/O, collections, and utilities.
5. **Optimize**: Introduce garbage collection and explore JIT compilation.

---

## **Getting Involved**

Amethyst is an open-source project, and contributions are welcome! Whether you're interested in language design, compiler development, or virtual machines, there's a place for you here. Here’s how you can help:

1. **Share Feedback**: Open an issue to discuss ideas, suggestions, or questions.
2. **Contribute Code**: Once the implementation begins, contributions to the compiler, VM, or standard libraries will be greatly appreciated.
3. **Spread the Word**: Star this repository and share it with others who might be interested.

---

## **Roadmap**

- **Phase 1**: Finalize language design and specification.
- **Phase 2**: Implement the compiler and IL.
- **Phase 3**: Build the VM and basic standard libraries.
- **Phase 4**: Add garbage collection and optimize performance.
- **Phase 5**: Explore JIT compilation and advanced features.



Thank you for visiting the Amethyst repository! If you're excited about the future of this language, don't forget to **star** this repo and stay tuned for updates. Let's build something amazing together! 🚀
