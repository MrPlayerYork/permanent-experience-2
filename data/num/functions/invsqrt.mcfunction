## NumMC by Oligo
# product
function numop:invsqrt/main

# print output
execute if data storage num:io {print:1b} run tellraw @a {"nbt":"output", "storage":"num:io", "color":"gold"}
