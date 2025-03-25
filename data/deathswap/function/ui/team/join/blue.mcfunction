execute if entity @s[team=blue] if score language deathswap.setting matches 1 run tellraw @s [{"text":"§cYou are already in the blue team!"}]
execute if entity @s[team=blue] if score language deathswap.setting matches 2 run tellraw @s [{"text":"§c你已經加入藍隊了！"}]
execute if entity @s[team=blue] at @s run playsound entity.villager.no master @s ~ ~ ~
execute if entity @s[team=blue] run return run function deathswap:ui/page/update

team join blue
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector": "@s","color":"white"},{"text": " joined the §9blue team"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector": "@s","color":"white"},{"text": " 加入了§9藍隊"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

function deathswap:ui/page/update