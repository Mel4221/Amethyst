

Comments: 

Like in many programing languagues coming from C comments are handled with either a multy line or single line 

//single line comment
/*
    Multiple lines comments 
    to give extra information
    about a function 
    that returns  2 + 2
*/

Identation: 

By default the only rule is that each command must be terminated
by a single line which means that an stetemnt needs to finish with
an enter or next line character meaning

var x = 2 

Statement and expression 


Statements: 
By default types could be set literally or could just be assing with
their value for example 

var t = 22
var t = int(22) // literal type enforcement activated

t = 6 // valid and no exeption
t = 2.4 // will throw an error 

All primitive types: 

var single_byte = byte(255) // signed

var is_fun_to_prgram = bool(true)

var cool_number = int(2) // singned

var pi = float(3.14159) // hight presition signed 

var big_file_size = long(-293023940) // support ungsined values 

var single_letter = char("t") or char('t') // both allowed 


/*
    It's important to clarify that if a return type for
    a function is not defined the function default return
    is null which is the default for void functions instead
    of having the void keyward we have the null instead 
*/
var undefined_value = null() or null // both valid 


its goo to point out that some expressions could be written like: 

var x = 7

var t = (2 * 4) / 7  

var x = ((2*1) ^ (2/2) - (1+2)) // any simple matematical operation 


Special types: 

class: 
        By default everything is an object in this languague
        which means that even the class and arrays are just 
        objects by default but the class keyword allows the 
        creation of objects as well and support some of the 
        functionalities of OOP such as inerance from a single
        class and multiple as well. 

        
        class Vehicle
        {
            pub color = Color.rgb(0,0.0) 
            pub wheels = int(4) 
            pub type = string("") 
            pri model_number = 384972348

            pub function print_model_number()
            {   
                print(model_number)
            } 
            Vehichle()
            {

            }
        }

        Car : Vehicle,ANY_OTHER_THAT_WE_WANT_TO EINERATE{
            type = "Sport Car"
        } 

        var car = Car() 
        car.color = Color.rgb(22,44,68)



        /*
            so here we can view all the keywords that can be used in a class: 
            pub: declare a public property | method
            pri: declare a private property | method

            By default this is a good example how syntactically it could allow, Contructor , also how we could acces their property and modify them 

        */
array:

        /*
            as long as all the values are the same
            the type enforcement will be set 
            other wise no types enforcement
        */
        GOD I ALMOST FORGET ALL ARRAYS START AT 0 

        // so the syntax goes like this
        var | pub | pri VARIABLE_NAME = TYPE_OPTIONAL[ITEMS]

        
        var colors = ["red","green","blue"] // literal string array

        var numbers = int[2,3,4,5] // literal int array

        var data = [233,"some value",255,Color] // allows multiple types

        Methods available with arrays by default are: 
        add(item)
        remove(at)
        find(item)
        suport indexing with the squere brakets 
        ... // not all are completed YET 

    The List type will be added in the Standard Library as well as the 
    Generics which will work similar to any other languague which is 
    List<T> but currently not implemented YET. 

    String: 
        by default string is just an array of characters with some extra
        methods for string manipulation so currently i will not list 
        all the methods available , but the currently stablich will be

        sub(,,,) // will have 3 types to have an standard behavior
        last(,,,) // will have 3 types to have an standard behavior
        index(string)



Variables: 

    as seen before variables are set with the var keyward , and constant even thought is still not implemented wil be with the const keyward 
            

Control Flow: 

    There will be 3 types of loops: 
    // just a regular foreach 
    foreach(item in array)
        {
            print(item)
        }
    // i can't have declaration 
    // since is added auto matically
    for(i = start condition INCREMENT || DECREMENT i)
    {

    }
    for(i = 0 i<array.length i++)
    {
        print(array[i]) 
    }
    loop
    {
        //infinete loop requires the break or return
        //to exit from this  
    }

by default as control we could use the conditions suported if , i don't think i may implemtn switch nor else nor else if sadly , but there is
the posivility i may add a match function eventually 

/*
EXPERIMENTAL AND NOT YET EVEN CONSIDER SINCE
WE MAY INSTEAD JUST GO FOR A FULL SWITCH
INSTEAD OF REINVENT THE WHEEL
*/
match(type) 
{
    ""{

    },
    ""{

    }
}



var i = 0 
loop
{
    if(i == 2000) 
    {
        break // we could use return as well here 
    }
}
 


Functions (declaration, invocation, lambdas, overloading).


A function is declared with the keyward function and if is 
inside a class the pri and pub to make it private or public
and to invok them we only need function name and its paramter
some may have optional parameters that will be declared with 
the ? type to indicate that is not mandatory and if the parameter
has a type it must receive the type it requires , on the case of 
lambdas would work as annoimus functions and overloading will be 
suported

// function declaration 

function Hello() 
{
    print("Hello World!!!")
}

// just a regular invocation
Hello() //should print: Hello World!!!

/*
    Something important to point out is that 
    even thoguht it does not have a return
    type it will return null by default 
    or any type that is not defined 
*/

//function with a return type 

/*
    so it works just like before but
    now we just add the return type
    before the function name , also
    multiple function with different
    parameters are allowed but not
    from the same arguments
*/
function int Value() // valid 
{
    return 2 
}

/*
First functions RULE functions with parameters can't 
have 2 overload that have the same arguments length
and one of them being type ANY 
for example this would not be allowed

function t(x,y) {}
function y(int x , int y) {} // this MUST fail during lexical analizer
*/

 
// with arguments no arguments types defined 
function int Sum(a,b) // any 
{
    return a+b
}

print(Sum(2,2)) // should print 4 


/*
    this is similar but in fact 
*/
function int Sum(a,int b) 
{
    return a+b
}


 
print(Sum(2,2)) // should print 4 




