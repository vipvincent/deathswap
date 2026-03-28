#wait/wait_time

#timer
scoreboard players add *wait deathswap.timer 1

#bossbar
function deathswap:wait/bossbar

#title & sound
function deathswap:wait/title

#gamemode
execute if score *wait deathswap.timer matches 1..39 run gamemode survival @a 
execute if score *wait deathswap.timer matches 40..400 run gamemode adventure @a[tag=player]
execute if score *wait deathswap.timer matches 40..400 run gamemode spectator @a[tag=spectator]

#spectator
execute if score *wait deathswap.timer matches 1..400 run team join spectator @a[team=]
execute if score *wait deathswap.timer matches 40..400 run tag @a[team=spectator] remove player
execute if score *wait deathswap.timer matches 40..400 run tag @a[team=spectator] add spectator
execute if score *wait deathswap.timer matches 40..400 run tag @a[tag=eliminated] add spectator

#1-10s
execute if score *wait deathswap.timer matches 1..399 run clear @a
execute if score *wait deathswap.timer matches 1..399 run xp set @a 0 levels
execute if score *wait deathswap.timer matches 1..399 run xp set @a 0 points

#2s setting
execute if score *wait deathswap.timer matches 40 run function deathswap:wait/wait_setting
execute if score *wait deathswap.timer matches 40 as @a[tag=player] run function deathswap:lib/still/on

#3s teleport
execute if score *wait deathswap.timer matches 61 run function deathswap:wait/teleport

#20s
execute if score *wait deathswap.timer matches 400 run function deathswap:play/start
