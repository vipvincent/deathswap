#trigger
scoreboard players enable @a deathswap
scoreboard players enable @a[tag=admin] reset

#---
# /trigger deathswap
#  1 info
# 10 language_ui
# 11 lanugage/en_us 
# 12 lanugage/zh_tw 

#error
execute as @a[tag=!admin,scores={deathswap=..-1}] run tellraw @s {"translate":"commands.help.failed","color":"red"}
execute as @a[tag=!admin,scores={deathswap=2..}] run tellraw @s {"translate":"commands.help.failed","color":"red"}

execute as @a[tag=admin,scores={deathswap=..-1}] run tellraw @s {"translate":"commands.help.failed","color":"red"}
execute as @a[tag=admin,scores={deathswap=2..9}] run tellraw @s {"translate":"commands.help.failed","color":"red"}
execute as @a[tag=admin,scores={deathswap=13..}] run tellraw @s {"translate":"commands.help.failed","color":"red"}

#info
execute as @a[scores={deathswap=1}] run function deathswap:ui/info

#language
execute as @a[tag=admin,scores={deathswap=10}] run function deathswap:language
execute as @a[tag=admin,scores={deathswap=11}] run function deathswap:setting/language/en
execute as @a[tag=admin,scores={deathswap=12}] run function deathswap:setting/language/tw

#---
#/trigger reset
#  1 reset game

#error
execute as @a[tag=admin,scores={reset=..-1}] run tellraw @s {"translate":"commands.help.failed","color":"red"}
execute as @a[tag=admin,scores={reset=2..}] run tellraw @s {"translate":"commands.help.failed","color":"red"}

#reset game
execute as @a[tag=admin,scores={reset=1}] run function deathswap:reset

#---
#end
scoreboard players set @a deathswap 0
scoreboard players set @a[tag=admin] reset 0
scoreboard players reset @a[tag=!admin] reset