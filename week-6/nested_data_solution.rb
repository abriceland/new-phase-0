# # RELEASE 2: NESTED STRUCTURE GOLF
# # Hole 1
# # Target element: "FORE"

# array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# # attempts: 8-10
# # ============================================================
# p array[1][1][2][0]


# # ============================================================

# # Hole 2
# # Target element: "congrats!"

# hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:  1
# # ============================================================
# p hash[:outer][:inner]["almost"][3]


# # ============================================================


# # Hole 3
# # Target element: "finished"

# nested_data = {array: ["array", {hash: "finished"}]}

# # attempts:  4
# # ============================================================

# p nested_data[:array][1][:hash]

# # ============================================================

# # RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, [10, 15], [20,25,30], 35]


number_array.each do |num|
    if num.kind_of?(Array)
        num.each {|num| p num + 5}
    else 
        p num + 5
    end
end

# Bonus:

# startup_names = 
#     ["bit", 
#         ["find", "fast", 
#             ["optimize", "scope"]
#     ]
# ]

# Attemped

# def startup_names(name)
    
#     name.each do |n|
#         if name.kind_of?(Array)
#             name.each {|n| p n + "ly"}
#         else
#             startup_names(name)
#         end
#     end
# end    


# def factorial(num, sum = num)
#   # return sum if num == 1
#   sum *= (num - 1)
#   factorial((num-1), sum)  
# end


=begin

What are some general rules you can apply to nested arrays?

It is easier to move them to different lines to see exactly what array is nest in what.  
Using the index number of the next array inside the next allows you to move deeper and deeper.


What are some ways you can iterate over nested arrays?

.kind_of? works well, because it identifies if an array exists or not.  is_a? uses a similar
approach.  It is possible to flatten the arrays as well using .flatten, but is an approach
with future ramifications.


Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

I believe I've used .kind_of? once before, so I am familiar with it.  


=end


    