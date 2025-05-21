
# ClownScript

## Introduction

This is an attempt to create a programming language that puts into practice a variety of programming concepts. The goal is to develop a usable, stable language with a unique style. Let's start by defining how it will look.

#### Comments 

> there are multy line comments and also single line comments 

- // single line comments 
- /* multiple line comments */
- \'#' this caracter will be use for flags but is not set yet  

### Variable Declarations and Types

#### Variable Declaration
> To declare a variable we just need to use the keyword var or const depending on the case 

- var x = 2

 
> key words to declare a variable 

- var
- const

> Ways to declare a variable 

- TYPE VARIABLE_NAME = VALUE
- KEYWORD VARIABLE_NAME = VALUE
- TYPE VARIABLE_NAME = EXPLICIT_TYPE
- KEYWORD VARIABLE_NAME = EXPLICIT_TYPE


> Example: 

- int x = 2
- var x = int(2) 
- var x = 2
- const x = 2
- const x = int(2)

Now that we know that lets go into the types 
#### Types
> So here are the list of all primitive types suported 

- var is_valid = true 
- var is_valid = bool(true) 
- var single_byte = 2
- var single_byte = byte(2)
- var number = 2
- var number = int(2)
- var character = 'c'
- var character = char('c')
- var text = "some text"
- var text = string("some text")
- var long_value = -23332322932
- var long_value = long(-23332322932)
	+ in the case of *long* it is of type unsined. 
- var double_value = 90239230239
- var double_value = double(90239230239)

##### Other Types 

> Well when we need more flexiblility we may want to set a type that may change so that is why we have the type any 

- not_known_type = any()
- array = [1,2,3,4]
- array = array([1,2,3,4])
> all array or list can have defined types for example 
- list = int([1,2,3,4,5])
- list = any([12,bool,"something"])

> Also there are the types that may not be used on the same way for example 

- t = null  // well the famous null value
- t = void // returns nothing
- t = any // allown any value


#### Aretmathic operations
> like in any programing languague the aritmatic operations will be the deafault expected 

- x = 2+2
- x = 2-2
- x = 2/2
- x = 2*2
- x = 2^2

> At the current state the porcent operator is not still introduced yet 


#### Function Definition and Calls 

> To define a function is as simple as the fallowing 

> RETURN_TYPE FUNCTION_NAME -> ARGUMENTS...  
RETURN VALUE OR TYPE

> note: is important to know that the function termination or end of the function is defined by its return once it reched its return is noted as the end of the function... also it could be explicitly end with the keyword end as well for example 
print_message -> message
	print(message)
end // this returns void 

> A better example would be: 

- `int sum -> int a , int b  
return a+b 

> And to call this function we would just need the fallowing: 
> FUNCTION_NAME(ARGUMENTS)

- sum(2,2)

> IMPORTANT: all functions must have a return keyword or end by default the return type is null unless a return type is set 



#### Loops 

> for loop 

for ( item in [2,3,4,5] )  
	print(item)  
end

> while loop

while(i < 10)
	print(i)
end

> loop 

loop 

	 print("looping for ever")
	 // requires break or return to exit
end

#### Objects and classes 

> by default all clases keep all their methods hidden so its required pub to make them public also hinerent can be achived... and the way to theclare a private member is just using the keyword var or const 

class animal{
	pub name = string()
 
	pub void bark ->
		print("wuaff")
	return
}
class dog->animal
{
	var internal_id = 1000
	const signature = 22
	pub const legs = 4
	dog -> 
		// this is the conscructor
	return 
}

dog.name = "jeff"
dog.bark() 

> Now in the case that it wanted to be done in a mor imperative way it could be done as well 


class animal = {} 
> not that we could also use the object keyword for this as well
> object animal = {} 
animal.bark -> 
		print("wuaff")
return void

animal.name = string() 

animal dog = {} 
dog.name = "jeff"
dog.bark() 
> Sadly due to the way that the imperative way of handling the object it does not allow hidden properties since they are all set from the outside in so for more control over the private members of an object go with a class instead


#### Conditions if 

> The condition is very selfexplanatory but here you go  all the logical operators allwed 

- if(CONDITION)  
// body of the condition  
end // end keyword terminates the condition block

- && = and 
- || = or
- !x = not

> xor operator not yet suported
> ternary operator not yet suported
> switch stetments not yet suported


#### Memory Managment 
##### as is on the early stages of the languague all memory must be freed manually with the free method , it takes an argument of type any so it will free any type

var t = 2000
print(t)
free(t) // when is not longer needed 

#### Threading 
##### async and await not suported at all yet , so background threads only so far 

> So to send anything to be run on the background so lets imagine some work 

long_process -> 
	thread.sleep(10000)
end

task.run(long_process) // this will run in the background

> the task will return an object but as is still not implemented the return type properties and objects are not yet defined

#### Network 
> The connections and implementations of it will be the default to listen and also to make http calls , as right now not implementation yet but protocols like TCP,HTTP,UDP,FTP... will be included in the default library 


#### IO
> Basic io will be included like WRITE,READ,SEEK on files along others on the basic library still not developed yet... 

#### Security like aes,hashes...
> Not yet implemented but will be included 

#### Imports 

> So far the idea of imports will be very basic for example 

include "sum.clown" // this will bring the entire file into scoup

import sum from "sum.clown" // will only import the sum function to scoup

import {sum,devide} from "math.clown" // will import only the defined functions , objects or types  


Still mssing...:
> [ok] memory managment  
- [ok] threading
- [ok] network
- [0k] IO
- [ok] security 
- [ok] imports 