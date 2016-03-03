# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1.5 hours on this challenge.

# --- error -------------------------------------------------------

#cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#    while true
#        puts "What's there to hate about #{thing}?"
#    end
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?  cartman_hates
#
# 2. What is the line number where the error occurs?  It says 14, but the error is on 16.
#
# 3. What is the type of error message? mismatched indentation 
#
# 4. What additional information does the interpreter provide about this type of error?  That it is at the end with while on line 14
#
# 5. Where is the error in the code?  On line 16.  
#
# 6. Why did the interpreter give you this error?  While needs an end command and the whole method also needs an end command, so two ends are required. 
#

# --- error -------------------------------------------------------

#def south_park
#end

# 1. What is the line number where the error occurs?  36
#
# 2. What is the type of error message?  undefined local variable or method "south_park" for main:Object.
#
# 3. What additional information does the interpreter provide about this type of error?  That the variable or method is "south_park" for main:Object and it is a NameError
#
# 4. Where is the error in the code?  The variable is alone and can not stand alone.  
#
# 5. Why did the interpreter give you this error?  The variable does not have a method.
#

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?  52
#
# 2. What is the type of error message? undefined method
#
# 3. What additional information does the interpreter provide about this type of error? The undefined method is cartman for main:Object (NoMethodError)
#
# 4. Where is the error in the code? The method, cartman, hasn't been defined.  The variable in this case with be self, but the method can't act until it's action has been determined.
#
# 5. Why did the interpreter give you this error?  cartman is not a standard method, so it needs to be defined first.  There is no other code present to accomplish that. 
#

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?  67
#
# 2. What is the type of error message?  wrong number of arguments
#
# 3. What additional information does the interpreter provide about this type of error?  (given 1, expected 0) (ArgumentError)
#
# 4. Where is the error in the code?  The lack of an argument after cartmans_phrase in line 67.
#
# 5. Why did the interpreter give you this error?  When defined, the method has no arguments.  However, when asked to execute, an argument, "I hate Kyle", is applied.  
#

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?  86
#
# 2. What is the type of error message?  wrong number of arguments
#
# 3. What additional information does the interpreter provide about this type of error? (given 0, expected 1) (ArgumentError)
#
# 4. Where is the error in the code?  In line 90, in that the method, cartman_says lacks an argument
#
# 5. Why did the interpreter give you this error?  The method, cartman_says, was defined as using an argument, but when the method is used, the argument is lacking.  
#



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?  107
#
# 2. What is the type of error message?  wrong number of arguments
#
# 3. What additional information does the interpreter provide about this type of error? (given 1, expected 2) (ArgumentError)
#
# 4. Where is the error in the code? In line 111, in the number of arguments after the method.
#
# 5. Why did the interpreter give you this error?  cartmans_lie, the method, was defined as using two arguments, but when used, only one argument is present.
#

# --- error -------------------------------------------------------

#puts "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs? Line 125
#
# 2. What is the type of error message? warning
#
# 3. What additional information does the interpreter provide about this type of error? possibly useless use of * in void context
#
# 4. Where is the error in the code? The number is first and there is no method included
#
# 5. Why did the interpreter give you this error? It is a calculation, but with the incorrect order and no method, ruby can not process it. 
#

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?  141
#
# 2. What is the type of error message?  in "/"
#
# 3. What additional information does the interpreter provide about this type of error?  divided by 0 (ZeroDivisionError)
#
# 4. Where is the error in the code?   In the equation
#
# 5. Why did the interpreter give you this error?  An integer can not be divided by 0, so this is raised by Ruby in this instance.
#

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"



# 1. What is the line number where the error occurs?  172
#
# 2. What is the type of error message? syntax
#
# 3. What additional information does the interpreter provide about this type of error?  unexpected $end  expecting keyword end
#
# 4. Where is the error in the code?  After the code finishes
#
# 5. Why did the interpreter give you this error?  This command comes at the beginning of a RSpec file before the code begin, but there is nothing signifying for ruby to stop processing.
#


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#
# Which error was the most difficult to read?

# The syntax error in the last example was the hardest for me to read. 


# How did you figure out what the issue with the error was?

# I looked rigiht after the line number and was able to determine the error.


# Were you able to determine why each error message happened based on the code? 

# Yes, I was able to deduce each error. Some required research to understand the problems and others were easier to grasp.


# When you encounter errors in your future code, what process will you follow to help you debug?

# I will read the code carefully and make sure I understand the issue.  That way, I won't be flailing around, trying anything I can think of, but can focus on the real issue.  

