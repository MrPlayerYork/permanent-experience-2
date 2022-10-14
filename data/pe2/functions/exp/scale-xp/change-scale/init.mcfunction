# Building a Quadractic Formula from 2 points. (can't complete equation here since we don't know what X is.)
# Scale
# A = y - k/(x - h)^2
# 
# Y = A(x - h)^2 + k
# Y = A(x^2) - A(2x * h) + A(h^2) + k
execute store result storage num:io input[0] double 0.1 run scoreboard players get y scale.options
execute store result storage num:io input[1] double 0.1 run scoreboard players get k scale.options
function num:sub
execute store result score YsubK scale.math run data get storage num:io output 10

execute store result storage num:io input[0] double 0.1 run scoreboard players get x scale.options
execute store result storage num:io input[1] double 0.1 run scoreboard players get h scale.options
function num:sub
execute store result score XsubH scale.math run data get storage num:io output 10

execute store result storage num:io input[0] double 0.1 run scoreboard players get XsubH scale.math
execute store result storage num:io input[1] double 0.1 run scoreboard players get XsubH scale.math
function num:mul
execute store result score XsubHsqr scale.math run data get storage num:io output 100

execute store result storage num:io input[0] double 0.1 run scoreboard players get YsubK scale.math
execute store result storage num:io input[1] double 0.01 run scoreboard players get XsubHsqr scale.math
function num:div
execute store result score A scale.math run data get storage num:io output 1000

# -A(2x * h)

execute store result storage num:io input[0] double 0.1 run scoreboard players get #20 const
execute store result storage num:io input[1] double 0.1 run scoreboard players get h scale.options
function num:mul
execute store result score tmp1 scale.math run data get storage num:io output 100

execute store result storage num:io input[0] double 0.1 run scoreboard players get #-10 const
execute store result storage num:io input[1] double 0.001 run scoreboard players get A scale.math
function num:mul
execute store result score tmp2 scale.math run data get storage num:io output 1000

execute store result storage num:io input[0] double 0.01 run scoreboard players get tmp1 scale.math
execute store result storage num:io input[1] double 0.001 run scoreboard players get tmp2 scale.math
function num:mul
execute store result score X2 scale.math run data get storage num:io output 1000

# A(h^2)
execute store result storage num:io input[0] double 0.1 run scoreboard players get h scale.options
execute store result storage num:io input[1] double 0.1 run scoreboard players get h scale.options
function num:mul
execute store result score tmp1 scale.math run data get storage num:io output 100

execute store result storage num:io input[0] double 0.01 run scoreboard players get tmp1 scale.math
execute store result storage num:io input[1] double 0.001 run scoreboard players get A scale.math
function num:mul
execute store result score C scale.math run data get storage num:io output 1000

# + k
execute store result storage num:io input[0] double 0.1 run scoreboard players get k scale.options
execute store result storage num:io input[1] double 0.001 run scoreboard players get C scale.math
function num:add
execute store result score C scale.math run data get storage num:io output 1000

