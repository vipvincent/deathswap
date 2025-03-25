execute if entity @s[team=red] if score language deathswap.setting matches 1 run tellraw @s [{"text":"§cYou are already in the red team!"}]
execute if entity @s[team=red] if score language deathswap.setting matches 2 run tellraw @s [{"text":"§c你已經加入紅隊了！"}]
execute if entity @s[team=red] at @s run playsound entity.villager.no master @s ~ ~ ~
execute if entity @s[team=red] run return run function deathswap:ui/page/update

team join red
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector": "@s","color":"white"},{"text": " joined the §cred team"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector": "@s","color":"white"},{"text": " 加入了§c紅隊"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

function deathswap:ui/page/update