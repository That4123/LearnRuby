#Conditional statement
    #Full statement
boolean = true
if !boolean 
    p "False"
elsif boolean && 3 # (<,>,<=,>=, ==, &&, ||) are used in Ruby
    p "True"
else 
    p "Maybe true"
end     #"True"

    # Inline statement
if boolean then p "True" elsif !boolean then p "False" else p "Don't know" end # "True"

    # Another example
puts "True" if boolean #True
puts "False" unless boolean == true

    # Ternary Operator
puts boolean ? "This is true" : "This is not true" # This is true

    # Case statement
number = 5
case number
when 5 
    puts "This is number 5"
when 4
    puts "This is number 4"
else 
    puts "Don't know"
end         # Result: This is number 5. Unlike other language, don't need to use break 
    
    #Case statement 2
answer = case number 
when 5 
    "This is number 5"
when 4 
    "This is number 4"
else
    "Don't know"
end
puts answer # Result: This is number 5

    #Case statement 3 - case without expression
case 
when number == 5
    puts "This is number 5"
when number == 4
    puts "This is number 4"
else
    puts "Don't know"
end     #result: This is number 5



# Operator && and || using with non-bool type operand
puts 3 || "Hello" # Result: 3 --> The last evaluated expression is 3
puts "foo" && 5     # Result: 5 --> The last evaluated expression is 5
puts nil || "Hello"  #Result: Hello --> The last evaluated expression is Hello
puts nil && 5       # Result: nil --> The last evaluated expression is nil
#-----> Short-circuit Evaluation



#-----------SOME EXERCISE ---------------------------
#ex1
def all_cap (name)
    if name.length > 10
        return name.upcase
    else
        return name
    end
end
puts all_cap ("Tran Mau That") #TRAN MAU THAT

#ex2
puts '84' < '87' #true
puts '85' < '847'#false -> Compare ASCII code character by character

