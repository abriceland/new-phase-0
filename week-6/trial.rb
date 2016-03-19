# nested_array = [1, ["inner", "array"], 2, 3]
# nested_array.each {|element| puts element}


nested_array = [1, ["inner", "array"], 2, 3]
# nested_array.each {|element| p element}


nested_array.each do |element|
  if element.kind_of?(Array)
    element.each {|inner| p inner}
  end
end