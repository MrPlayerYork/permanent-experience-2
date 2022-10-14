# Level --> Points from 17 to 31
# (L(5L-81)+720)/2

scoreboard players operation @s player.exp = #5 const
scoreboard players operation @s player.exp *= @s player.lvl
scoreboard players operation @s player.exp -= #81 const
scoreboard players operation @s player.exp *= @s player.lvl
scoreboard players operation @s player.exp += #720 const
scoreboard players operation @s player.exp /= #2 const