execute if entity @s[team=solo] if score *language deathswap.setting matches 1 run tellraw @s [{"text":"§cYou are already in the Game Team!"}]
execute if entity @s[team=solo] if score *language deathswap.setting matches 2 run tellraw @s [{"text":"§c你已經加入遊戲隊伍了！"}]
execute if entity @s[team=solo] at @s run playsound entity.villager.no master @s ~ ~ ~
execute if entity @s[team=solo] run return run function deathswap:ui/page/update

team join solo
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector": "@s","color":"white"},{"text": " joined the §2Game Team"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector": "@s","color":"white"},{"text": " 加入了§2遊戲隊伍"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

function deathswap:ui/page/update