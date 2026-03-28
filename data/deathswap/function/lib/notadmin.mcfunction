#lib/notadmin
tag @s remove admin
tag @s remove creative
tag @s add notadmin

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector":"@s"},{"text": " §fhas removed §6admin"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector":"@s"},{"text": " §f已移除§6管理員權限"}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#prepare stage
execute unless score *game deathswap.status matches 0 run return fail

#reset
clear @s
gamemode survival @s
function deathswap:ui/page/update

#tip
execute if score *game deathswap.status matches 0 if score *language deathswap.setting matches 1 run title @s title [{"text": "§6Admin have been removed"}]
execute if score *game deathswap.status matches 0 if score *language deathswap.setting matches 2 run title @s title [{"text": "§6已移除管理員權限"}]
execute if score *game deathswap.status matches 0 run title @s subtitle [{"text": ""}]
