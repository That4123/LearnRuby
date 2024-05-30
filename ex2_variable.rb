# Input method
name = gets #waiting for input until we press the Enter key
puts name #'That\n'
name = gets.chomp #Do not add the newline character automatically
puts name + " is a good friend"

#Variable Scope
name = "This is a outer scope local variable"
def print_name(first_name, last_name)
    name = first_name + " " + last_name #this variable name has method scope, cannot access the local variable outside this scope
    puts name
end
print_name "Tran", "That" # Tran That
puts name # the value still "This is a outer scope local variable"
#Block scope
total = 0
array = [1,2,3]
array.each {|number| total+= number} #total in this block can access the variable from outer scope
puts total # 6
array.each do |number|
    total += number #another example for block scope
end
puts total # 12 -----> The inner scope can access the variable from outer scope but not vice versa
a = 3
3.times do |n|
    a = 5
    b = 2
end
puts a #5 ----> Because a = 3 is visible to the scope do end, so it can re-assign value to 5
# puts b  --> Undefined -----> Because b is initialized in a inner scope, it is invisible to the outer scope
# Notice, only method invocation create a inner block for do...end; but for, while don't do that


# TYPE OF VARIABLES
# Constant
MY_CONSTANT = "This constant will available through out the application" 
    # Constant variable is declare with the first character is capital letter
MY_CONSTANT = "Trying to change constant variable" # Ruby allows to change the constant, but will have a warning
puts MY_CONSTANT # Trying to change constant variable
# Global variables 
$global_var = "This variable will be available through out the application"
puts $global_var
    # Global variables are declared and used with character $ before them
# Class variables, instance variable 
    #will be learn in OOP excercise with declare @var (instant variable) or @@var (class variable)
# Local variable
    # They're declare inside a method with normal declare and obey all scope boundaries
