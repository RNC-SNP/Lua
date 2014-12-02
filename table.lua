tab1 = {} -- Create a table and store its reference in `tab1`.
tab1["x"] = 8 -- The key's type and the value's are both dynamic.
tab1[9] = "x"

tab2 = tab1 -- `tab2` refers to the same table as `tab1`.
tab2["x"] = tab2["x"] + 1 -- Lua doesn't support `++` and `+=` operator.
print(tab1.x) -- A syntactic sugar: provide a.name for a["name"]. 

--[[
To represent a conventional Array, just use a table with integer keys. 
There's no way to declare its size, just initialize the elements you need.
--]]
array = {}
for i = 1, 10 do -- Indexes of an Array start with one (not with zero, as in C).
	array[i] = i * i
end
for i, line in ipairs(array) do -- Iterate over the Array's elements.
	print(i .. ": " .. line)
end

--[[
When a program has no references to a table left, 
Lua memory management will eventually delete the table and reuse its memory.
--]]
tab1 = nil
tab2 = nil
array = nil