#Learn string interpolation
a = 'Hello'
puts "#{a} World"
#String quote and double quote
puts "Hello. Join said: 'Hi'"
# Invalid single quote
#---> puts 'Hello. Join said: 'Hi''
#Using escape sequence
puts 'Hello. Jenny said: \'Hi\''
#Symbol in Ruby
string1 = :Hello_That #symbol start with : at the beginning
string2 = :Hello_That
string3 = "Hello_That"
string4 = "Hello_That"
puts string1.object_id == string2.object_id # true
puts string3.object_id == string4.object_id # false
#---> Symbol help to reuse the string object, immutable, key for hash function
# There are two type of number: integer and float
number_1 = 123 #integer
number_2 = 0.234 #float
# To present nothing type, Ruby use 'nil': return of a void function, or value of a variable
a = nil
puts "Value of a is:#{a}" #nil -> an empty string was print on the screen
b = "Where are you?"
puts b.nil? # false - check if b is a nil type
if nil 
    puts "True" 
else 
    puts "False" # Output: False. Because nils is treated as False value
end 

puts nil == false #false. Notice: Although nil is treated as false value, but they're not the same

#OPERATIONS
#Like other language, if we divide integer for integer, the result will be rounded down to integer
puts 15/4 #3
puts 15/4.0 #3.75
puts 15.0/4 #3.75
#Modulo and remainder
puts 15%4 #3
puts 15.remainder(4) #3
puts 17.divmod(4) #[4,1]
#Ruby support modulo, remainder for the negative value -- Important
# -----> Rule: % (modulo) return the value with the same sign to the second operand
# -----> Rule: remainder return the value with the same sign to the first operand
puts 17%-5 #-3
puts -17%5 #3
puts 17.remainder(-5) #2
puts -17.remainder(5) #-2
#String concatenate
puts "Hello" + "That" #HelloThat
#Type conversion
puts '12'.to_i + 3 #15
puts  9/3.to_f #3.0
puts "3 is my favourite number".to_i #3
puts "My favourite number is 3".to_i #0 ----> That's great 
puts "My favourite number is " + 10.to_s # My favourite number is 10
#Array type
array = [1,2,3,4,5]
puts array[0] #1
#Hashes
hash_list = {:apple=>'Red', :banana => 'Yellow', :grapes => 'Purple'}
puts hash_list[:grapes] #Purple; => : is call a hash rocket
