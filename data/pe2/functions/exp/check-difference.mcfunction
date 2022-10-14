#tellraw @a {"text": "Check-difference","color": "dark_purple"}
execute unless score @s scale = @s scale run scoreboard players set @s scale 1
function pe2:exp/give-xp/math

execute if score @s tmp.exp matches ..-1 run function pe2:exp/scale-xp/run
execute if score @s tmp.exp matches 1.. run function pe2:exp/give-xp/run

execute store result score @s store.tmp run xp query @s levels

#give tag to players who need their scales updated
execute if score @s store.lvl < @s store.tmp run function pe2:exp/scale-xp/change-scale/run

#Finish making the curve function, then come back and finish using scores you're not using.

#Store current player xp info
function pe2:exp/get-xp/store