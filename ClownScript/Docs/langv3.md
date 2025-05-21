# ClownScript v3 - The System-Aware Scripting Language

![ClownScript Logo](https://placeholder.com/clownscript-logo.png) *(placeholder for actual logo)*

ClownScript v3 is a hybrid scripting language designed to seamlessly blend system-level operations with modern programming paradigms. It serves as both a powerful Bash replacement and an object-oriented scripting language, offering direct shell interoperability while maintaining clean syntax.

## Key Features

### 1. Unified System Integration
- **Inline environment calls** with `->` for void operations
- **Captured execution** with `=>` for command output
- **Awaited execution** for synchronous operation guarantees
- **Variable injection** with `@` prefix for shell interoperability

### 2. Modern Programming Constructs
- Object-oriented programming with classes and inheritance
- Strong typing with type inference
- Functional programming capabilities
- Automatic and manual memory management

### 3. Bash-like Workflow Enhancements
- Natural shell command integration
- Line continuation with `\`
- Environment variable access
- Stream redirection support

## Installation

```bash
# Installation instructions will go here but not yet ready 
# (Currently in development) since this will be written in rust crossplatform will be available 



# Simple system interaction
-> echo 'Hello from ClownScript!'

# Capture command output
set files => ls -la
print(files)

# File operations
set target = "important.txt"
if(file(target).exist()) {
    set content => cat @target
    print("File content:", content)
}
System Integration Reference
Syntax	Description	Example
-> cmd	Execute shell command	-> npm install
=> cmd	Capture command output	set ver => node --version
wait => cmd	Wait for command completion	wait => long_running_task
@variable	Inject variable into shell command	-> echo @message
Object-Oriented Programming
clownscript
class Vehicle {
    pub int wheels = 4
    
    Vehicle() {
        # Constructor
    }
    
    pub set drive() {
        print("Moving with", wheels, "wheels")
    }
}

class Car : Vehicle {
    pub string model = "Generic"
}

# Usage
set my_car = Car()
my_car.drive()
Practical Examples
System Administration Script:

clownscript
# Monitor disk usage
set partition = "/dev/sda1"
set usage => df -h @partition
print("Current disk usage:", usage)

if(usage.percent() > 90) {
    -> notify-send "Disk space critical on @partition"
}
Web Automation:

clownscript
class PageFetcher {
    pub set fetch(string url) {
        set content => curl -s @url
        return content
    }
}

set fetcher = PageFetcher()
set html = fetcher.fetch("https://example.com")
Language Basics
Variable Declaration
clownscript
set name = "value"          # Dynamic typing
set int count = 42          # Explicit typing
const MAX_SIZE = 100        # Constant
File Handler Example
clownscript
class FileHandler {
    pub set handle(string filename) {
        wait => backup @filename
        print("File handled:", filename)
    }
}
Roadmap
Core language implementation

Standard library development

Package management system

IDE plugins and tooling

Performance optimizations