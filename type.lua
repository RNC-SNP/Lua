--[[
There are no type definitions in Lua, each value carries its own type.
There are eight basic types in Lua: `nil`, `boolean`, `number`, `string`, `userdata`, `function`, `thread`, and `table`. 
The type function gives the type name of a given value:
--]]

print(type("Lua")) -- string
print(type(10.4 * 3)) -- number
print(type(true)) -- boolean
print(type(nil)) -- nil

print(type(x)) -- nil, `x` is not initialized.
x = 12345
print(type(x))

f = print -- function
print(type(f))

print(type(type)) -- function
print(type(type(X))) -- string