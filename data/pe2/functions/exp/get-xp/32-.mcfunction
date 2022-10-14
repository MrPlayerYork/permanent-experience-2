# Level --> Points from 32 to ♾️
# (L(9L-325)+4440)/2

scoreboard players operation @s player.exp = #9 const
scoreboard players operation @s player.exp *= @s player.lvl
scoreboard players operation @s player.exp -= #325 const
scoreboard players operation @s player.exp *= @s player.lvl
scoreboard players operation @s player.exp += #4440 const
scoreboard players operation @s player.exp /= #2 const
