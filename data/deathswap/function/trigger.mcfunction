#trigger
scoreboard players enable @a deathswap

#  1 info
#  5 reset game
# 10 ui/language
# 11 lanugage/en_us 
# 12 lanugage/zh_tw 

#error
execute as @a[tag=!admin,scores={deathswap=2..}] run tellraw @s {"translate":"commands.help.failed","color":"red"}
execute as @a[tag=!admin,scores={deathswap=..-1}] run tellraw @s {"translate":"commands.help.failed","color":"red"}

execute as @a[tag=admin,scores={deathswap=..-1}] run tellraw @s {"translate":"commands.help.failed","color":"red"}
execute as @a[tag=admin,scores={deathswap=2..4}] run tellraw @s {"translate":"commands.help.failed","color":"red"}
execute as @a[tag=admin,scores={deathswap=6..9}] run tellraw @s {"translate":"commands.help.failed","color":"red"}
execute as @a[tag=admin,scores={deathswap=13..}] run tellraw @s {"translate":"commands.help.failed","color":"red"}

#info
execute as @a[scores={deathswap=1}] run function deathswap:ui/info

#reset
execute as @a[tag=admin,scores={deathswap=5}] run function deathswap:reset

#language
execute as @a[tag=admin,scores={deathswap=10}] run function deathswap:ui/language
execute as @a[tag=admin,scores={deathswap=11}] run function deathswap:setting/language/en
execute as @a[tag=admin,scores={deathswap=12}] run function deathswap:setting/language/tw

#end
scoreboard players set @a deathswap 0