# Reminder: Array in Ruby can be a list of elements which belong to many type (int, float, string, ...)
array = ['That', 4, 3.14, 'Hello', true]
p array


#Operator on array
p array.first # "That" ----> Get the first element of the array
p array.last # true -----> Get the last element of the array
p array[2] #3.14 ------> Get the element by index


#Modifying an array
p array.pop #true ----> Pop the last element and return it
p array.push("World") #["That",4,3.14,"Hello","World"] ------> Push a new element to the end of array
p array << 5 #---> Another way to push a new element to the end of the array
p array.delete_at(3) # 'Hello' ---> Delete element at index 3and modify the array
p array.delete(3.14) # 3.14  ---> Delete the element with value 3.14 in the array
p array.unshift(false) # [false, "That", 4, "World", 5] ----> Push a new element to the start of array


#Method on array
array = [1,2,3]
p array.map {|num| num**2} #[1,4,9] --> iterate over each element of the array and apply the code in block
p array.collect {|num| num +1} #[2,3,4] ---> collect is the alias to map
#-----> Note: map and collect method do not change the initial array but return a new array

#Some useful method
array = [1,1,2,3,2,3,4,1,2]
p array.uniq #Result: [1,2,3,4] --> Remove all the duplicate value and return new array
p array.uniq! # Use ! to modify the initial array instead of return new array
p array.select {|num| num > 2} #[3,4] select the element satisfy the condition and return new array

#Nested array
nested_array = [[1,2,3],["Bob",3], ["Alice",2]]
p nested_array[2] # ["Alice",2]

#Array method
array = [1,2,true,["Bob", 3], "Name", 3.14, false]
p array.include?("Name") #true ---> Check if value exist in the array
p array.include?("Bob") #false 
p array.flatten # [1,2,true,"Bob",3,"Name",3.14,false] ---> This is not destructive method which return new array
array.each_index {|i| print i} #0123456 and return the array, this method assign i with index
array.each_with_index {|value, index| print "#{index}-#{value} "}
    # Result: 0-1 1-2 2-true 3-["Bob",3] 4-Name 5-3.14 6-false 

#Sort
array = [1,2,8,7,5,2,1,4,6,4,2] 
p array.sort #[1,1,2,2,2,4,4,5,6,7,8] ---> Not destructive

#Combine 2 array
array = [1,2,3]
p array.product([4,5]) # [[1,4], [1,5], [2,4], [2,5], [3,4], [3,5]] --- Not destructive

#Each and map
enum = array.each # Return a enumerator
p enum.next # Return: 1 
# ---- map is the same as each but each will return the initial array, map will return new array with new value calculate in the block

#Note
array = [1,2,3]
p array[6] # ---> nil not Error 
