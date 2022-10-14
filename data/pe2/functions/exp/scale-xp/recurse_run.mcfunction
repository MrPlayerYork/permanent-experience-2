#tellraw @a {"text": "scale-xp/recurse_run","color": "dark_purple"}
execute if score @s scale.tmp matches 10000.. run scoreboard players add @s scale.storage 10000
execute if score @s scale.tmp matches 10000.. run scoreboard players remove @s scale.tmp 10000

execute if score @s scale.tmp matches 1000..9999 run scoreboard players add @s scale.storage 1000
execute if score @s scale.tmp matches 1000..9999 run scoreboard players remove @s scale.tmp 1000

execute if score @s scale.tmp matches 100..999 run scoreboard players add @s scale.storage 100
execute if score @s scale.tmp matches 100..999 run scoreboard players remove @s scale.tmp 100

execute if score @s scale.tmp matches 10..99 run scoreboard players add @s scale.storage 10
execute if score @s scale.tmp matches 10..99 run scoreboard players remove @s scale.tmp 10

execute if score @s scale.tmp matches 1..9 run scoreboard players add @s scale.storage 1
execute if score @s scale.tmp matches 1..9 run scoreboard players remove @s scale.tmp 1

execute unless score @s scale.tmp matches 0 run function pe2:exp/scale-xp/recurse_run
execute if score @s scale.tmp matches 0 run scoreboard players set @s tmp.exp 0