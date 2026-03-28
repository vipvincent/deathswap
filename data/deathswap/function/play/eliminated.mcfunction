#arena
execute if score *killer deathswap.setting matches 1 run tellraw @a {"translate": "death.attack.generic","with": [{"selector": "@s"}]}

#tag
tag @s remove player
tag @s add eliminated
tag @s add spectator

#gamemode
gamemode spectator @s

#still_off
function deathswap:lib/still/off

#last death
function deathswap:lib/last_death/main

#update count
function deathswap:lib/count
scoreboard players operation *player_count_update deathswap.status = *player_count deathswap.status

#text
title @a title ""
execute if score *language deathswap.setting matches 1 run title @s title [{"text": "§4You died!"}]
execute if score *language deathswap.setting matches 2 run title @s title [{"text": "§4你死了！"}]
execute if score *language deathswap.setting matches 1 run title @a subtitle ["",{"text":"§4✖ "},{"selector":"@s"},{"text": " §4Eliminated!"}]
execute if score *language deathswap.setting matches 2 run title @a subtitle ["",{"text":"§4✖ "},{"selector":"@s"},{"text": " §4淘汰！ "}]

#tellraw
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text":"§4✖ "},{"selector":"@s"},{"text": " §rEliminated!"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text":"§4✖ "},{"selector":"@s"},{"text": " §r淘汰！ "}]

#killer
execute if entity @s[tag=killer] if score *killer.eliminated_alert deathswap.setting matches 1 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "The §4§lkiller§r named "},{"selector":"@s","color":"dark_red"},{"text": " has been eliminated!"}]
execute if entity @s[tag=killer] if score *killer.eliminated_alert deathswap.setting matches 1 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "名為 "},{"selector":"@s","color":"dark_red"},{"text": " 的§4§l殺手§r已被淘汰！"}]

execute as @a at @s run playsound entity.wither.break_block master @s ~ ~ ~

#adv
advancement grant @s only deathswap:main/criteria/eliminated