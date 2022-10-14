#tellraw @a {"text": "get-xp/store","color": "dark_purple"}
execute as @s run function pe2:exp/get-xp/run

scoreboard players operation @s store.exp = @s player.exp
scoreboard players operation @s store.lvl = @s player.lvl
scoreboard players operation @s store.points = @s player.points