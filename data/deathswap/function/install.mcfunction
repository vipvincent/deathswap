#--------------------------------------------------
#Death Swap
#data/deathswap/function/install.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#install_stage
execute if data storage vipvincent:install_manager {deathswap:{install_stage:1b}} run return run function deathswap:install_complete

#return
execute if data storage vipvincent:install_manager {deathswap:{install:1b}} run return run function deathswap:lib/return/already_installed

#---
#install main

#text
execute unless data storage vipvincent:install_manager {deathswap:{reinstall_stage:1b}} run tellraw @a "-----------------------------------------------------"
execute unless data storage vipvincent:install_manager {deathswap:{reinstall_stage:1b}} run tellraw @a [\
    ["",{text: "Death Swap",color:gold},{text:" > ",color:gold}],\
    {text:"Install "},{text:"Death Swap",color:"gold"},{text:"..."}\
]

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#gamerule
gamerule minecraft:pvp true
gamerule minecraft:immediate_respawn true
gamerule minecraft:respawn_radius 0

#bossbar
bossbar add deathswap:swap_countdown ""
bossbar set deathswap:swap_countdown color white
bossbar add deathswap:wait ""
bossbar set deathswap:wait color pink
bossbar set deathswap:wait max 400
bossbar add deathswap:gmchange ""
bossbar add deathswap:arena ""
bossbar set deathswap:arena color yellow
bossbar add deathswap:random_effect ""
bossbar set deathswap:random_effect color purple

#team for player
team add red
team add blue
team add green
team add yellow

team add solo
team add spectator

team modify red color red
team modify blue color blue
team modify yellow color yellow
team modify green color green

team modify solo color green
team modify spectator color gray

team modify solo seeFriendlyInvisibles false

#worldborder
worldborder damage buffer 1

#---
##scoreboard
#system
scoreboard objectives add deathswap.status dummy
scoreboard objectives add deathswap.setting dummy
scoreboard objectives add deathswap.timer dummy

#swap
scoreboard objectives add deathswap.swap_original dummy
scoreboard objectives add deathswap.swap_calculated dummy

#player
scoreboard objectives add deathswap.death deathCount
scoreboard objectives add deathswap.health health {text:"❤",color:red}
scoreboard objectives add deathswap.win_score dummy
scoreboard objectives add deathswap.ui_page dummy

scoreboard objectives add deathswap.leave_game minecraft.custom:minecraft.leave_game
scoreboard objectives add deathswap.warped_right_click minecraft.used:warped_fungus_on_a_stick

scoreboard objectives add deathswap.damage_taken minecraft.custom:minecraft.damage_taken

#display_sidebar
scoreboard objectives add deathswap.display.rank dummy
scoreboard objectives add deathswap.display.loading dummy
scoreboard objectives add deathswap.display.play_status dummy

scoreboard objectives modify deathswap.display.rank numberformat blank
scoreboard objectives modify deathswap.display.loading numberformat blank
scoreboard objectives modify deathswap.display.play_status numberformat blank

#trigger
scoreboard objectives add deathswap trigger
scoreboard objectives add reset trigger

#---
#operation use
scoreboard players set #operation.10 deathswap.status 10
scoreboard players set #operation.20 deathswap.status 20
scoreboard players set #operation.60 deathswap.status 60

#setdisplay
scoreboard objectives setdisplay below_name deathswap.health

#---
#gamemode
defaultgamemode survival

#setting default
function deathswap:setting/default_all

#text prefix
function deathswap:ui/text_prefix

#---
#player
scoreboard players set @a deathswap.leave_game 0
tag @a add notadmin

#for install player give admin
tag @s add admin 

#---
#data - install
data modify storage vipvincent:install_manager deathswap.install set value 1b
data modify storage vipvincent:install_manager deathswap.install_version set value "v3.7"
data modify storage vipvincent:install_manager deathswap.install_stage set value 1b

#language
execute unless data storage vipvincent:install_manager {deathswap:{reinstall_stage:1b}} unless score *language deathswap.setting matches 1.. run function deathswap:language
execute unless data storage vipvincent:install_manager {deathswap:{reinstall_stage:1b}} unless score *language deathswap.setting matches 1.. run function deathswap:ui/language_tip