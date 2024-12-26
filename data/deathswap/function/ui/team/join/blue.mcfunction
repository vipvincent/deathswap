execute if entity @s[team=blue] run return run function deathswap:ui/page/update

team join blue
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector": "@s"},{"text": " §9joins the blue team"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector": "@s"},{"text": " §9加入藍隊"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

function deathswap:ui/page/update