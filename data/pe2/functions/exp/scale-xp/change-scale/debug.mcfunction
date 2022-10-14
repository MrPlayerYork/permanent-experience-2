execute unless score debug scale.math = debug scale.math run scoreboard players set debug scale.math -1
execute unless score debug scale.math matches 60.. run scoreboard players add debug scale.math 1
# 
scoreboard players operation debug scale.ptmp1 = debug scale.math
scoreboard players operation debug scale.ptmp1 *= debug scale.ptmp1
scoreboard players operation debug scale.ptmp1 *= #10 const

execute store result storage num:io input[0] double 0.1 run scoreboard players get debug scale.ptmp1
execute store result storage num:io input[1] double 0.001 run scoreboard players get A scale.math
function num:mul
execute store result score debug scale.ptmp1 run data get storage num:io output 1000

# 
scoreboard players operation debug scale.ptmp2 = debug scale.math
scoreboard players operation debug scale.ptmp2 *= #10 const
execute store result storage num:io input[0] double 0.1 run scoreboard players get debug scale.ptmp2
execute store result storage num:io input[1] double 0.001 run scoreboard players get X2 scale.math
function num:mul
execute store result score debug scale.ptmp2 run data get storage num:io output 1000

# 
execute store result storage num:io input[0] double 0.001 run scoreboard players get debug scale.ptmp1
execute store result storage num:io input[1] double 0.001 run scoreboard players get debug scale.ptmp2
function num:add
execute store result score debug scale.ptmp3 run data get storage num:io output 1000

# 
execute store result storage num:io input[0] double 0.001 run scoreboard players get debug scale.ptmp3
execute store result storage num:io input[1] double 0.001 run scoreboard players get C scale.math
function num:add
execute store result score debug scale run data get storage num:io output 1

tellraw @a [{"text": "debug.","color": "red"},{"text": "scale.math.","color": "aqua"},{"score":{"name": "debug","objective": "scale"}}]

execute unless score debug scale.math matches 60.. run schedule function pe2:exp/scale-xp/change-scale/debug 1t
execute if score debug scale.math matches 60.. run function pe2:exp/scale-xp/change-scale/debug_reset