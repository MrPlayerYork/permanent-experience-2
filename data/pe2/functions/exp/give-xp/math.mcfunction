#tellraw @a {"text": "give-xp/math","color": "dark_purple"}
function pe2:exp/get-xp/run

scoreboard players operation @s tmp.exp = @s store.exp
scoreboard players operation @s tmp.exp -= @s player.exp

