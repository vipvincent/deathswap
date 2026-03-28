#swap/team/main

#pos
execute as @a[team=red,tag=player] at @s run function deathswap:play/swap/team/pos/red
execute as @a[team=blue,tag=player] at @s run function deathswap:play/swap/team/pos/blue
execute as @a[team=yellow,tag=player] at @s run function deathswap:play/swap/team/pos/yellow
execute as @a[team=green,tag=player] at @s run function deathswap:play/swap/team/pos/green

#---
# use for calculate 
tag @e[tag=pos,tag=red_pos,sort=random,limit=1] add calculated
tag @e[tag=pos,tag=blue_pos,sort=random,limit=1] add calculated
tag @e[tag=pos,tag=yellow_pos,sort=random,limit=1] add calculated
tag @e[tag=pos,tag=green_pos,sort=random,limit=1] add calculated

#random assign_id
execute as @e[tag=pos,tag=calculated,sort=random] run function deathswap:play/swap/assign_id

#target
execute as @e[tag=pos,tag=calculated] run function deathswap:play/swap/team/target

#tag add target for other
execute if entity @e[tag=red_target,tag=blue_pos] run tag @e[tag=blue_pos] add red_target
execute if entity @e[tag=red_target,tag=yellow_pos] run tag @e[tag=yellow_pos] add red_target
execute if entity @e[tag=red_target,tag=green_pos] run tag @e[tag=green_pos] add red_target

execute if entity @e[tag=blue_target,tag=red_pos] run tag @e[tag=red_pos] add blue_target
execute if entity @e[tag=blue_target,tag=yellow_pos] run tag @e[tag=yellow_pos] add blue_target
execute if entity @e[tag=blue_target,tag=green_pos] run tag @e[tag=green_pos] add blue_target

execute if entity @e[tag=yellow_target,tag=red_pos] run tag @e[tag=red_pos] add yellow_target
execute if entity @e[tag=yellow_target,tag=blue_pos] run tag @e[tag=blue_pos] add yellow_target
execute if entity @e[tag=yellow_target,tag=green_pos] run tag @e[tag=green_pos] add yellow_target

execute if entity @e[tag=green_target,tag=red_pos] run tag @e[tag=red_pos] add green_target
execute if entity @e[tag=green_target,tag=blue_pos] run tag @e[tag=blue_pos] add green_target
execute if entity @e[tag=green_target,tag=yellow_pos] run tag @e[tag=yellow_pos] add green_target

#---
#tp
execute as @a[team=red,tag=player] run function deathswap:play/swap/team/tp/red
execute as @a[team=blue,tag=player] run function deathswap:play/swap/team/tp/blue
execute as @a[team=yellow,tag=player] run function deathswap:play/swap/team/tp/yellow
execute as @a[team=green,tag=player] run function deathswap:play/swap/team/tp/green
