## NumMC by Oligo
execute store result score #p nummc.math run data get storage num:io input[0] 100000000000000
execute store result score #q nummc.math run data get storage num:io input[1] 100000000000000
execute store result storage num:io output double 0.00000000000001 run scoreboard players operation #p nummc.math -= #q nummc.math
