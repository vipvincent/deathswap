#reset
scoreboard players set game deathswap.status -1

#worldborder
worldborder center 0 0
worldborder set 59999968 0

#team/tag
team leave *
tag @a remove player
tag @a remove killer
tag @a remove died
tag @a remove win
tag @a remove spectator

#gamerule
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning true
gamerule naturalRegeneration true
gamerule reducedDebugInfo false
gamerule announceAdvancements false
gamerule keepInventory true
gamerule showDeathMessages false
difficulty peaceful

#other
effect clear @a
clear @a
function deathswap:wait/clear_ender_chest
xp set @a 0 points
xp set @a 0 levels
kill @e[type=marker,tag=start]
kill @e[type=marker,tag=pos]
kill @a
gamemode survival @a 
tp @a @e[type=marker,tag=lobby,limit=1]
advancement revoke @a everything
recipe take @a *
title @a reset

#time 
execute if score time_set deathswap.setting matches 0 run time set day
execute if score time_set deathswap.setting matches 1 run time set noon
execute if score time_set deathswap.setting matches 2 run time set night
execute if score time_set deathswap.setting matches 3 run time set midnight

#weather
execute if score weather deathswap.setting matches 0 run weather clear
execute if score weather deathswap.setting matches 1 run weather rain
execute if score weather deathswap.setting matches 2 run weather thunder

#team
team modify red collisionRule always
team modify blue collisionRule always
team modify yellow collisionRule always
team modify green collisionRule always

team modify red friendlyFire true
team modify blue friendlyFire true
team modify yellow friendlyFire true
team modify green friendlyFire true

#scoreboard
scoreboard players set tick deathswap.timer 0
scoreboard players set round_time deathswap.timer 0
scoreboard players set swap_countdown deathswap.timer 0

scoreboard players set wait deathswap.timer 0
scoreboard players set end deathswap.timer 0
scoreboard players set play_time deathswap.timer 0
scoreboard players set gmchange deathswap.timer 0
scoreboard players set arena deathswap.timer 0
scoreboard players set random_effect deathswap.timer 0
scoreboard players set tick deathswap.timer 0
scoreboard players set round_time deathswap.timer 0
scoreboard players set swap_countdown deathswap.timer 0

scoreboard players reset @a deathswap.hurt
scoreboard players reset @a deathswap.death
scoreboard players reset @a deathswap.health

scoreboard players set team_red deathswap.status 0
scoreboard players set team_blue deathswap.status 0
scoreboard players set team_yellow deathswap.status 0
scoreboard players set team_green deathswap.status 0
scoreboard players set swap_time deathswap.status 0
scoreboard players set win deathswap.status -1
scoreboard players set gmchange deathswap.status 0
scoreboard players set arena deathswap.status -1
scoreboard players set random_effect.effect deathswap.status 0
scoreboard players set arena.shrink deathswap.status -1
scoreboard players set arena.border deathswap.status -1

scoreboard players set player_count deathswap.count 0
scoreboard players set red_count deathswap.count 0
scoreboard players set blue_count deathswap.count 0
scoreboard players set yellow_count deathswap.count 0
scoreboard players set green_count deathswap.count 0
scoreboard players set swap_count deathswap.count 0
scoreboard players set team_count deathswap.count 0

scoreboard players set @a deathswap.carrot_right_click 0

scoreboard objectives setdisplay list deathswap.win_score
scoreboard objectives setdisplay sidebar deathswap.win_score

#hp_adj
execute if score hp_adj deathswap.setting matches 1 as @a run attribute @s minecraft:max_health base set 1
execute if score hp_adj deathswap.setting matches 10 as @a run attribute @s minecraft:max_health base set 10
execute if score hp_adj deathswap.setting matches 20 as @a run attribute @s minecraft:max_health base set 20
execute if score hp_adj deathswap.setting matches 30 as @a run attribute @s minecraft:max_health base set 30
execute if score hp_adj deathswap.setting matches 40 as @a run attribute @s minecraft:max_health base set 40
execute if score hp_adj deathswap.setting matches 50 as @a run attribute @s minecraft:max_health base set 50
execute if score hp_adj deathswap.setting matches 60 as @a run attribute @s minecraft:max_health base set 60

#attribute
execute as @a run attribute @s minecraft:jump_strength base set 0.41999998688697815
execute as @a run attribute @s minecraft:movement_speed base set 0.10000000149011612
execute as @a run attribute @s minecraft:block_interaction_range base set 4.5
execute as @a run attribute @s minecraft:entity_interaction_range base set 3.0

#bossbar
bossbar set deathswap:gmchange visible false
bossbar set deathswap:swap_countdown visible false
bossbar set deathswap:arena visible false
bossbar set deathswap:random_effect visible false
bossbar set deathswap:wait visible true
bossbar set deathswap:wait value 200

#end
scoreboard players set game deathswap.status 0

#ui
function deathswap:ui/page/update
scoreboard players set @a[tag=admin] deathswap.ui_page 0

#text
tellraw @a {"text": "-----------------------------------------------------"}
#en
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§2Successfully reset §6Death Swap"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§6Death Swap §fMade by §bvipvincent"}]
execute if score language deathswap.setting matches 1 run title @a title {"text": "§6Death Swap"}
execute if score language deathswap.setting matches 1 run title @a subtitle {"text": "§bMade by vipvincent"}
#中文
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§2已成功重製§6死亡交換"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§6死亡交換§f是由§b早安豆江 vipvincent§f製作"}]
execute if score language deathswap.setting matches 2 run title @a title {"text": "§6死亡交換"}
execute if score language deathswap.setting matches 2 run title @a subtitle {"text": "§b製作：早安豆江 vipvincent"}
#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#link&info
execute as @a run function deathswap:ui/link
execute as @a run function deathswap:ui/click_admin