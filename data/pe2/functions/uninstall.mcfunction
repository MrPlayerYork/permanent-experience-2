scoreboard objectives remove const
scoreboard objectives remove player.lvl
scoreboard objectives remove player.points
scoreboard objectives remove player.exp
scoreboard objectives remove store.lvl
scoreboard objectives remove store.points
scoreboard objectives remove store.exp
scoreboard objectives remove store.tmp
scoreboard objectives remove tmp.lvl
scoreboard objectives remove tmp.points
scoreboard objectives remove scale
scoreboard objectives remove scale.options
scoreboard objectives remove scale.storage
scoreboard objectives remove scale.tmp
scoreboard objectives remove scale.math
scoreboard objectives remove scale.pmath
scoreboard objectives remove scale.p
scoreboard objectives remove scale.ptmp1
scoreboard objectives remove scale.ptmp2
scoreboard objectives remove scale.ptmp3

xp set @a 0 levels
xp set @a 0 points
scoreboard players operation @a tmp.exp = @a total.exp
execute as @a run scoreboard players set @s give.recu -500
execute as @a run function pe2:exp/give-xp/recurse_run
scoreboard objectives remove tmp.exp
scoreboard objectives remove total.exp
scoreboard objectives remove give.recu
scoreboard objectives remove give.recu.chk

function num:disable

datapack disable "file/permanent-experience-2"
datapack disable "file/permanent-experience-2.zip"

