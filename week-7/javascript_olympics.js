 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up

  var harry = {
    name: "Harry",
    event: "Marathon"
  }
  var serena = {
    name: "Serena",
    event: "Tennis"
  }

var atheleteArray = [harry, serena]


function win(array) {
  for (var i = 0; i < array.length; i++) {
    var current = array[i];
    current["win"]= current.name + " won the " + current.event + "!" 
    console.log(current["win"]) 
  }
}

// win(atheleteArray)

// Bulk Up

function reverse_string(string)
  puts string.reverse
end

function reverseString(string) {
  var array = string.split("").reverse();
  return array.join("");
}

console.log(reverseString("I love Dev Bootcamp!"))

// Jumble your words



function evens(numArray) {
  var evenArray = numArray.filter(function(val) {
    return 0 == val % 2;
  });
  return evenArray
}
​
console.log(evens([9,4,0,2,5,3,222222]))

// 2,4,6,8




// "We built this city"

var Athlete = function(){
  this.name = "Michael Phelps";
  this.sport = "swimming";
  this.quote = "It's medicinal I swear!" 
}



var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// I solidified how to use logic in JS and utilize methods.


// What are constructor functions?

// They are similar to classes in Ruby and create objects similar to their template.


// How are constructors different from Ruby classes (in your research)?

// Functions can't be defined within constructor function, but methods can be defined within Ruby classes.


