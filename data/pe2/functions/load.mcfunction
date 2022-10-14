# Scoreboards

## Global Variables
scoreboard objectives add const dummy
scoreboard objectives add player.lvl dummy
scoreboard objectives add player.points dummy
scoreboard objectives add player.exp dummy
scoreboard objectives add store.lvl dummy
scoreboard objectives add store.points dummy
scoreboard objectives add store.exp dummy
scoreboard objectives add store.tmp dummy
scoreboard objectives add tmp.exp dummy
scoreboard objectives add give.recu dummy
scoreboard objectives add scale dummy
scoreboard objectives add scale.options dummy
scoreboard objectives add scale.storage dummy
scoreboard objectives add scale.tmp dummy
scoreboard objectives add scale.math dummy
scoreboard objectives add scale.pmath dummy
scoreboard objectives add scale.p dummy
scoreboard objectives add scale.ptmp1 dummy
scoreboard objectives add scale.ptmp2 dummy
scoreboard objectives add scale.ptmp3 dummy
scoreboard objectives add total.exp dummy

## Constants
scoreboard players set #-10 const -10
scoreboard players set #-1 const -1
scoreboard players set #2 const 2
scoreboard players set #5 const 5
scoreboard players set #6 const 6
scoreboard players set #9 const 9
scoreboard players set #10 const 10
scoreboard players set #20 const 20
scoreboard players set #81 const 81
scoreboard players set #325 const 325
scoreboard players set #720 const 720
scoreboard players set #4440 const 4440

## Triggers

## Configs
execute unless score #XpReset const = #XpReset const run scoreboard players set #XpReset const 0
execute unless score y scale.options = y scale.options run scoreboard players set y scale.options 220
execute unless score x scale.options = x scale.options run scoreboard players set x scale.options 220
execute unless score h scale.options = h scale.options run scoreboard players set h scale.options 0
execute unless score k scale.options = k scale.options run scoreboard players set k scale.options 10

# Commands
tellraw @a [{"text": "PE2 is loaded!","color": "#009688"}]
# Functions
execute as @a run function pe2:check_store
schedule function pe2:schedules/update 5s
data modify storage num:io input set value [0.0,0.0]
function pe2:exp/scale-xp/change-scale/init