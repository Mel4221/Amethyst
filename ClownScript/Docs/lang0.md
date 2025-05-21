
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
> You can literally declare any variable 
> by just setting a token then assinging a value
> to the token since the language is intended to be
> flexible and dynamic for example: 

- x = 2

> But is important to define the primitive types first before for example 
- int x = 2 
- x = int() or int(INITIAL_VALUE)

> there are 4 ways to declare a variable for example 
    > is important to point out that there are 2 keywords that could be use to declare variables as well 
- var
- const

> Ways to declare a variable 

- TYPE VARIABLE_NAME = VALUE
- VARIABLE_NAME = VALUE
- VARIABLE_NAME = EXPLICIT_TYPE
- KEYWORD VARIABLE_NAME = VALUE

> Example: 

- int x = 2
- x = 2
- x = int(2) 
- var x = 2
- const x = 2


Now that we know that lets go into the types 
#### Types
> So here are the list of all primitive types suported 

- is_valid = true 
- is_valid = bool(true) 
- single_byte = 2
- single_byte = byte(2)
- number = 2
- number = int(2)
- character = 'c'
- character = char('c')
- text = "some text"
- text = string("some text")
- long_value = -23332322932
- long_value = long(-23332322932)
	+ in the case of *long* it is of type unsined. 
- double_value = 90239230239
- double_value = double(90239230239)

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

> by default all clases keep all their methods hidden so its required pub to make them public also hinerent can be achived

class animal{
	pub name = string() 
	pub void bark ->
		print("wuaff")
	return
}
class dog->animal
{
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
end 

- && = and 
- || = or
- !x = not

> xor operator not yet suported
> ternary operator not yet suported
> switch stetments not yet suported


Still mssing...: 
- threading
- network
- IO
- security 
- imports 