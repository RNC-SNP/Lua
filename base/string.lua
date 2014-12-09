--[[
You cannot change a character inside a string, as you may in C.
Instead, you can create a new string with the desired modifications.
--]]
name1 = "Rinc Liu"
name2 = string.gsub(name1, "Liu", "Lew") -- Replace
print("name1:" .. name1) -- The `..` is the string concatenation operator in Lua. And you must separate them with a space.
print("name2:" .. name2)

--[[
We can delimit literal strings also by matching double square brackets `[[...]]
--]]
page = [[
<HTML>
<HEAD>
<TITLE>Lua</TITLE>
</HEAD>
<BODY>
<A HREF="http://www.lua.org">Lua</A>
</BODY>
</HTML>
]]
print(page)

--[[
Lua provides automatic conversions between numbers and strings at run time.
--]]
print("9" + 1)
print("9" + "1")

--[[
boolean value cannot be treated as a number.
--]]
-- print("9" + true)

--[[
The `tostring` function can convert a value to string.
--]]
print(tostring(1234) == "1234")
print(tostring(true) == "true")
print(tostring(nil) == "nil")
print(tostring(print) == "print") -- False!

--[[
The function `tonumber` can convert a string to number, 
which returns `nil` if the string does not denote a proper number.
--]]
line = io.read() -- Read a line from console.
x = tonumber(line)
if x == nil then
	error("'" .. line .. "' is not a valid number!")
else
	print("x:", x)
end