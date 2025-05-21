/*
    Lets define the functions that the IL will have by 
    default and how the VM should process them 
*/

/*
    #scoup = abcd
    var x = 2
    var y = 4
    print(x+y)
*/

/*
    Table of short or compressed types.

    byte:       0
    bool:       1
    int:        2
    float:      3
    long:       4
    char:       6 // i did not like the 5 , for whatever reason 

    pointer:    5
    object:     7
    array:      8

    function:   9
    null:       n // apcense of a type
*/

//FUNCTION(TOKEN,TYPE,VALUE,SCOUP,IS_CONSTANT)

set_glabal_variable(x,INT,2,abcd,FALSE) 

sgv(x,2,2,abcd,1) //short or compressed version

sgv(y,2,4,abcd,1)

/*
This is not define yet and is incorrect
add(x,y,z_out) 
since you should not have to do that 
since that should be part of the parser stage to 
do those optimizations
*/
// but this is for simplicity of the development
add(x,y,z_out) 

call_public_method(print,z_out) 
cpm(print,z_out)

