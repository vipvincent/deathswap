#--------------------------------------------------
#Death Swap
#data/deathswap/function/loading/tick.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#timer
scoreboard players add *loading deathswap.timer 1

#bossbar
function deathswap:ui/bossbar/wait_loading

#actionbar
execute if score *language deathswap.setting matches 1 run function deathswap:ui/actionbar/en/play
execute if score *language deathswap.setting matches 2 run function deathswap:ui/actionbar/tw/play

#title & sound
function deathswap:loading/title

#gamemode
execute if score *loading deathswap.timer matches 1..39 run gamemode survival @a 
execute if score *loading deathswap.timer matches 40..400 run gamemode adventure @a[tag=player]
execute if score *loading deathswap.timer matches 40..400 run gamemode spectator @a[tag=spectator]

#spectator
execute if score *loading deathswap.timer matches 1..400 run team join spectator @a[team=]
execute if score *loading deathswap.timer matches 40..400 run tag @a[team=spectator] remove player
execute if score *loading deathswap.timer matches 40..400 run tag @a[team=spectator] add spectator
execute if score *loading deathswap.timer matches 40..400 run tag @a[tag=eliminated] add spectator

#1-10s
execute if score *loading deathswap.timer matches 1..399 run clear @a
execute if score *loading deathswap.timer matches 1..399 run xp set @a 0 levels
execute if score *loading deathswap.timer matches 1..399 run xp set @a 0 points

#2s setting
execute if score *loading deathswap.timer matches 40 run function deathswap:loading/setting

#3s teleport
execute if score *loading deathswap.timer matches 61 run function deathswap:loading/teleport

#20s
execute if score *loading deathswap.timer matches 400 run function deathswap:play/start
