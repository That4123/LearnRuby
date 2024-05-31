#   A method definition create its own scope, so local variable in a method definition 
#   cannot be referenced from the outside method definition, And it's also the reason why 
#   local variables within a method definition can't access the data from variable outside
a = 5
def change_a 
    a = 3 #Create a new local variable a with value 3
end
puts a #Still 5
# Reminder: method definition scope is different from method invocation with a block


# In Ruby array is an object which will be pass by reference
array = [1,2,3,4]
def mutate_array(an_array)
    an_array.pop
end
puts mutate_array(array) #4 --> In Ruby, the implicit return of the function is the result of execution of last line
puts "#{array}" #[1,2,3]


# Using explitit return with key word 'return'
number = 2
def change(num)
    #do something
    return number_2 = 6 # The return value of assign statement is 6
end
puts change number # 6


# Method with many parameters
def add(num1,num2)
    num1 + num2
end
puts add(1,2) # 3 the same with add 1 2


# Evaluate expression
p puts name = "That" #nil
p p name = "That" #"That" 
p print something = "nothing" #nothingnil

# Compare p, print and puts
    # puts -> print result in string type and add newline after that
    # print -> print result in string type without add newline
    # puts -> call the method inspect of the object passed to, include "" for the string literal
    