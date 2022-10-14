#function pe2:exp/give-xp/math
#tellraw @a {"text": "give-xp/run","color": "dark_purple"}
scoreboard players set @s give.recu 1
function pe2:exp/give-xp/recurse_run