#Find character in a string
p "powerball" =~ /b/ #Result:5
p /el/ =~ "Hello" #Result:1 
p /b/.match("Football") #Result: #<MatchData "b">


#Ruby standard class

#Math.sqrt
p Math.sqrt(4) #Result: 2.0
p Math::PI #Result:3.141592653589793

#Time
t = Time.new(2024, 5, 31)
p t.monday? #false
p t.friday? #true

#Variable as a pointer
a = "Hello"
b = a
a <<" That"
p a # Result: "Hello That"
p b # Result: "Hello That" #Because the a << " That" does not assign a with new value but change the values

#Blocks and Procs
#Block of code can be passed to a method like a normal variable

def sample_function (&block)
    block.call #Execute the code in the block
end

sample_function do 
    puts "This a block code which will be passed to sample_function"
end
    #Note: The block of code must always be the last parameter to be passed to the method

#Another complicate example which use call-back function

def sample_function2 (number, &block)
    number += 2
    block.call(number)
end

sample_function2 3 do |num|
    puts "The number is passed to is #{num}" #Result: 5
end


#Or can use proc to store a block code
def sample_function3 (number, proc)
    number += 2
    proc.call(number)
end
proc = Proc.new do |num|
    puts "The number is passed to is #{num}" #Result: 5
end
sample_function3 2,proc

#Exception Handling
begin
    a = 5/0
rescue
    puts "Error when calculate"
end