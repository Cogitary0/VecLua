# Modules vector2, vector3

## Vector2
### Operations on vectors


```lua
function vector2:round(decimals: number) -> round[vec2]
```
Rounding vector components

```lua
function vector2:len() -> number
```
Vector length

```lua
function vector2:norm() -> number
```
Vector normalization

```lua
function vector2:abtw(vector: vec2) -> number
```
Angle between two vectors in radians

```lua
function vector2:proj(vector: vec2) -> vec2
```
Vector projection

```lua
function vector2:dot(vector: vec2) -> number
```
Vector (internal) product

```lua
function vector2:lerp(b:vec2, --Target vector
                      t:number --Interpolation coefficient (0 to 1)
                      ) -> vec2
```
Linear vector interpolation

```lua
function vector2:dist(vector: vec2) -> number
```
Distance between two vectors

```lua
function vector2:cross(vector: vec2) -> number
```
Vector (external) product

```lua
function vector2:rot(angle: number->rad, --The angle of rotation of the vector at a given angle (in radians)
                     axis: str, --Rotation of the vector relative to the axes ("x", "y", "z")
                     convert2deg: bool --If true, then the rotation angle is converted automatically from degrees to radians
                     ) -> vec2
```
Rotate a vector

### Operations with vectors

```lua
    local vec2 = require("src.vector2")

    local v1 = vec2(5, 10)
    local v2 = vec2(10, 15)

    -- vec2 .. vec2
    sum_vectors = v1 + v2 -- (15, 25)
    sub_vectors = v1 - v2 -- (-5, -5)
    mul_vectors = v1 * v2 -- (50, 150)
    div_vectors = v1 / v2 -- (0.5, 0.66667.)
    pow_vectors = v1 ^ v2 -- (9765625, 1e+15)

    --vec2 .. scalar
    sum_vec2_scalar = v1 + 10 -- (15, 25)
    sub_vec2_scalar = v1 - 12 -- (-7, -2)
    mul_vec2_scalar = v1 * 20 -- (100, 200)
    div_vec2_scalar = v1 / 1 -- (5, 10)
    pow_vec2_scalar= v1 ^ 2 -- (25, 100)
```



## Vector3
### Operations on vectors

```lua
function vector3:round(decimals: number) -> round[vec3]
```
Rounding vector components
```lua
function vector3:len() -> number
```
Vector length

```lua
function vector3:norm() -> number
```
Vector normalization

```lua
function vector3:abtw(vector: vec3) -> number
```
Angle between two vectors in radians

```lua
function vector3:isParallel(vector: vec3) -> bool
```
Parallelism of a vector to another vector


```lua
function vector3:proj(vector: vec3) -> vec3
```
Vector projection
...

```lua
function vector3:dot(vector: vec3) -> number
```
Vector (internal) product

```lua
function vector3:lerp(b:vec3, --Target vector
                      t:number --Interpolation coefficient (0 to 1)
                      ) -> vec3
```
Linear vector interpolation

```lua
function vector3:dist(vector: vec3) -> number
```
Distance between two vectors

```lua
function vector3:dist2line(point1: vec3, point2: vec3) -> number
```
Distance to line

```lua
function vector3:cross(vector: vec3) -> number
```
Vector (external) product

```lua
function vector3:rot(angle: number->rad, --The angle of rotation of the vector at a given angle (in radians)
                     axis: str,--Rotation of the vector relative to the axes ("x", "y", "z")
                     convert2deg:bool --If true, then the rotation angle is converted automatically from degrees to radians
                    ) -> vec2
```
Rotate a vector

### Operations with vectors

```lua

local vec3 = require("src.vector3")

local v1 = vec3(1, 2, 3)
local v2 = vec3(4, 5, 6)

--vec3..vec3
local sum_vectors = v1 + v2 -- (5, 7, 9)
local sub_vectors = v1 - v2 -- (-3, -3, -3)
local mul_vectors = v1 * v2 -- (4, 10, 18)
local div_vectors = v1 / v2 -- (0.25, 0.4, 0.5)
local pow_vectors = v1 ^ v2 -- (1, 32, 216)

--vec3..scalar
local scalar_vector = v1 * 2 -- (2, 4, 6)
local scalar_number = 2 * v1 -- (2, 4, 6)
-- ..etc

```
