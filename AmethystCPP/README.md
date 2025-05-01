# ClownScript

## Overview

ClownScript is a programming language designed with simplicity and clarity in mind. The language aims to provide a minimalistic yet powerful set of features that allow developers to write clean and efficient code. This README outlines the core principles, syntax, and features of ClownScript.

## Language Structure

ClownScript adopts a convention style of snake casing for variable and function names. The language is designed to be intuitive, with a focus on reducing unnecessary complexity.

## Primitive Types

ClownScript supports several primitive data types:

### Numbers
- `int`: Holds a signed integer.
  ```clownscript
  int age = 30
  ```
- `float`: Holds a signed floating-point number.
  ```clownscript
  float pi = 3.14
  ```
- `long`: Supports unsigned values.
  ```clownscript
  long largeNumber = 12345678901234
  ```
- `byte`: Holds a signed byte.
  ```clownscript
  byte b = 127
  ```

### Booleans
- `bool`: Represents true or false values.
  ```clownscript
  bool isActive = true
  ```

### Characters and Strings
- `char`: Holds a single character, which can be declared with single or double quotes.
  ```clownscript
  char letter = 'A'
  ```
- `string`: Represents a sequence of characters, declared with double or single quotes.
  ```clownscript
  string greeting = "Hello, World!"
  ```

## Functions

Functions in ClownScript are defined using the `const` keyword. They can return values and access variables as if they were fields of the function.


Example:
```clownscript
const calculateSum(a, b) {
    let result = a + b
    return result
}
let sum = calculateSum(5, 10) // sum will be 15
```

Accessing variables inside the function:
```clownscript
const displayInfo() {
    let name = "Alice"
    var age = 25
    print("Name: {name}, Age: {age}")
}
print(displayInfo.age) // age: 25
displayInfo.age = 22
displayInfo() // Outputs: Name: Alice, Age: 22
```

## Classes and Methods

Classes are defined using the `class` keyword. By default, classes have a constructor that can be invoked like a function. Methods can be public or private based on their declaration.

Also is good to point out that to create a private method we only need to use the `let` keyword

Example:
```clownscript
class Car {
    var owner = "melvin" // Public
    let brand = "Toyota" // Private
    let printInfo(){
      print("Car brand: {brand}, Owner: {owner}")
    }
    const printDetails() {
        printInfo()
    }
}

let myCar = Car()
myCar.printDetails() // Outputs: Car brand: Toyota, Owner: melvin
print(myCar.owner) // Outputs: melvin
// print(myCar.brand) // This will throw an error since brand is private
```

## Arrays

Arrays in ClownScript can hold multiple values and can be defined without a specific type, although type enforcement is possible.

Example without type enforcement:
```clownscript
array numbers = [1, 2, 3, "four", 5.0] // Allowed
```

Example with type enforcement:
```clownscript
array int numbers = [1, 2, 3, 4] // Valid
int numbers = [1, 2, 4, 5] // Valid
string numbers = ["one", "two", 23] // This will throw an error
```

If `let` is used, no type enforcement is applied:
```clownscript
let numbers = [1, 2, "three"] // Allowed
```
If `var` is used, no type enforcement is applied but will be public in the scope:
```clownscript
var numbers = [1, 2, "three"] // Allowed
```


## Error Handling

ClownScript includes a simple error handling mechanism using `try`, `catch`, and `throw`. This allows developers to manage exceptions gracefully.

Example:
```clownscript
try {
    print(2 * undefined) // This will cause an error
} catch (error) {
    print(error) // Handle the error
}
```

## Dynamic Type Declaration

Variables can be declared dynamically using `let` and `var`:
- `let`: Makes the variable inaccessible from outside its scope.
- `var`: Makes the variable accessible from outside its scope.

## Imports

ClownScript supports importing functions and classes from other files. This allows for modular programming.

Example:
```clownscript
include "file.clws" // Imports the entire file
import echo from "file.clws" // Imports a specific function
import * from "file.clws" // Imports everything from the file
```

## Comments

ClownScript supports both single-line and multi-line comments:
```clownscript
// This is a single-line comment
/*
This is a multi-line comment
*/
``
