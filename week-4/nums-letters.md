
#https://github.com/abriceland/new-phase-0/blob/master/week-4/defining-variables.rb
#https://github.com/abriceland/new-phase-0/blob/master/week-4/simple-string.rb
#https://github.com/abriceland/new-phase-0/blob/master/week-4/basic-math.rb




What does puts do?

It returns nil and prints out the result with a new line.


What is an integer? What is a float?

An integer is a number without a decimal, e.g. 5, -20.  A float is a number with a decimal, e.g. 5.5, -20.1.  


What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Division in computers is based on integers - round numbers.  If the number returned from a math problem done by a computer program has a decimal behind it, it will be displayed only as the rounded down number without the decimal.  The answer for 18 divided by 4 would be 4, instead of 4.5.


``` hours in year    puts 24.0 * 365.0  ```

``` minutes in decade   puts 60 * 24 * 365 * 10  ```



How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby uses the first number and performs the function from there.  Consequently, print 5*love will result in love being printed 5 times, but print love*5 will not.  If expecting an integer, it will ignore the first thing it doesn't understand and everything thereafter.  It also divides numbers into two classes: Fixnum and Bignum.  


What is the difference between integers and floats?

Integers are round nummbers and floats are decimal numbers.  


What is the difference between integer and float division?

Integer division just returns the integer without any decimals.  To get the decimals returned, you must include a .0 at the end of one of the numbers your are dividing.


What are strings? Why and when would you use them?

Strings are words and characters.  They are used when words are needed and always between "quotes".


What are local variables? Why and when would you use them?

Local variables are those you define yourself.  You would use them when you need to determine a variable.  


How was this challenge? Did you get a good review of some of the basics?

Yes, this was a good review.  It's coming back to me now. 





