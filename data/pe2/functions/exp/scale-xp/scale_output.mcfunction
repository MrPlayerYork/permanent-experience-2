#tellraw @a {"text": "scale-xp/scale_output","color": "dark_purple"}

execute if score @s scale.storage >= @s scale run scoreboard players add @s store.exp 1
execute if score @s scale.storage >= @s scale run scoreboard players operation @s total.exp += @s scale.storage
execute if score @s scale.storage >= @s scale run scoreboard players operation @s scale.storage -= @s scale
execute unless score @s scale.storage < @s scale run function pe2:exp/scale-xp/scale_output
execute if score @s scale.storage < @s scale run scoreboard players operation @s tmp.exp = @s store.exp
