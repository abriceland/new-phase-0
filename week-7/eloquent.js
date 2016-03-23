// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

// var edgar = "edgar";
    
// console.log(edgar.toUpperCase("E"));    
    

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board


// function fizzbuzz(max) {
//     var array = new Array;
//     for (var i=1; i<=max; i++) {
//         array.push(i);
//     }

//     var arrayLength = array.length;
//     for (var i = 0; i < arrayLength; i++) {
    
//         var string = "";
//         var num = array[i];
    
//         if (num % 3 === 0) {
//              string = string + "Fizz";
//         }
    
//         if (num % 5 === 0) {
//              string = string + "Buzz";
//         }
    
//         if (!string) {
//              string = num.toString();
//         }
    
//         console.log(string)
//     }

// }
    

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

// var alicia = {
//     name: "Alicia",
//     age: 14,
//     food: ["chili", "pad thai", "chocolate cake"],
//     quirk: "Anglophile"
    
// }

// console.log(alicia)

