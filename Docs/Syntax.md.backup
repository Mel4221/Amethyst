


# Amethyst Programming Language Syntax Guide

## Comments
Comments in Amethyst are similar to those in C-style languages. You can use single-line or multi-line comments.

```amethyst
// Single-line comment

/*
    Multi-line comment
    Useful for detailed explanations
*/
```

---

## Indentation
Each command must be terminated by a newline character (`\n`). Statements must end with a newline.

```amethyst
var x = 2\n
```

---

## Statements and Expressions

### Variable Declaration
Variables can be declared with or without explicit type enforcement.

```amethyst
var t = 22                // Implicit type
var t = int(22)           // Explicit type enforcement
t = 6                     // Valid
t = 2.4                   // Error: Type mismatch
```

### Primitive Types
Primitive types can be declared using the `var` keyword.

```amethyst
var single_byte = byte(255)          // Signed byte
var is_fun_to_program = bool(true)   // Boolean
var cool_number = int(2)             // Signed integer
var pi = float(3.14159)              // High-precision signed float
var big_file_size = long(-293023940) // Supports unsigned values
var single_letter = char("t")        // Character (both "t" and 't' are allowed)
```

### Explicit Type Declaration
Variables can also be declared with explicit types.

```amethyst
int t = 7
float pi = 3.14159
array colors = {"red", "green", "blue"}
```

### Null Values
If a function has no return type, it defaults to `null`.

```amethyst
var undefined_value = null()  // Both are valid
var undefined_value = null
```

### Expressions
Expressions can be written in a straightforward manner.

```amethyst
var x = 7
var t = (2 * 4) / 7
var x = ((2 * 1) ^ (2 / 2) - (1 + 2))  // Any simple mathematical operation
```

---

## Special Types

### Classes
Everything in Amethyst is an object, including classes and arrays. Classes support OOP features like inheritance and encapsulation.

```amethyst
class Vehicle {
    pub color = Color.rgb(0, 0, 0)
    pub wheels = int(4)
    pub type = string("")
    pri model_number = 384972348

    pub function print_model_number() {
        print(model_number)
    }

    Vehicle() {
        // Constructor
    }
}

class Car : Vehicle, ANY_OTHER_THAT_WE_WANT_TO_INHERIT {
    type = "Sport Car"
}

var car = Car()
car.color = Color.rgb(22, 44, 68)
```

#### Class Keywords
- `pub`: Declares a public property or method.
- `pri`: Declares a private property or method.

---

### Arrays
Arrays in Amethyst are zero-indexed and support type enforcement if all elements are of the same type during compilation.

```amethyst
var colors = ["red", "green", "blue"]  // Literal string array
var numbers = int[2, 3, 4, 5]          // Literal int array
var data = [233, "some value", 255, Color]  // Mixed types allowed
```

#### Array Methods
- `add(item)`
- `remove(at)`
- `find(item)`
- Supports indexing with square brackets `[]`

---

### Strings
Strings are essentially arrays of characters with additional methods for manipulation.

#### String Methods
- `sub(,,,)`
- `last(,,,)`
- `index(string)`

---

## Variables
Variables are declared using the explicit type or the  var` keyword. Constants (not yet implemented) will use the `const` keyword.

---

## Control Flow

### Loops
Amethyst supports three types of loops:

#### `foreach` Loop
```amethyst
foreach(item in array) {
    print(item)
}
```

#### `for` Loop
```amethyst
for(i = 0 i < array.length i++) {
    print(array[i])
}
```

#### `loop` (Infinite Loop)
```amethyst
loop {
    // Infinite loop; requires `break` or `return` to exit
}
```

### Conditional Statements
Amethyst supports `if` statements. `else`, `else if`, and `switch` are not yet implemented but may be added in the future.

```amethyst
var i = 0
loop {
    if(i == 2000) {
        break  // Exit the loop
    }
    i++
}
```

---

## Functions

### Function Declaration
Functions are declared using the `function` keyword. If no return type is specified, the function defaults to returning `null`.

```amethyst
function Hello() {
    print("Hello World!!!")
}

function int Value() {
    return 2
}
```

### Function Overloading
Overloading is supported, but functions with the same number of arguments and types are not allowed.

```amethyst
function int Sum(a, b) {
    return a + b
}

function int Sum(a, int b) {
    return a + b
}
```

### Lambda Functions
Lambda functions are anonymous and can be assigned to variables.

```amethyst
var t = () {
    print("working")
    return true
}

var t = int() {
    return 2 + 2
}
```

---

## Objects

### Class-based Objects
Objects can be created using classes, supporting encapsulation, inheritance, and polymorphism.

```amethyst
class Vehicle {
    pub color = Color.rgb(0, 0, 0)
    Vehicle() {
        // Constructor
    }
}
```

### Functional Objects
Objects can also be created using a functional approach.

```amethyst
var car = {
    color: Color.rgb(22, 44, 68)
}

car.drive = function() {
    print("Driving...")
}
```

---

## Memory Management
Memory must be manually deallocated using the `free` keyword.

```amethyst
free(ANY_TYPE)
```

---

## Modules and Packages
Modules can be imported using `import` or `include`.

```amethyst
import calculator from projects
include "../../F.ame"
```

---

## Exception Handling
Exception handling is not yet implemented but will follow a `try-catch` model.

```amethyst
try {
    // Code that may fail
} catch {
    print(_)  // Ghost variable to catch the error
    throw || return || break
}
```

---

## Concurrency
Concurrency is supported through threads and tasks.

```amethyst
const long_operation = thread(() {
    // Long operation
})
long_operation.start()

Task.run(() {
    // Background operation
})
```

---

## Standard Libraries
Standard libraries for collections, I/O, serialization, and utilities are planned but not yet implemented.

---

## Advanced Features

### Generics
Generics will be added in future versions.

### Pointers
Pointers and foreign function interfaces (FFI) are planned but not yet implemented.

---

This is the complete `syntax.md` file, consolidated into a single document for easy reference. Let me know if you need further adjustments!