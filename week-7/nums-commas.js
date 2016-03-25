// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode

// input: an integer
// output: string of the input integer with commas
// steps:

// create a function that takes in an integer as an argument
//   convert the input integer into a string
//   convert the string into an array
//   reverse the array
//   split up the array into chunks of three
//   join the chunks of the array with a comma in between each chunk
//   return the reverse of the joined chunks as a string

// Initial Solution


function separateCommas(number) {
  var backwardsArray = number.toString().split("").reverse();
  var splitSets = new Array;

  while (backwardsArray.length) {
    var set = backwardsArray.splice(0, 3);
    splitSets.push(set.reverse().join(""));
  }
  console.log(splitSets.reverse().join(","));
}

separateComma(23451);
separateComma(8468247468450);

//Solution #2

function separateComma(integer) {
  var integerArray = integer.toString().split("");
  var reverseArray = integerArray.reverse();
  var chunkArray = [];
  
  while (reverseArray.length) {
    var temp = reverseArray.splice(0,3);
    chunkArray.push(temp.reverse().join(""));
  }
  
  console.log(chunkArray.reverse().join(","));

}
var integer = 12345678985322348
separateComma(12345678985322348)


// Refactored Solution

// Initial solution is already refactored. 


// Your Own Tests (OPTIONAL)


// function assert(test, message, test_number) {
//   if (!test) {
//     console.log(test_number + "false");
//     throw "ERROR: " + message;
//   }
//   console.log(test_number + "true");
//   return true;  
// }

// assert(
//   (integer typeof Number),
//   "The value of integer should be a number.",
//   "1. "
// )

// assert(
//   (reverseArray typeof Array),
//   "The value of reverseArray should be an array.",
//   "2. "
// )


// 
// Reflection

// // What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// No, the logic is the same between Ruby and JavaScript.  We just needed to find the right tools to solve the problem. 


// // What did you learn about iterating over arrays in JavaScript?

// We learned that it is similar to iterating in Ruby.  We just had to reverse the subarrays in the while loop, to make sure they 
// were in the right order.  


// // What was different about solving this problem in JavaScript?

// Remembering the syntax and learning about new methods were the issues in this problem.  



// // What built-in methods did you find to incorporate in your refactored solution?

// .toString, .split, .reverse, splice, .push, .join























