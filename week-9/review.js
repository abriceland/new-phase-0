
var list = {}

function addItem(string) {

  var itemsArray = string.split(" ") // ["apples", "milk", "balloons", Bread"]
  for(var index in itemsArray) { // picks up index of each item
    var newItem = itemsArray[index]; //newItem = each item in array
    list[newItem] = 0; // add new Item to list "hash" 
  }
}

addItem("apples milk balloons bread")



function addItemNumber(item, number) {
        list[item] = number;
}

addItemNumber("batteries", 6);



function deleteItem(item) {
    delete list[item];
}

deleteItem("balloons");


function changeItem(item, number) {   
        list[item]= number;
}

changeItem("bread", 1);
console.log(list);


function makePretty() {
  for(var item in list) {
    console.log(list[item] + " " + item);
  }
}

makePretty();


// Refactored

// Did not know how to refactor it further.




// What concepts did you solidify in working on this challenge? (reviewing the passing of 
// information, objects, constructors, etc.)

// I solidified accessing and passing objects.


// What was the most difficult part of this challenge?

// Pushing the list items into the new object.


// Did an array or object make more sense to use and why?

// An object made more sense, because each property had an associated value.