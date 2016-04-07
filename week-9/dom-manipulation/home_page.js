// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:

document.getElementById('release-0').className = 'done';


// Release 1:

document.getElementById('release-1').style.display = 'none';


// Release 2:

document.getElementsByTagName('H1')[0].innerHTML = 'I completed release 2';


// Release 3:

document.getElementById('release-3').style.background = "#955259";


// Release 4:

document.getElementsByClassName('release-4')[1].style.fontSize = "2em";


// Release 5:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));


// Reflections

// What did you learn about the DOM?

// I learned how to access the DOM using methods - getElementById, getElementsByClassName, 
// getElementsByTagName - and the appropriate indicators - style, innerHTML, etc.   


// What are some useful methods to use to manipulate the DOM?

// Same as above.  It is also useful to know that if there is more than one of an item, it can
// be accessed by index number.

