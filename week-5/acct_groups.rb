=begin

I worked on this with Chand Nirankari and Esther Leytush.

Methods:

File.readlines("Acct_group_list.txt") # => ["Aarthi Gurusami\n", "Abid Ramay\n", "Adam Zmudzinski   \n"]
Array#map, String#chomp, String#strip    # => ["Aarthi Gurusami", "Abid Ramay"]
new array - to hold the groups

Array#shift # => move and delete from self a certain number of 
                 elements from the front
Array#pop # => removes last element from array and returns it
Object#empty? # => returns true if object is empty
Object#any?
Array#flatten # => combines array from sub-arrays by removing brackets
Array#each_with_index

### STACK: pop, push


Pseudocode

1. Create .txt file containing list of names in group
2. Assign variable to link file
3. Create array and iterate to add into array, while removing \n and white space
4. Create new array (final)
5. Create loop to push name, 5 at a time, into new array
6. Create loop to iterate over new array for possible final group with less than 5 members
7. Assign variable to this group of extras
8. Remove from new array
9. Iterate over new array to push those from extras into other groups, one per group
10.End once extras group is empty
11.Remove additional array brackets from new array
12.Add index 
13.Join each group together
14.Print with index

=end


def accountability_groups
 names = File.readlines("Acct_group_list.txt")
 names = names.map {|item| item = item.chomp.strip}
 groups_array = []
 until names.empty?
   groups_array << names.shift(5) # [item1, item2, item3...item5]
 end
 
 if groups_array.any?{|group| group.length < 5 }
   outliers = groups_array.pop # => ["Talal"...."Victoria"]
   
   groups_array.map! do |current_group|
     break if outliers.empty?
     current_group << outliers.shift(1)
     current_group = current_group.flatten
   end
 end
 
 groups_array.each_with_index do |group, index|
   puts "Group #{index + 1}: #{group.join(", ")}"
 end 
end

accountability_groups

=begin
Reflections


What was the most interesting and most difficult part of this challenge?
Figuring out the logical steps to accomplish a task was difficult, because we didn't know what was
possible with the various methods.  We had to experiment and see what would happen at
a number of steps, especially when dealing with the arrays.  But it was interesting
playing around with them and seeing the options in action. 


Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes, it is definitely getting easier to see the logical steps.  I just still feel there is
a gap going from the pseudocode to applying the code directly.  But having detailed pseudocode
helps a lot. 


Was your approach for automating this task a good solution? What could have made it even better?
I'm sure there are more simplified versions, but I understand how this one breaks down, so it's a good
solution for us to have written.


What data structure did you decide to store the accountability groups in and why?
We used an array, because there is no additional value associated with the names that would necessitate
a hash.  It is a simple list.  


What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I used some methods in my initial solution and didn't try to refactor.


=end