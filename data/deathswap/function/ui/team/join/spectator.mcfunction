execute if entity @s[team=spectator] run return run function deathswap:ui/page/update

team join spectator
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector": "@s","color": "gray"},{"text": " §7joins the spectator"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector": "@s","color": "gray"},{"text": " §7加入旁觀"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

function deathswap:ui/page/update