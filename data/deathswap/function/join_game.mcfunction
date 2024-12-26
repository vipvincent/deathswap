#spawnpoint
execute at @e[type=marker,tag=lobby,limit=1] run spawnpoint @s ~ ~ ~

#status 0
execute if score game deathswap.status matches 0 run effect clear @a
execute if score game deathswap.status matches 0 run clear @s
execute if score game deathswap.status matches 0 run xp set @a 0 points
execute if score game deathswap.status matches 0 run xp set @a 0 levels
execute if score game deathswap.status matches 0 run tp @s @e[type=marker,tag=lobby,limit=1]
execute if score game deathswap.status matches 0 run gamemode survival @s
execute if score game deathswap.status matches 0 run team leave @s
execute if score game deathswap.status matches 0 run tag @s remove player
execute if score game deathswap.status matches 0 run tag @s remove spectator
execute if score game deathswap.status matches 0 run tag @s remove died
execute if score game deathswap.status matches 0 run tag @s remove win
execute if score game deathswap.status matches 0 run tag @s remove killer

execute if score game deathswap.status matches 0 run attribute @s minecraft:jump_strength base set 0.41999998688697815
execute if score game deathswap.status matches 0 run attribute @s minecraft:movement_speed base set 0.10000000149011612
execute if score game deathswap.status matches 0 run attribute @s minecraft:block_interaction_range base set 4.5
execute if score game deathswap.status matches 0 run attribute @s minecraft:entity_interaction_range base set 3.0

execute as @s[tag=!notadmin,tag=!admin] run tag @s add notadmin
execute if score game deathswap.status matches 0 run function deathswap:ui/page/update
execute if score game deathswap.status matches 0 run scoreboard players set @s deathswap.ui_page 0


#hp_adj
execute if score hp_adj deathswap.setting matches 1 as @s run attribute @s minecraft:max_health base set 1
execute if score hp_adj deathswap.setting matches 10 as @s run attribute @s minecraft:max_health base set 10
execute if score hp_adj deathswap.setting matches 20 as @s run attribute @s minecraft:max_health base set 20
execute if score hp_adj deathswap.setting matches 30 as @s run attribute @s minecraft:max_health base set 30
execute if score hp_adj deathswap.setting matches 40 as @s run attribute @s minecraft:max_health base set 40
execute if score hp_adj deathswap.setting matches 50 as @s run attribute @s minecraft:max_health base set 50
execute if score hp_adj deathswap.setting matches 60 as @s run attribute @s minecraft:max_health base set 60

#lang
execute unless score language deathswap.setting matches 1.. run function deathswap:ui/language

#en
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fWelcome "},{"selector":"@s"},{"text": " §fto §6Death Swap"}]
execute if score language deathswap.setting matches 1 run title @s title {"text": "§6Death Swap"}
execute if score language deathswap.setting matches 1 run title @s subtitle {"text": "§bMade by vipvincent"}

#中文
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f歡迎 "},{"selector":"@s"},{"text": " §f來到§6死亡交換"}]
execute if score language deathswap.setting matches 2 run title @s title {"text": "§6死亡交換"}
execute if score language deathswap.setting matches 2 run title @s subtitle {"text": "§b製作：早安豆江 vipvincent"}

execute if score language deathswap.setting matches 1.. run execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
execute if score language deathswap.setting matches 1.. run function deathswap:ui/info
execute if score language deathswap.setting matches 1.. if score game deathswap.status matches 0 run function deathswap:ui/click_admin

#status 2 play join
execute if score language deathswap.setting matches 1 if score game deathswap.status matches 2 as @s[tag=player] run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§dTo prevent position errors,"}]
execute if score language deathswap.setting matches 1 if score game deathswap.status matches 2 as @s[tag=player] run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector":"@s"},{"text": "§d has been automatically eliminated!"}]
execute if score language deathswap.setting matches 2 if score game deathswap.status matches 2 as @s[tag=player] run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§d為了防止位置出錯，已自動淘汰 "},{"selector":"@s"},{"text": "！"}]
execute if score game deathswap.status matches 2 run kill @s

#spectator
execute if score game deathswap.status matches 1..3 run gamemode spectator
execute if score game deathswap.status matches 1..3 run team join spectator
