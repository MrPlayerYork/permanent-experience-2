# Level --> Points from 0 to 16
# L(L+6)

scoreboard players operation @s player.exp = #6 const
scoreboard players operation @s player.exp += @s player.lvl
scoreboard players operation @s player.exp *= @s player.lvl