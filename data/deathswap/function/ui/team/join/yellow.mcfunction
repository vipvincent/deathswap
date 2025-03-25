execute if entity @s[team=yellow] if score language deathswap.setting matches 1 run tellraw @s [{"text":"§cYou are already in the yellow team!"}]
execute if entity @s[team=yellow] if score language deathswap.setting matches 2 run tellraw @s [{"text":"§c你已經加入黃隊了！"}]
execute if entity @s[team=yellow] at @s run playsound entity.villager.no master @s ~ ~ ~
execute if entity @s[team=yellow] run return run function deathswap:ui/page/update

team join yellow
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector": "@s","color":"white"},{"text": " joined the §eyellow team"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector": "@s","color":"white"},{"text": " 加入了§e黃隊"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

function deathswap:ui/page/update