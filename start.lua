print('hello')
--lua comments line 
--in lua we dont have veriable data types we have three based on th scope on the veriable

-- *****************************************************************************************************************

-- veriable definition in lua

local i = 10 -- declaration of i as local veriables
local age, gender = 10, 'male' -- declaration mutupile veriables as local
a, b = 10 -- b is nil
print(a, i, gender)
a = 13 
local a = 12
print(a) -- 12 local
print(_G.a) -- 13 global
print(_ENV.a) -- 13 global

-- ******************************************************************************************************************

-- to get user input in lua

--io.write('enter your name')
-- local name = io.read()

-- *************************************************************************************************

-- random number generetor

local random = math.random(1, 100)
print(random) -- 10 79 34

local float_random = math.random()
print(float_random) -- 1.9032458

print(math.randomseed(os.time())) -- 1.47523980

-- ****************************************************************************************************************************

-- Lua data types Lua is a dynamically typed language, so the variables don't have types, only the values have types
-- 1 nil :> used to differentiate the value form having some or no 'nil' data
-- 2 boolean 
-- 3 number :> include doubel precision float
-- 4 string
-- 5 function :> represent a method thet is writen in c ot lua
-- 6 userdata :> represents random c data
-- 7 thread :> Represents independent threads of execution and it is used to implement coroutines
-- 8 table :> Represent ordinary arrays, symbol tables, sets, records, graphs, trees, etc., and implements associative arrays. It can hold any value (except nil)

-- *********************************************************************************************************************************************

-- some iportant operator in lua
-- ~= this is not equal
-- .. Concatenates two strings
-- # its give us to length of the string

--***************************************************************************************************************************************

-- lua loops
-- local i = 1
-- while i < 5 do
    -- print("i")
    -- i = i + 1
-- end

-- local i = 1
-- repeat 
    -- print(i)
    -- i = i + 1
-- until i > 10

--for start, finish, step do
    -- code block
--end

-- for i = 1, 5 do 
    -- print(i)
-- end

-- for loop iterating over table example
-- local daysOfWeek = {"monday", "Tuesday", "wednesday"}
-- for index, day in ipairs(daysOfWeek) do
    -- print(day, index)
-- end

-- **************************************************************************************************************************************************************

-- functions 

function max(n, n2) 
    if (n > n2) then
        result = n
    else
        result = n2
    return result
end
print(max(12, 33))

printer = function(arg)
    print(arg)
end

function printer(arg)
    print(arg)
end

function multipy(n1, n2, execute)
    result = n1 * n2
    execute(result)
end

multipy(10, 20, printer)

function avarage(...)
    result = 0
    for i, j in ipairs(...) do
        result = rersult + j
    end
    return result
end
print(10, 20, 30, 40, 50)

function factorial(n)
    if n == 0 then
        return 1
    else 
        return n * factorial(n - 1)
    end
end

function add(n)
    local sum = 0
    for i = 1, #n do
      sum = sum + n[i] 
    end
    return sum
end
  
  print(add({19,99,45,55}))

--********************************************************************************************************************************

-- strings 
-- 1 :> name = "jane"
-- 2 :> surname = 'mary'
-- 3 :> country = [[turkey]]

-- string methods
-- stirng.upper(arguemnt)
-- string.reverse(argument)
-- sting.len(argument)

-- formating string
-- string1, string2 = 'lua', 'tutorial'
-- number1, number2 = 10, 20
-- print(string.format('formatted string is $s $s',string1, string2))
-- $s placeholder for strings $d placeholser for deciminal number
-- print(string.format("name $s age $d", name, age))

--string1 = "Lua"
--string2 = "Tutorial"
-- String Concatenations using ..
--print("Concatenated string",string1..string2)
--> string.rep("abc", 3)             --> abcabcabc
--> string.reverse("A Long Line!")   --> !eniL gnoL A
--> string.lower("A Long Line!")     --> a long line!
--> string.upper("A Long Line!")     --> A LONG LINE!

--> string.find()
--> s = "merhabalar sabahi serifiniz hayirli olsun"
--> print(string.find(s, "sabahi")) -- 12 17


-- ********************************************************************************
-- data structures
-- arrays
--We implement arrays in Lua simply by indexing tables with integers. Therefore, arrays do not have a fixed
--size, but grow as needed. Usually, when we initialize the array we define its size indirectly. For instance,
--after the following code, any attempt to access a field outside the range 1–1000 will return nil, instead
--of zero
local a = {}
for i = 1, 100 do
    a[i] = 1
end

-- my_array = {"ali", "veli", "volvo", "bmw"}
-- my_array = {}
-- for i = 1, 10 do
    --io.write("enter your value")
    -- name = io.read()
    -- my_array[i] = name
-- end

-- for i, j in ipairs(my_array) do
    -- print(i, j)
-- end

-- multidemantial array
my_array = {}

for i = 1, 10 do
  my_array[i] = {}
  for j = 1, 10 do
    my_array[i][j] = i * j
  end  

end

function square(n, current_n)
    if current_n < n then
        current_n = current_n + 1
        return current_n, current_n * current_n
    end
end

for i, n in square, 5, 0
do 
    print(i,n)
end



function sqrt(n1, n2)
    if n1 > n2 then
        n2 = n2 + 1
        return n2, n2 * n2
    end
end

function sqrt2(n)
    return sqrt, n, 0
end

for i, j in sqrt2(5) do
    print(i, j)
end

a = {p = print}
a.p("hello from lua/n")

function fun(x) return x*x end
square = function (x) return x*x end

my_lib = {}
my_lib.add = function (n1, n2) return n1 + n2 end
my_lib.sub = function (n1, n2) return n1 - n2 end

-- of course we can use this patterns

my_lib = {
    add = function (n1, n2) return n1 + n2 end,
    sub = function (n1, n2) return n1 - n2 end
}

-- morever lua offers a specific syntax to define such functions
function my_lib.add (n1, n2) return n1 + n2 end
function my_lib.sub (n1, n2) return n1 - n2 end

function circle(cx, cy, r)
    return function (x, y)
        return (x - cx)^2 + (y - cy)^2 <= r^2
    end
end
print(circle(1, 2, 3)(2, 4)) -- true
isInside = circle(2,3,4)
print(isInside(2,4)) -- false

function union(r1, r2)
    return function (x, y)
        return r1(x, y) or r2(x, y)
    end
end

function intersection(r1, r2)
    return function (x, y)
        return r1(x, y) and r2(x, y)
    end
end

-- word frequens model
local counter = {}
for line in io.lines() do
  for word in string.gmatch(line, "w+") do
   counter[word] = (counter[word] or 0) + 1
  end
end
local words = {}

for w in pairs(counter) do
 words[#words +1] = w 
end

table.sort(words, function (w1, w2) 
  return counter[w1] > counter[w2]
  or counter[w1] == counter[w2]
  and w1 < w2 
end)

local n = math.min(tonumber(arg[1]) or math.huge, #words)
for i = 1, n do
  io.write(words[i], "\t", counter[words[i]], "\n")
end


-- ************************************************************************************************
-- tables
my_table = {}
print("type of my table is", type(my_table))
my_table[1] = "lua"
my_table["hi"] = "mua"
print(my_table["hi"]) -- mua

new_table = my_table
print(new_table["hi"]) -- mua

new_table[1] = "its now changed"
print(my_table[1]) -- its now changed

-- tale methods
-- Concatenation
fruits = {"apple", "banana", "orange", "chery"}
concatenated_table = table.concat(fruits) -- applebananaorangechery
-- concatenate whith a character
print(table.concat(fruits, " :> ")) -- apple :> banane so on

-- insert and remove
-- insert a fruit at the end table.insert(table_name, "item")
table.insert(fruits, "mango")
print(fruits[4]) -- mango

-- remove last element 
table.remove(fruits)
print(fruits[4]) -- nil

a = {x = "ali", y = "veli"} 
print(a["x"]) -- ali
print(a.y) -- veli

users = {
    {name = "ali", age = 10, gender = "male"},
    {name = "mehmet", age = 15, gender = "male"},
    {name = "murat", age = 15, gender = "male"},
    {name = "ayse", age = 18, gnder = "female"}
  }
  print(users[2].name)
  print(users[3].age)

  for i = 1, 4 do
    print(users[i].age)
  end

-- ****************************************************************************************************************************

-- the extarnal keywords i/0 systms
-- simple file open method	
--"r" Read-only mode and is the default mode where an existing file is opened.

--"w" Write enabled mode that overwrites the existing file or creates a new file.

--"a" Append mode that opens an existing file or creates a new file for appending.

--"r+" Read and write mode for an existing file.

--"w+" all existing data is removed if file exists or new file is created with read write permissions.

--"a+" Append mode with read mode enabled that opens an existing file or creates a new file.


data = io.open("fileName.txt","r")

if data then
    local content = data:read("*a")
    print(content)
    data:close()
else 
    print("file not found")
end

data2 = io.open("writeFile.txt", "w")

if data2 then
    data2:write("hello from lua/n")
    data2:write("you are welcome")
    data2:close()
else
    print("file not found")
end
--***********************************************************************************************************
-- goto

goto room1
::room1:: do
    local move = io.read()
    if move == "north" then goto room2
    elseif move == "west" then goto room3
    else 
        print("invaild move")
        goto room1
    end
end
::room2:: do
    local move = io.read()
    if move == "south" then goto room3
    elseif move == "east" then goto room4
    else 
        print("invaild syntax")
        goto room2
    end
end
::room3:: do
    local move = io.read()
    if move == "north" then goto room4
    elseif move == "south" then goto room1
    else
        print("invaild syntax")
        goto room3
end
::room4:: do
    print("congrats you winn the game did you want to play again")
    local again = io.read()
    if again == "yes" then goto room1
    else
        print("game over")
end

--***************************************************************************************************************
-- modules
--[[modules is like a library that van be loaded using require and has a single global name containing a table--]]
-- require
package.loadlib -- c pacages leri
package.loaded.modelname = nil -- modalname modelini siler
local m = require('math')


--**************************************************************************************************************************
-- os.time
-- os.time() > 1409480
local date =  1439653520
local day2year = 365.242
local sec2hour = 3600
local sec2day = sec2hour * 24
local sec2year = sec2day * day2year

  -- year
  print(date // sec2year + 1970)          --> 2015.0
  -- hour (in UTC)
  print(date % sec2day // sec2hour)       --> 15
  -- minutes
  print(date % sec2hour // 60)            --> 45
  -- seconds
  print(date % 60)                        --> 20

  -- write current time
t = os.time()
print(os.date("%Y/%m/%d", t)) -- 2024/5/11

print(os.date("%Y/%m/%d")) -- 2024/5/11

-- *************************************************************************************************************************************
 -- object-oriented programing 

square = {area = 0, corner = 0}

function square:new (a, corner)
    a = a or {}
    setmetatable(a, self)   
    self.__index = self
    self.corner = corner or 0
    self.area = corner * corner
    return a
end

function square:say ()
    print("I am a square with area " .. self.area .. " and corner " .. self.corner)
end

print(square:new(nil, 10).area) -- its gives us 100
square:new(nil, 20):say() -- and thats give us i am a quare with area 400 and corner 20


circle = {area = 0, r = 0}
function circle:new (o, r)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.r = r or 0
    self.area = math.pi * r
    return o
end

function circle:printArea()
    print(self.area)
end

my_circle = circle:new(nil, 10)
my_circle:printArea() -- 314.1592653589793

circleArea = circle:new()

function circleArea:new(o, r, height)
    o = o or circle:new(o)
    setmetatable = {o, self}
    self.__index = self
    self.r = r or 0
    self.height = height or 0
    self.area = math.pi * r * height
end
function circleArea:showOf ()
    print(self.area)

my_area = circleArea:new(nil, 10, 20)
my_area:showOf()

-- **************************************************************************************************************
-- coroutines
