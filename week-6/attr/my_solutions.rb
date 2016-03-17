#Attr Methods

# I worked on this challenge by myself.

# I spent 1 hour on this challenge.

# Pseudocode

# Input: two new classes
# Output: puts string to console using class methods
# Steps: 
# 1. create NameData class
# 2. initialize class
# 3. define method, call_name, that will return my namedata
# 4. create Greetings class
# 5. initialize new class with instance variable creating new object of old class
# 6. define method hello which prints output including instance variable of old class with a call to 
#      old class' method to print name
# 7. 





class NameData
    
    def call_name
        return "Alicia"
    end    
end


class Greetings

    def initialize
        @namedata = NameData.new
    end
    
    def hello
        puts "Hello " + @namedata.call_name + "! How wonderful to see you today."
    end

end

greet = Greetings.new

greet.hello

=begin
# Reflection

What are these methods doing?

The class initializes its template with one set of settings, but includes methods to allow those settings to be changed.
By calling the methods changing that info on the first object created by the class, the attributes of the object itself
can be changed.  


How are they modifying or returning the value of instance variables?

They are returning them with the new values, because that is how it is set up in the class itself. No attr_writer is
set at the top.  



What changed between the last release and this release?

attr_reader was used at the top instead of defining a method age.  


What was replaced?

The method age was replaced. 


Is this code simpler than the last?

Yes, this code is simpler.  



What changed between the last release and this release?

attr_writer was added at the top.


What was replaced?

attr_writer replaced the method change_my_age.  It is now age only, but can be changed, because of 
attr_writer's presence at the top. 


Is this code simpler than the last?

Yes, this code is simpler.



What is a reader method?

Defined at the top of a class, the attribute reader method allows information to be accessed outside 
of the class without needing to define the method itself.  


What is a writer method?

Defined at the top of a class, the attribute writer method allows information to be changed outside 
of the class without needing to define the method itself.  


What do the attr methods do for you?

They give you a shortcut, because you no longer need to write those methods.  The code is cleaner and 
it takes less time to write. 


Should you always use an accessor to cover your bases? Why or why not?

No, because often you don't want the ability to overwrite.  It could be risky.  Also, there might be 
issues debugging later using attr_accessor indiscriminately.


What is confusing to you about these methods?

At this point, I feel pretty clear on them.  They seem quite logical.  

=end


