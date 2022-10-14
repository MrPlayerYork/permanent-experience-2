#tellraw @s {"text": " "}
#tellraw @s [{"text": "run: "},{"score":{"name": "@s","objective": "give.recu"},"color": "aqua"}]
#tellraw @s [{"text": "tmp.exp: "},{"score":{"name": "@s","objective": "tmp.exp"},"color": "red"}]


#execute if score @s tmp.exp matches 10000.. run tellraw @s [{"text": "gave "},{"selector":"@s"},{"text": " 10,000 points","color": "green"}]
execute if score @s tmp.exp matches 10000.. run xp add @s 10000 points
execute if score @s tmp.exp matches 10000.. run scoreboard players remove @s tmp.exp 10000

#execute if score @s tmp.exp matches 1000..9999 run tellraw @s [{"text": "gave "},{"selector":"@s"},{"text": " 1,000 points","color": "green"}]
execute if score @s tmp.exp matches 1000..9999 run xp add @s 1000 points
execute if score @s tmp.exp matches 1000..9999 run scoreboard players remove @s tmp.exp 1000

#execute if score @s tmp.exp matches 100..999 run tellraw @s [{"text": "gave "},{"selector":"@s"},{"text": " 100 points","color": "green"}]
execute if score @s tmp.exp matches 100..999 run xp add @s 100 points
execute if score @s tmp.exp matches 100..999 run scoreboard players remove @s tmp.exp 100

#execute if score @s tmp.exp matches 10..99 run tellraw @s [{"text": "gave "},{"selector":"@s"},{"text": " 10 points","color": "green"}]
execute if score @s tmp.exp matches 10..99 run xp add @s 10 points
execute if score @s tmp.exp matches 10..99 run scoreboard players remove @s tmp.exp 10

#execute if score @s tmp.exp matches 1..9 run tellraw @s [{"text": "gave "},{"selector":"@s"},{"text": " 1 point","color": "green"}]
execute if score @s tmp.exp matches 1..9 run xp add @s 1 points
execute if score @s tmp.exp matches 1..9 run scoreboard players remove @s tmp.exp 1

#execute if score @s tmp.exp matches 0 unless score @s store.lvl matches ..6 run tellraw @s [{"text": "gave "},{"selector":"@s"},{"text": " 1 extra point","color": "green"}]
execute if score @s tmp.exp matches 0 unless score @s store.lvl matches ..6 run xp add @s 1 points
execute if score @s tmp.exp matches 0 unless score @s store.lvl matches ..6 run scoreboard players remove @s tmp.exp 1

scoreboard players add @s give.recu 1
execute unless score @s tmp.exp matches ..0 if score @s give.recu matches ..100 run function pe2:exp/give-xp/recurse_run


