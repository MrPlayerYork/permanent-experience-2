## NumMC by Oligo
# scale input
execute store result score #in nummc.math run data get storage num:io input 1000000000
execute if score #in nummc.math matches 0 run data modify storage num:io output set value 0.0d
execute unless score #in nummc.math matches 0 run function numop:sqrt/in/lt1/search/l0n0
