kill @e[type=marker,tag=pos]

tag @a remove player
tag @a remove eliminated
tag @a remove win
tag @a remove spectator

tag @a[team=blue] add player
tag @a[team=red] add player
tag @a[team=yellow] add player
tag @a[team=green] add player 
tag @a[team=solo] add player

team join spectator @a[team=]
tag @a[team=spectator] add spectator

clear @a
function deathswap:lib/clear_ender_chest
effect clear @a
xp set @a 0 points
xp set @a 0 levels
advancement revoke @a everything
recipe take @a *

gamerule minecraft:reduced_debug_info true
gamerule minecraft:keep_inventory false
gamerule minecraft:show_advancement_messages true

#status
execute as @a[team=red] run scoreboard players set *team_red deathswap.status 1
execute as @a[team=blue] run scoreboard players set *team_blue deathswap.status 1
execute as @a[team=yellow] run scoreboard players set *team_yellow deathswap.status 1
execute as @a[team=green] run scoreboard players set *team_green deathswap.status 1

#scoreboard reset
scoreboard players reset @a deathswap.damage_taken
scoreboard players reset @a deathswap.damage_taken.integer
scoreboard players reset @a deathswap.damage_taken.decimals
scoreboard players reset @a deathswap.death

#killer deathmessages
execute if score *killer deathswap.setting matches 0 run gamerule minecraft:show_death_messages true
execute if score *killer deathswap.setting matches 1 run gamerule minecraft:show_death_messages false

#gmchange
execute if score *gmchange deathswap.setting matches 1 run scoreboard players operation *gmchange.time deathswap.timer = *gmchange.survival_time deathswap.setting

#difficulty
execute if score *difficulty deathswap.setting matches 0 run difficulty peaceful
execute if score *difficulty deathswap.setting matches 1 run difficulty easy
execute if score *difficulty deathswap.setting matches 2 run difficulty normal
execute if score *difficulty deathswap.setting matches 3 run difficulty hard

#time
execute if score *time_set deathswap.setting matches 0 run time set day
execute if score *time_set deathswap.setting matches 1 run time set noon
execute if score *time_set deathswap.setting matches 2 run time set night
execute if score *time_set deathswap.setting matches 3 run time set midnight

#weather
execute if score *weather deathswap.setting matches 0 run weather clear
execute if score *weather deathswap.setting matches 1 run weather rain
execute if score *weather deathswap.setting matches 2 run weather thunder

#dospawn_monstersing
execute if score *spawn_monsters deathswap.setting matches 0 run gamerule minecraft:spawn_monsters true
execute if score *spawn_monsters deathswap.setting matches 1 run gamerule minecraft:spawn_monsters false
execute if score *spawn_monsters deathswap.setting matches 0 run gamerule minecraft:spawner_blocks_work true
execute if score *spawn_monsters deathswap.setting matches 1 run gamerule minecraft:spawner_blocks_work false

#naturalRegeneration
execute if score *hp_natural deathswap.setting matches 0 run gamerule minecraft:natural_health_regeneration true
execute if score *hp_natural deathswap.setting matches 1 run gamerule minecraft:natural_health_regeneration false

#still_on
execute as @a[tag=player] run function deathswap:lib/still/on

#effect
effect give @a[tag=player] water_breathing 20 255 true
effect give @a[tag=player] saturation 400 255 true 
effect give @a[tag=player] instant_health 400 31 true 
effect give @a[tag=player] regeneration 30 255 true
effect give @a[tag=player] resistance 30 255 true 