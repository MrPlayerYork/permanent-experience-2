#tellraw @a {"text": "get-xp/run","color": "dark_purple"}
execute store result score @s player.lvl run xp query @s levels
execute store result score @s player.points run xp query @s points

execute if score @s player.lvl matches 0..16 run function pe2:exp/get-xp/0-16
execute if score @s player.lvl matches 17..31 run function pe2:exp/get-xp/17-31
execute if score @s player.lvl matches 32.. run function pe2:exp/get-xp/32-

scoreboard players operation @s player.exp += @s player.points