#Hash is a data structure that store the data with the entries key-value pairs. 
#Commonly, hash uses symbol as a key and any data type as value
new_hash = {"That": 5, "Bob": 2, "Alice":1}
p new_hash[:That] #Result: 5
p new_hash[:John] = 6 #Result: 6 ---> Add a new pair to hash and return value
p new_hash.delete(:Bob) #Result: 2 ----> Delete a pair and return value 
another_hash = {Tom: 3, Jenny: 7}
p new_hash.merge!(another_hash) #{:That=>5, :Alice=>1, :John=>6, :Tom=>3, :Jenny=>7} 
    #Using ! to make the method become destructive

#Iterate over hash
new_hash.each do |key,value|
    p "The value of #{key} is #{value}"
end

#Hash as a optional parameters

def greetings (name, options = {}) #options is a default parameter assigned with {}
    if options.empty?
        puts "Hello #{name}"
    else 
        puts "Hello #{name} from country #{options[:country]}, #{options[:city]} city"
    end
end

greetings("John")
greetings("Bob", {country: "Viet Nam", city: "Ho Chi Minh"}) 
greetings("Bob", country: "Viet Nam", city: "Ho Chi Minh") # This also correct 
# --------- Note: greetings() is valid and greetings () may cause error


#COMMON HASH METHOD

#Check key
new_hash = {"That":1, "Bob"=>2}
p new_hash.key?("That") # false
p new_hash.key?(:That) # true
p new_hash.key?("Bob") # true
p new_hash.key?(:Bob) # false
p new_hash["Alice"] = 2

#Select method
new_hash = {"That" => 2, "Bob" => 2, "Alice" => 1}
p new_hash.select {|key,value| value == 2} #Result: {"That" => 2, "Bob" => 2} 

#Fetch method
p new_hash.fetch("That") # return value of key
p new_hash.fetch("Jenny", "This key is not exist") #Return a message if key not found

#Covert to array
p new_hash.to_a  #[["That", 2], ["Bob", 2], ["Alice", 1]] ---Not destructive

#Retrive all keys, values
p new_hash.keys #["That", "Bob", "Alice"]
p new_hash.values #[2, 2, 1]

#Hash maintain the order of the pair key,value 

