scoreboard players add swap_count deathswap.count 1

#隨機選擇
execute if score team_red deathswap.status matches 1 as @a[team=red,tag=player,sort=random,limit=1] at @s run function deathswap:play/swap/pos/red
execute if score team_blue deathswap.status matches 1 as @a[team=blue,tag=player,sort=random,limit=1] at @s run function deathswap:play/swap/pos/blue
execute if score team_yellow deathswap.status matches 1 as @a[team=yellow,tag=player,sort=random,limit=1] at @s run function deathswap:play/swap/pos/yellow
execute if score team_green deathswap.status matches 1 as @a[team=green,tag=player,sort=random,limit=1] at @s run function deathswap:play/swap/pos/green

function deathswap:play/swap/random

kill @e[tag=pos]
scoreboard players reset swap_check deathswap.status

#swap_invincibility
execute if score swap_invincible deathswap.setting matches 1 run effect give @a[tag=player] resistance 1 255 true
execute if score swap_invincible deathswap.setting matches 3 run effect give @a[tag=player] resistance 3 255 true

title @a title ""
execute if score language deathswap.setting matches 1 run title @a subtitle "§6Swap!"
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fSwap! "},[{"text": "Round ","bold": true,"color": "white"},{"score":{"name": "swap_count","objective": "deathswap.count"}},{"text": " - "},{"score":{"name": "round_time","objective": "deathswap.timer"}},{"text": "s"}]]
execute if score language deathswap.setting matches 2 run title @a subtitle "§6交換！"
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f交換！"},[{"text": "第","bold": true,"color": "white"},{"score":{"name": "swap_count","objective": "deathswap.count"}},{"text": "回合"},{"score":{"name": "round_time","objective": "deathswap.timer"}},{"text": "秒"}]]

execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~

function deathswap:play/swap/swap_time