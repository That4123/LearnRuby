#LOOP Statement --- They do not have their own scope like method definition
#Statement with keyword loop will execute the code in block do...end/ {...} until meet the break statement or hit Ctrl+C
number = 1
loop do
    number +=1
    puts number
    if number == 10 
        break 
    end
end
# While loop statement
while number > 5
    puts number
    number -= 1
end
# Until loop statement
until number > 10
    puts number
    number += 1
end
# Do - while loop statement
begin 
    puts number
    number += 1
end while number < 15
# For loop, avoid infinite loop
for i in 10..number do
    puts i # Number of loop is pre-defined with 6 times from 10 to 15
end
# Using break and next key word in loop
for i in 10..15 do
    if i < 12
        next
    elsif i > 14
        break
    else
        print i # 121314
    end
end
# Iterators
array = ['Bob', 'Mary', 'Alice', 2, true, false]
array.each {|ele| print ele} 
    #the key word each means that we loop over each element of the array and execute the code in
    # the block, and each element of the array are assign to the variable named ele in |ele|
# Recurion
def factorial(n)
    if n <= 1
        1
    else
        factorial(n-1)*n
    end
end
puts factorial(5) # Result: 120

