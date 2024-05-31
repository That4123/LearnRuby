#Create a Class
class Dog #Class name must be Constant
end

lulu = Dog.new

#Create a Module for code reuse
module Speak
    def speak
        puts "Meow Meow"
    end
end

class Cat 
    include Speak
end

mimi = Cat.new
mimi.speak #Meow  Meow

#Create a class with a initialize method
class User
    def initialize(name)
        @name = name #Instant variable
    end
end

user_1 = User.new("Minh")


#Composite Relation
class Engine
    def start
      puts "Engine starting..."
    end
end

class Car
    def initialize
        @engine = Engine.new  # Engine instance is created when Car is created
    end

    def start
        @engine.start
    end
end

my_car = Car.new
my_car.start  # Engine is an integral part of Car

#Aggregation Relation
class Passenger
end

class Car
  def initialize(passengers)
    @passengers = passengers  # Passengers are given to the Car at creation
  end
end

    # Passengers can exist without Car
passengers = [Passenger.new, Passenger.new]
my_car = Car.new(passengers)

#The different between Composition and Aggregation is the dependent of the object together

#In Ruby, we can't access the attributes of the Object directly from outside
#We have to use a accessor method 

#A little great in Ruby
class Book
    def initialize(name)
        @name = name
    end
    def get_name
        @name
    end
    def set_name=(name)
        @name=name
    end
end

book1 = Book.new("Romeo and Juliet")
p book1.get_name
book1.set_name = "Jack and Rose" #Ruby allow the syntax like this
p book1.get_name #Jack and Rose

class Animal
    def name=(n)
        @name = n
        "Laddieboy"              # value will be ignored
    end
end
  
sparky = Animal.new()
puts(sparky.name = "Sparky")  # returns "Sparky"

#Because it takes time to implement the code to access any attributes, Ruby has a built-in function for we whenever create accessor for an attribute

class GoodDog
    attr_accessor :name
    #attr_reader :<name> --- Only read, cannot modify
  
    def initialize(name)
      @name = name
    end
  
    def speak
      "#{@name} says arf!" ## Can change to "#{name} says arf" to use instance method instead of instant variable
    end
end
  
sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name            # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name            # => "Spartacus"

#Note: We can not vice versa for setter method because instead of change the instant variable, Ruby thought that we gonna create a new local variable
#       To avoid that, when we want to assign value for instant variable through setter method inside class, use self.<name> = 


#CLASS METHOD

class Circle
    def self.print  # This is how to create a class method
        puts "This is a Circle Class"
    end
end
Circle.print # This is a Circle Class


#CLASS VARIABLE

class Order
    @@order_count = 0
    def initialize 
        @@order_count += 1
    end
    def print_num_order
        puts @@order_count
    end
end

order_1 = Order.new
order_2 = Order.new
order_1.print_num_order #2
order_2.print_num_order #2 


#Defaulf method to_s
 
class Customer
end

customer1 = Customer.new
puts customer1 #<Customer:0x00007bf1297bbc90> ---> Default to_s method in Ruby

class Provider
    def to_s #Overwrite default method in Ruby
        "This is class Provider"
    end
end

provider1 = Provider.new
puts provider1  #This is class Provider

#Like puts, method "p" also call the inspect method, which is useful for debugging, we should not overwrite it

