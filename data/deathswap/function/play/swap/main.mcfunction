#count
scoreboard players add *swap_count deathswap.status 1

#swap_invincibility
execute if score *swap_invincible deathswap.setting matches 1 run effect give @a[tag=player] resistance 1 255 true
execute if score *swap_invincible deathswap.setting matches 3 run effect give @a[tag=player] resistance 3 255 true
execute if score *swap_invincible deathswap.setting matches 5 run effect give @a[tag=player] resistance 5 255 true

#check kill_pos
kill @e[tag=pos]

#check_reset
scoreboard players reset * deathswap.swap_original
scoreboard players reset * deathswap.swap_calculated

#solo
execute if score *mode deathswap.setting matches 1 run function deathswap:play/swap/solo/main

#team
execute if score *mode deathswap.setting matches 2 run function deathswap:play/swap/team/main

#end kill_pos
kill @e[tag=pos]

#reset
scoreboard players reset * deathswap.swap_original
scoreboard players reset * deathswap.swap_calculated

#title
title @a title ""
execute if score *language deathswap.setting matches 1 run title @a subtitle "§6Swap!"
execute if score *language deathswap.setting matches 2 run title @a subtitle "§6交換！"

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap! "},[{"text": "Round ","bold": true,"color": "white"},{"score":{"name": "*swap_count","objective": "deathswap.status"}},{"text": " - "},{"score":{"name": "*round_time","objective": "deathswap.timer"}},{"text": "s"}]]

execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換！"},[{"text": "第","bold": true,"color": "white"},{"score":{"name": "*swap_count","objective": "deathswap.status"}},{"text": "回合"},{"score":{"name": "*round_time","objective": "deathswap.timer"}},{"text": "秒"}]]

execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~

#adv
advancement grant @a[tag=player] only deathswap:main/criteria/swap

#end
function deathswap:play/swap/swap_time

#gmchange
function deathswap:play/gmchange/pause