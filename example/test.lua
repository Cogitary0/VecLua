local vec2 = require("src.vector2")
local vec3 = require('src.vector3')

local a = vec2(2,2)
local b = vec2(3,3)
local c = vec3(4,4,4)

print(a * b)
print(a + b)
print(a * a * 2)
print(a * c)
print(a * 20)
print(a ^ 2)
