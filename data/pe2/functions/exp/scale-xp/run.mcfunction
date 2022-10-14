#tellraw @a {"text": "scale-xp/run","color": "dark_purple"}
scoreboard players operation @s scale.tmp = @s tmp.exp
scoreboard players operation @s scale.tmp *= #-1 const
scoreboard players operation @s scale.storage += @s scale.tmp
scoreboard players set @s tmp.exp 0

#function pe2:exp/scale-xp/recurse_run

xp set @s 0 levels
xp set @s 0 points

function pe2:exp/scale-xp/scale_output

#function pe2:exp/give-xp/math

#function pe2:exp/give-xp/run

