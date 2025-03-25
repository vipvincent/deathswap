#arena
execute if score killer deathswap.setting matches 1 run tellraw @a {"translate": "death.attack.generic","with": [{"selector": "@s"}]}

#tag
tag @s remove player
tag @s add died
tag @s add spectator

#attribute
attribute @s minecraft:jump_strength base set 0.41999998688697815
attribute @s minecraft:movement_speed base set 0.10000000149011612
attribute @s minecraft:block_interaction_range base set 4.5
attribute @s minecraft:entity_interaction_range base set 3.0

#text
title @a title ""
execute if score language deathswap.setting matches 1 run title @s title [{"text": "§4You died!"}]
execute if score language deathswap.setting matches 2 run title @s title [{"text": "§4你死了！"}]
execute if score language deathswap.setting matches 1 run title @a subtitle ["",{"text":"§4❌ "},{"selector":"@s"},{"text": " §4eliminated!"}]
execute if score language deathswap.setting matches 2 run title @a subtitle ["",{"text":"§4❌ "},{"selector":"@s"},{"text": " §4淘汰！ "}]

#tellraw
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text":"§4❌ "},{"selector":"@s"},{"text": " §reliminated!"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text":"§4❌ "},{"selector":"@s"},{"text": " §r淘汰！ "}]

#killer
execute if entity @s[tag=killer] if score killer.identity deathswap.setting matches 1 if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "A §4§lkiller§r named "},{"selector":"@s"},{"text": " has been eliminated!"}]
execute if entity @s[tag=killer] if score killer.identity deathswap.setting matches 1 if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "一位§4§l殺手§r名叫 "},{"selector":"@s"},{"text": " 已淘汰！"}]

execute as @a at @s run playsound entity.wither.break_block master @s ^ ^ ^ 1 1 1