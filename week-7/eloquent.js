// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

// var edgar = "edgar";
    
// console.log(edgar.toUpperCase("E"));    
    

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board


function fizzbuzz(max) {
    var array = new Array;
    for (var i=1; i<=max; i++) {
        array.push(i);
    }

    var arrayLength = array.length;
    for (var i = 0; i < arrayLength; i++) {
    
        var string = "";
        var num = array[i];
    
        if (num % 3 === 0) {
             string = string + "Fizz";
        }
    
        if (num % 5 === 0) {
             string = string + "Buzz";
        }
    
        if (!string) {
             string = num.toString();
        }
    
        console.log(string)
    }

}
    

// fizzbuzz(60)


// Functions

// Complete the `minimum` exercise.

//Write a function min that takes two arguments and returns their minimum.

function min(a, b) {

    if (a < b) {
        return(a);
    }
    
    else {
        return(b)
    }
  
}    

console.log(min(5, 2))

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var alicia = {
    name: "Alicia",
    age: 14,
    food: ["chili", "pad thai", "chocolate cake"],
    quirk: "Anglophile"
    
}

console.log(alicia)


// Write your own variable and do something to it in the eloquent.js file.


var cat(name) {
    return console.log(cat);
}

cat("Paro")


// Write a short program that asks for a user to input their favorite food. After they hit return, 
// have the program respond with "Hey! That's my favorite too!" (You will probably need to run this 
// in the Chrome console (Links to an external site.) rather than node since node does not support 
// prompt or alert). Paste your program into the eloquent.js file.alert

function favoriteFood() {
    var answer = prompt("What's your favorite food?");
    console.log("Hey!  You know, " + answer + " is my favorite too!");
}
    

// Did you learn anything new about JavaScript or programming in general?

// I learned it is a very flexible language, but that brings it's own challenges.


// Are there any concepts you feel uncomfortable with?

// I don't understand the binary basis of how computers process.  I am still struggling with 
// algorthmic logic.


// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, 
// arithmetic, strings, booleans, and various operators.

// There are a large number of similarities.  Ruby uses nil, while JS uses null.  In Ruby, ranges
// are expressed as (1...20), whereas JS uses (1, 20).  Strings are within quotes.  Many of the 
// operators are exactly the same.  


// // What is an expression?

// Any correct mathematical statement that returns a value.


// // What is the purpose of semicolons in JavaScript? Are they always required?

// They separate statements.  They are not always required, but are considered good practice.


// What causes a variable to return undefined?

// When there is an absence of meaningful value.



// What does console.log do and when would you use it? What Ruby method(s) is this similar to?

// It displays to the console.  It is like puts in Ruby.



// Describe while and for loops

// While loops are not drastically different than in Ruby.  For loops require the 
// entire conditions for the counter up front, which I find to be more logical.  


// What other similarities or differences between Ruby and JavaScript did you notice 
// in this section?

// The similarities are striking, with most of the differences being syntax.  {} are
// used copiously in JS to define blocks.  Semicolons separate statements.


// What are the differences between local and global variables in JavaScript?

// Local variables are defined and accessible inside a function.  Global variables are
// defined outside of a function and are available throughout the program.


// When should you use functions?

// To perform tasks.  


// What is a function declaration?

// Naming the function, e.g. function silly()


// What is the difference between using a dot and a bracket to look up a property? 
// Ex. array.max vs array["max"]


// What is a JavaScript object with a name and value property similar to in Ruby?

// String


// What are the biggest similarities and differences between JavaScript and Ruby?

// See above.


// Was some of your Ruby knowledge solidified by learning another language? If so, 
// which concepts?

// I understand the for loop better.


// How do you feel about diving into JavaScript after reading these chapters?

// I feel tired. 



























