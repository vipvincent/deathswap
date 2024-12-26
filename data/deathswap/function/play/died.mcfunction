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
execute if score language deathswap.setting matches 1 run title @a subtitle [{"text": "§fEliminate "},{"selector":"@s"}]
execute if score language deathswap.setting matches 2 run title @a subtitle [{"text": "§f淘汰 "},{"selector":"@s"}]

#red
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector":"@s"},{"text": " §feliminated!"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector":"@s"},{"text": " §f淘汰！ "}]

#killer
execute if score killer.identity deathswap.setting matches 1 if entity @s[tag=killer] if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text":"§4§l殺手 "},{"selector":"@s"},{"text": " §fhas been eliminated!"}]
execute if score killer.identity deathswap.setting matches 1 if entity @s[tag=killer] if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text":"§4§l殺手 "},{"selector":"@s"},{"text": " §f已淘汰！"}]

execute as @a at @s run playsound entity.wither.break_block master @s ^ ^ ^ 1 1 1