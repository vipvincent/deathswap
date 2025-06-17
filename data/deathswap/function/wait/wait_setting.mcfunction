kill @e[type=marker,tag=start]
kill @e[type=marker,tag=pos]
team join spectator @a[team=]
tag @a remove player
tag @a remove died
tag @a remove win
tag @a remove spectator
tag @a[team=blue] add player
tag @a[team=red] add player
tag @a[team=yellow] add player
tag @a[team=green] add player 
tag @a[team=spectator] add spectator
clear @a
function deathswap:wait/clear_ender_chest
effect clear @a
xp set @a 0 points
xp set @a 0 levels
advancement revoke @a everything
recipe take @a *
gamerule reducedDebugInfo true
gamerule keepInventory false

gamemode spectator @a[tag=spectator]
gamemode survival @a[tag=player]

#count
scoreboard players set player_count deathswap.count 0
scoreboard players set red_count deathswap.count 0
scoreboard players set blue_count deathswap.count 0
scoreboard players set yellow_count deathswap.count 0
scoreboard players set green_count deathswap.count 0
scoreboard players set team_count deathswap.count 0
execute as @a[tag=player] run scoreboard players add player_count deathswap.count 1
execute as @a[team=red,tag=player] run scoreboard players add red_count deathswap.count 1
execute as @a[team=blue,tag=player] run scoreboard players add blue_count deathswap.count 1
execute as @a[team=yellow,tag=player] run scoreboard players add yellow_count deathswap.count 1
execute as @a[team=green,tag=player] run scoreboard players add green_count deathswap.count 1
execute if entity @a[team=red,tag=player] run scoreboard players add team_count deathswap.count 1
execute if entity @a[team=blue,tag=player] run scoreboard players add team_count deathswap.count 1
execute if entity @a[team=yellow,tag=player] run scoreboard players add team_count deathswap.count 1
execute if entity @a[team=green,tag=player] run scoreboard players add team_count deathswap.count 1

execute as @a[team=red] run scoreboard players set team_red deathswap.status 1
execute as @a[team=blue] run scoreboard players set team_blue deathswap.status 1
execute as @a[team=yellow] run scoreboard players set team_yellow deathswap.status 1
execute as @a[team=green] run scoreboard players set team_green deathswap.status 1

scoreboard players reset @a deathswap.hurt
scoreboard players reset @a deathswap.death

#killer deathmessages
execute if score killer deathswap.setting matches 0 run gamerule showDeathMessages true
execute if score killer deathswap.setting matches 1 run gamerule showDeathMessages false

#gmchange
scoreboard players set gmchange deathswap.status 0
execute if score gmchange deathswap.setting matches 1 run scoreboard players operation gmchange deathswap.timer = gmchange.survival_time deathswap.setting

#difficulty
execute if score difficulty deathswap.setting matches 0 run difficulty peaceful
execute if score difficulty deathswap.setting matches 1 run difficulty easy
execute if score difficulty deathswap.setting matches 2 run difficulty normal
execute if score difficulty deathswap.setting matches 3 run difficulty hard

#time
execute if score time_set deathswap.setting matches 0 run time set day
execute if score time_set deathswap.setting matches 1 run time set noon
execute if score time_set deathswap.setting matches 2 run time set night
execute if score time_set deathswap.setting matches 3 run time set midnight
execute if score time_cycle deathswap.setting matches 0 run gamerule doDaylightCycle true
execute if score time_cycle deathswap.setting matches 1 run gamerule doDaylightCycle false

#weather
execute if score weather deathswap.setting matches 0 run weather clear
execute if score weather deathswap.setting matches 1 run weather rain
execute if score weather deathswap.setting matches 2 run weather thunder
execute if score weather_cycle deathswap.setting matches 0 run gamerule doWeatherCycle true
execute if score weather_cycle deathswap.setting matches 1 run gamerule doWeatherCycle false

#doMobSpawning
execute if score mobspawn deathswap.setting matches 0 run gamerule doMobSpawning true
execute if score mobspawn deathswap.setting matches 1 run gamerule doMobSpawning false

#naturalRegeneration
execute if score hp_natural deathswap.setting matches 0 run gamerule naturalRegeneration true
execute if score hp_natural deathswap.setting matches 1 run gamerule naturalRegeneration false

#health
execute if score hp_adj deathswap.setting matches 1 as @a run attribute @s minecraft:max_health base set 1
execute if score hp_adj deathswap.setting matches 10 as @a run attribute @s minecraft:max_health base set 10
execute if score hp_adj deathswap.setting matches 20 as @a run attribute @s minecraft:max_health base set 20
execute if score hp_adj deathswap.setting matches 30 as @a run attribute @s minecraft:max_health base set 30
execute if score hp_adj deathswap.setting matches 40 as @a run attribute @s minecraft:max_health base set 40
execute if score hp_adj deathswap.setting matches 50 as @a run attribute @s minecraft:max_health base set 50
execute if score hp_adj deathswap.setting matches 60 as @a run attribute @s minecraft:max_health base set 60

#friendlyfire
execute if score team_friendlyfire deathswap.setting matches 0 run team modify red friendlyFire true
execute if score team_friendlyfire deathswap.setting matches 0 run team modify blue friendlyFire true
execute if score team_friendlyfire deathswap.setting matches 0 run team modify yellow friendlyFire true
execute if score team_friendlyfire deathswap.setting matches 0 run team modify green friendlyFire true

execute if score team_friendlyfire deathswap.setting matches 1 run team modify red friendlyFire false
execute if score team_friendlyfire deathswap.setting matches 1 run team modify blue friendlyFire false
execute if score team_friendlyfire deathswap.setting matches 1 run team modify yellow friendlyFire false
execute if score team_friendlyfire deathswap.setting matches 1 run team modify green friendlyFire false

#attribute/effect
execute as @a[tag=player] run attribute @s minecraft:jump_strength base set 0.0
execute as @a[tag=player] run attribute @s minecraft:movement_speed base set 0.0
execute as @a[tag=player] run attribute @s minecraft:block_interaction_range base set 0.0
execute as @a[tag=player] run attribute @s minecraft:entity_interaction_range base set 0.0

effect give @a[tag=player] water_breathing 8 255 true
effect give @a[tag=player] saturation 160 255 true 
effect give @a[tag=player] instant_health 160 31 true 
effect give @a[tag=player] regeneration 18 255 true
effect give @a[tag=player] resistance 18 255 true 