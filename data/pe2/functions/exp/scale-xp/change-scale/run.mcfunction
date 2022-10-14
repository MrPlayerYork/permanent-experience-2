#Use the Quadractic Formula to calculate a players new scale value
#Y = ax^2 + bx + c
#Y = A(x^2) - A(2x * h) + A(h^2) + k
#Need to calculate A(x^2), x * X2, C already calculated.
#Y = 1x + 2x + 3

execute store result score @s scale.p run xp query @s levels
# 
scoreboard players operation @s scale.ptmp1 = @s scale.p
scoreboard players operation @s scale.ptmp1 *= @s scale.ptmp1
scoreboard players operation @s scale.ptmp1 *= #10 const

execute store result storage num:io input[0] double 0.1 run scoreboard players get @s scale.ptmp1
execute store result storage num:io input[1] double 0.001 run scoreboard players get A scale.math
function num:mul
execute store result score @s scale.ptmp1 run data get storage num:io output 1000

# 
scoreboard players operation @s scale.ptmp2 = @s scale.p
scoreboard players operation @s scale.ptmp2 *= #10 const
execute store result storage num:io input[0] double 0.1 run scoreboard players get @s scale.ptmp2
execute store result storage num:io input[1] double 0.001 run scoreboard players get X2 scale.math
function num:mul
execute store result score @s scale.ptmp2 run data get storage num:io output 1000

# 
execute store result storage num:io input[0] double 0.001 run scoreboard players get @s scale.ptmp1
execute store result storage num:io input[1] double 0.001 run scoreboard players get @s scale.ptmp2
function num:add
execute store result score @s scale.ptmp3 run data get storage num:io output 1000

# 
execute store result storage num:io input[0] double 0.001 run scoreboard players get @s scale.ptmp3
execute store result storage num:io input[1] double 0.001 run scoreboard players get C scale.math
function num:add
execute store result score @s scale run data get storage num:io output 1
