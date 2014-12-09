--[[
if...else...
--]]
year = 2014
-- if year % 4 == 0 and year % 100 ~= 0 then
if year % 4 == 0 then
	if year % 100 ~= 0 then
		print("A leap year.")
	else 
		print("Not a leap year.")
	end
elseif year % 400 == 0 then
	print("A leap year.")
else 
	print("Not a leap year.")
end


--[[
while...do...
--]]
local i = 1 -- Define a local variable
while i <= 10 do
	print(i)
	i = i + 1
end


--[[
repeat...until...
Like `do...while...` in C.
--]]
local j = 100
repeat
	print(j)
	j = j - 10
until j == 0


--[[
Numeric `for`
--]]
for k = 991, 1000 do
	print(k)
end


--[[
Generic `for`
--]]
days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
for i, v in ipairs(days) do
	print(i .. ": " .. v)
end