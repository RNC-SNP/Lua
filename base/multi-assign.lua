--[[
In a multiple assignment, Lua first evaluates all values and only then executes the assignments. 
Therefore, we can use a multiple assignment to swap two values.
--]]
G, A = "Google", "Apple"
G, A = A, G
print("G: " .. G)
print("A: " .. A)


--[[
To initialize a set of variables, you must provide a value for each one.
Or the extra variables receive nil as their values.
--]]
x, y, z = 0
print(x, y, z) --> 0, nil, nil