*******************************************************************************;
* SAS Recipe: fizz-buzz ;
*******************************************************************************;

/*
Scenario: Solve a simplified version of the FizzBuzz Challenge

Approach: Use a null data step and business logic to write to the log
*/

*Example;


data _null_;
    do i = 1 to 50;
        if mod(i,3) = 0 then put 'Fizz';
        else if mod(i, 5) = 0 then put 'Buzz';
        else put i=;
    end;
run;


/*
Notes:
(1) In this example, the four main components of imperative programming are used:

(i) The variable i is used to hold a value that varies.

(ii) The mod function is called with behavior dependent on a variable's current value (e.g., mod(i,3) evaluates to 0 if i is divisible by 3, and is 1 otherwise).

(iii) Conditional statement execution in the form an if/else-if/else branching structure, where only one of the three branches is executed, depending upon whether i is divisible by 3, by 5, or by neither.

(iv) Looping in the form of the do-loop, which repeats the same block of code (the 3-line if/else if/else branching structure) 100 times, once for each value of i, which starts with the value 1 and is incremented by 1 repeatedly.


(2) In general, SAS data steps will use these four components, in addition to dataset access methods, to prepare/clean data for analysis. This type of programming is commonly called "business logic" since it encapsulated domain specific behavior, here to solve a specific programming challenge.

(3) For extra practice using SAS data steps, you're encouraged to adapt this recipe to solve the full FizzBuzz Challenge, which you can read about at https://blog.codinghorror.com/why-cant-programmers-program/
*/