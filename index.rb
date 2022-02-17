# 1). define => Ruby is a object oriented programming language. Everything in ruby is a object. It was designed and developed in the mid-1990s by Yukihiro "Matz" Matsumoto in Japan. 

# 2).================== Hello world / print and put ===============
puts "hello world"           #puts takes full line space next code always start on new line
print "hello world"          # doesn"t take full line space.....

# 3). ================== Comments  ===============
# single line comment in ruby denotes with has #

=begin
    i 
    am multiline 
    comment in ruby
=end

# 4). =================== Varaibles  And Data Types =============================
# local Variables
name = "Tanu"     # string data type
_age = 22          # Number data type
isRequired = true    #boolean data type

# Global Varialbe 
$pi = 3.17

# constant
WISH = "good morning"

puts name 
puts _age 
puts $pi
puts  WISH

# for know data type of variable
puts WISH.class

# for know object id 
puts WISH.object_id

# 5). ====== String and its methods and  String Concatenation & Interpolation in Ruby ======
# string 
string = 'Hello i am a string';
str2 = "hello i am string with double quote"
string3 = String.new("Another Way of writing a string using new keyword");
puts string, str2, string3;
     
multilineString = " I am
Multiline
string";
puts multilineString

newstring = %/This is my string/;
puts newstring;

string4 = 'hello';
puts string3;

# String Concatenation & Interpolation
fullName = "rvs jks mk"
puts "MY full name is #{fullName}"   #concat varaialbe with string like " sentence #{ varaiblename }"
# cannot use #{} with single quote
puts 'cannot use with single quote #{fullName}'

# escape characters 
puts 'hello i am a \'programmer\'';
puts 'hello i am a "programmer"';

# Methods of strings 
puts string3.nil?
puts string3.length
puts string3.size
puts string3.empty?
puts "".empty?
puts string3.reverse 
puts string3.include?('Way');
puts string3.index("of")
puts string3.upcase;
puts string3.downcase;
puts string3.upcase.reverse;
puts string3.split;
puts string3 + str2;
puts str2[0,4];

# Concat  a string in string
string4 = string4 << 'everyone';
puts string4;
puts "lets concat" " two strings";
puts multilineString.concat('i am concatinated')

#Note
# type irb in terminal for write ruby code for check and test 
# variablename.methods to check all method of this in terminal

# 6). =============== Operators =======================
x = 10;
y = 5;

puts x + y;       # Arithmetic Operators addition ( + ) 
puts x - y;       # Arithmetic Operators substraction ( - ) 
puts x * y;       # Arithmetic Operators Multiplication ( * )
puts x / y;       # Arithmetic Operators Division { /    / }
puts x % y;       # Arithmetic Operators Modules ( % )
puts x ** y;      # Arithmetic Operators Exponent ( ** )

puts x == y;        # Comparison Operators equal to ( == ) 
puts x != y;        # Comparison Operators not equal to ( != ) 
puts x > y;         # Comparison Operators greater ( > ) 
puts x < y;         # Comparison Operators less than  ( < ) 
puts x >= y;        # Comparison Operators greater than or equal to ( >= ) 
puts x <= y;        # Comparison Operators less than oor equal to ( <= ) 

puts x > y && x == y ;        # Logical Operators AND ( && ) 
puts x > y || x == y ;        # Logical Operators OR ( || ) 
puts !(x > y);                # Logical Operators reverse or not ( ! )

puts a = 5;                    # Assignment Operators assign value ( = ) 
puts a += 5;                   # Assignment Operators add and assign value ( += ) 
puts a -= 5;                   # Assignment Operators substract and assign value ( -= ) 
puts a *= 5;                   # Assignment Operators multiply and assign value ( *= ) 
puts a /= 5;                   # Assignment Operators divide and assign value ( /= ) 
puts a %= 5;                   # Assignment Operators modules and assign value  %= 

# range operator
range = ("a".."z")                      # .. means a to z
range2 = ("a"..."z")                    # ... means a to y
puts range.cover?("z")                  #lets check range contains c or not
puts range2.cover?("z")                 #lets check range contains z or not

# 7). =============== Getting Input From Users =======================
print 'Please Enter Your Name Here:';
input = gets.chomp;
puts "Your Name is #{input}";

print "which is your favourite color"
input2 = gets 
puts "your fav color is #{input2}"

# 8). =========================== Methods ===========================
# Method 
def area
    length = 10;
    breath = 20;
    length * breath
end

puts "The Area of Rectangle is #{area} "

# method with arguements 
def area_of_rectangle(length, breath)
    puts length * breath
end
area_of_rectangle(40,70)

# Method with default arguments 
def addition(num1 = 5, num2 = 20)
    puts "The Sum of 2 number is #{num1 + num2}"
end
addition

# Metohd with return statement
def example_return_method(age)
    if age >= 20
        return "You Are An Adult Now"
    elsif age >= 13 && age <= 19
        return "you are teenage"
    else
        return "you are a child"
    end
end
puts example_return_method(28)

# 9). ===================== Class And Objects ===========================
# Class And objects 
class StudentDetails
    # instance method 
    def show_text 
        puts "hello welcome all"
    end

    # Class Method 
    def self.greetings
        puts "Good Morning All"
    end
end

# object or instance of a class 
studentDetailObject = StudentDetails.new 

# Invoke or calling an instance method of class 
studentDetailObject.show_text

# Invoke or Calling a class method of class
StudentDetails.greetings

# class With initializer, Initializer is also known as constructor
#initializer is used to initialize instance variables within a class
class Name
    # initializer
    def initialize(name)
        # instance variable 
        @name = name
    end

    def show_name
        puts "Hello, Welcome #{@name}"
    end
end

nameObj = Name.new("shaily")
nameObj.show_name

# 10). ===================== Modules in Ruby ===========================
# modules 
module MyModule
    Vegetable = "brinjal"

    def MyModule.my_method
        puts "this is module method"
    end
    
end

# constant inside module can be accessed like this
puts MyModule::Vegetable

# module method can be accessed like this
MyModule.my_method

# module include in class
module ShowModule
    def show_something
        puts "hello everyone, always stay happy"
    end
end

class ShowClass
    # Include module is class using include keyword
    include ShowModule
end

showClassObj = ShowClass.new

# accession module method from class object like this 
showClassObj.show_something

# 11). ===================== Getter And Setter Method ===========================
# Getter And Setter Method in Class 
class GetterAndSetterMethodUse 
    def initialize(name)
        @name = name
    end

    # Getter Method
    def name
        puts @name
    end

    # Setter Method 
    def name=(name)
        @name=name
    end
end

getterSetterObj = GetterAndSetterMethodUse.new('RV sharma')
getterSetterObj.name
getterSetterObj.name = "RK verma"
getterSetterObj.name

# 12). ======================== Accessors In Class ==============================
# attr_reader and attr_writer
class AttrReaderWriterMethodsUse
    # Attr Reader Method Shortend of getter method
    attr_reader :name, :age

    # Attr Writer Method Shortend of setter method
    attr_writer :name

    def initialize(name, age, profession)
      @name = name
      @age = age
      @profession = profession
    end
end

attrREaderWriterObj = AttrReaderWriterMethodsUse.new("Xyz", 21, 'developer')
puts "Hey, I am #{attrREaderWriterObj.name} And I am #{attrREaderWriterObj.age}.."

puts attrREaderWriterObj.name = "updated Name Rv"

# attr_accessor
class AccessorsUse
    # Shortend for attr_reader and attr_writer
    attr_accessor :qualification

    def initialize(qualification)
        @qualification = qualification
        @hobbies = "all_things"
      end
end

accessorsUseObj = AccessorsUse.new("BBA")
puts accessorsUseObj.qualification
puts accessorsUseObj.qualification = "BCA"

# 13).=================== Array And Array Methods In Ruby =======================
# arrays
fruits = ["mango", "apple", "orange"]
puts fruits

puts fruits.size    # for check size of an array
puts fruits[0]     # for get first index
puts fruits.at(0)     # for get first index Another Way
puts fruits[-1]     # for get last index
puts fruits[fruits.size-1]   #for get last index Another Way
puts fruits[-2]     # for get second last index

# Way of Declaring Array 
firstWayArray = []      #declare empty array
secondWayArray = Array.new      #declare empty array
secondWayArrayWithSize = Array.new(5)      #declare empty array with 5 size nil element
secondWayArrayWithSizeAndValue = Array.new(5, "welcome") #declare empty array with 5 size and a value
puts secondWayArrayWithSizeAndValue

# pass method in array as value also pass variables etc...
def sum_me
    3+3
end
myArray = Array.new(10, sum_me)
puts myArray

# Array Methods 
# add and remove array element 
firstWayArray << "firstItem"                                        #add element at last
puts firstWayArray
firstWayArray << "seconItm" << "thirdItem" << "mulitipleitem"           #add multiple item
puts firstWayArray
firstWayArray.push("Add_Item_At_last_Of_An_Array_Using_This_Method")
puts firstWayArray
firstWayArray.unshift("Add_Item_At_start_Of_An_Array_Using_This_Method")
puts firstWayArray
firstWayArray.shift         #Remove first element of an array using this
puts firstWayArray
firstWayArray.pop         #Remove last elementt of an array using this
puts firstWayArray
firstWayArray.delete_at(0)          #remove using index number
puts firstWayArray
firstWayArray.delete("seconItm")   #remove using element value of array
puts firstWayArray

secondWayArray << nil << nil << nil << "hello"
puts secondWayArray.size
puts secondWayArray.compact.size
puts secondWayArray.compact     #show item without nil element in an array

myArray = (1..20).to_a
print myArray
print "The size Method Return size of an array #{myArray.size} "
print "The length Method also Return size of an array #{myArray.length} "  
print "The count Method Return size of an array #{myArray.count} " 
print myArray.shuffle!
puts
print myArray.sort
puts
print myArray.reverse
print myArray << nil << nil << ["x", "y"]
print myArray.compact!
print myArray.flatten
print myArray.product
puts 
# For check all present methods 
print myArray.methods
puts
puts "total present method in array is  #{myArray.methods.count}"

# 14).=============== Hash And Its Methods In Ruby ========================
 # symbol hash
data = {
    name: "xyz",
    email: "xyz@gmail.com",
    age: 30,
}
puts data[:name]                #access value of this key
puts data[:email]
puts data[:age]

# symbol has second way
data2 = {
    :name => "xyz",
    :email => "xyz@gmail.com",
    :age => 30,
}
puts "My name is  #{ data2[:name] } "

# string hash 
data3 = {
    "firstName" => "its me",
    "lastname" => "i don't know",
    100 => "hundered"
}
puts data3["firstName"]
puts data3[100]

# Initialized Empty hash 
myHash = {}                 #1st way
myHash2 = Hash[]            #2nd way
myHash3 = Hash.new          #3rd way
puts myHash
puts myHash2
puts myHash3

# Hash Methods 

# Add value in an hash 
myHash[:addMe] = "addItemInHash"
puts myHash

# update item in hash
myHash[:addMe] = "updated value here"
puts myHash

# For check all present methods 
print myHash.methods
puts
puts "total present method in hash is #{myHash.methods.count}"

# for check size
print "The size of myHash is  #{ myHash.size } "
print "The length of myHash is  #{ myHash.length } "
print "The count of myHash is  #{ myHash.count } "

# some mostly used methods
puts
puts myHash.empty?                  #check empty or not
puts myHash2.empty?

myNewHash = { addMe: "updated value here" }
puts myHash.eql?myNewHash               #check equal or not
puts myHash.key?(:xyz)                  #check key is present in hash or not
puts myHash.fetch(:addMe)               #fetch value of particular key
puts myHash.equal?myNewHash               #check equal or not also check object_id 
newHashSame = myHash 
puts myHash.object_id
puts newHashSame.object_id
puts myHash.equal?newHashSame
myHash[:newKey] = nil
myHash[:newKey2] = nil
puts myHash.compact                 #return new hash without nil value
puts myHash 
puts myHash.compact!                # modify hash without nil value 
puts myHash

# 15).================ Loop And Iterators In Ruby =========================
# For loop 
for i in 1..10                      
    puts "hello this is for loop"
end

for i in 1...10                      
    puts "hello this is for loop with ... dots"
end

# nested for loop
input = gets.to_i
for i in 1..input
    puts "hello world outer loop"
    for i in 0...input/2 do
        puts "the nu is #{input} divde by 2"
    end
end

# While loop 
i = 1;

while i < 10                        # jb tk condition true hogi tb tk run hoga 
    puts "hello Ruby developers"
    i += 1
end

while i > 10                    #conditions returns false so it will not executes
    puts "hello i am while loop"
end 

# Infinite loop example when condition is not satisfied loop is gone in infinite state
# while i != 100
#     puts "hello all"
# end

# until loop 
j = 1;
until j > 10            #condition false so its executes n when condition true then stop executes...
    puts "hello until loop"
    j+=1
end

# Infinite loop example
# until j > 10
#     puts "hy"
#     j+=-1
# end

# Iterators 
# map 
numbers = (1..10).to_a 
numbers.map { |num|  print num + 2  }
     
puts ""

# second way
numbers.map do |num|
    print num + 2
end
puts ""

print numbers
puts ""

# with hash 
users = { name: "user1", age: 22 }
users.map { |k,v| puts "Key n value is #{k} : #{v}" }

# if you want to modify original array then use ! operator with map method 
arrayNew = (1..20).to_a
arrayNew.map! { |i| i+2 }
puts ""
print arrayNew
puts

# Each 
five = [1,2,3,4,5]
five.each { |v| puts "using each iterator #{v + 10}"}
puts five

# Each with index
five.each_with_index { |value, index| puts "value is #{value} n index number is #{index}" }

# select 
five.select { |v| puts v > 3 }

# times
5.times do 
    puts "hello from times iterators"
end

# 16).================== Break Next Statement Inside loops ===============
# Break Statement
for j in 1..15 do
    if j > 5
        break
    end
    puts "hello break statement #{j}"
end

# Next statement
for i in 1..15 do
    if i == 10 
        next
    end
    puts "hello next statment #{i}"
end

# 17). ================ Conditional Statements In Ruby ======================
# if 
puts "Enter Your AGe"
age = gets.to_i 
if age == 18 
    puts "Welcome Buddy"
end

# if else 
if age % 2 == 0 
    puts "Even Number"
else
    puts "Odd Number"
end

# if elsif else 
if age >= 60
    puts "you are senior citizen"
elsif age > 19 && age < 60
    puts "you are adult"
elsif age > 13 && age < 20
    puts "you are teenage"
else
    puts "you are baby"
end

# When...case 
case age 
when 1..12
    puts "Person is kid"
when 13..18 
    puts "Person is teenage"
when 19..45 
    puts "Person is adult"
when 46..90 
    puts "Person is senior citizer"
else 
    puts "i don't know"
end

#or with then keyword
case age 
when 1..12 then puts "Person is kid"
when 13..18 then puts "Person is teenage"
when 19..45 then puts "Person is adult"
when 46..90 then puts "Person is senior citizen"
else 
    puts "i doesn’t know"
end   

# unless
unless false 
    puts "hello all"
end

# Unless else
# it is just opposite of if 
unless age > 18 
    puts "person can not vote"              # if false
else
    puts "person can vote"              #if true
end

# Ternary statements 
puts 1 > 10 ? "one is greater " : "one is smaller"

# 18). ================ Extras - Basic things must be know ======================
puts 29.5.to_i              #convert float in integer 
puts 20.to_f                #convert float in float 
puts "1".to_i                       # converting string into integar
puts (1..10).to_a                   #convert range into an array
puts (1...5).to_a                   # range in array convert
puts rand(100)                      #generate random number 
puts 5.odd?                         #check num is odd or not
puts 10.even?                       # check num is even or not
puts 21 % 2                         # if modular is odd then it will return 1 always

#============================================End=======================================================#
