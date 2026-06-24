#--------------------------------------------------
#Death Swap
#data/deathswap/function/end/main.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#set score
scoreboard players set *game deathswap.status 3
scoreboard players set *end deathswap.timer 0

#end data
$data modify storage deathswap:temp end set value "$(end)"

#schedule clear
schedule clear deathswap:play/killer/choose_killer

#display_sidebar
scoreboard objectives setdisplay list deathswap.win_score
scoreboard objectives setdisplay below_name deathswap.win_score
scoreboard objectives setdisplay sidebar deathswap.display.rank

#bossbar
bossbar set deathswap:swap_countdown visible false
bossbar set deathswap:arena visible false
bossbar set deathswap:gmchange visible false
bossbar set deathswap:random_effect visible false

#tag add win 
execute if data storage deathswap:temp {end:"solo_win"} run tag @a[team=solo,tag=player] add win
execute if data storage deathswap:temp {end:"red_win"} run tag @a[team=red,tag=!killer] add win
execute if data storage deathswap:temp {end:"blue_win"} run tag @a[team=blue,tag=!killer] add win
execute if data storage deathswap:temp {end:"green_win"} run tag @a[team=green,tag=!killer] add win
execute if data storage deathswap:temp {end:"yellow_win"} run tag @a[team=yellow,tag=!killer] add win
execute if data storage deathswap:temp {end:"killer_win"} run tag @a[tag=killer,tag=player] add win

#---
#title & subtitle

#all_fail
execute if data storage deathswap:temp {end:"all_fail"} if score *language deathswap.setting matches 1 run title @a title {text:"No one survived!",color:"light_purple"}
execute if data storage deathswap:temp {end:"all_fail"} if score *language deathswap.setting matches 1 run title @a subtitle {text:"Oh my God!",color:"light_purple"}
execute if data storage deathswap:temp {end:"all_fail"} if score *language deathswap.setting matches 2 run title @a title {text:"無人生還！",color:"light_purple"}
execute if data storage deathswap:temp {end:"all_fail"} if score *language deathswap.setting matches 2 run title @a subtitle {text:"我的天呀！",color:"light_purple"}

#for win [tag=win]
execute unless data storage deathswap:temp {end:"all_fail"} if score *language deathswap.setting matches 1 run title @a[tag=win] title {text:"Win!",color:"gold"}
execute unless data storage deathswap:temp {end:"all_fail"} if score *language deathswap.setting matches 2 run title @a[tag=win] title {text:"獲勝！",color:"gold"}
execute unless data storage deathswap:temp {end:"all_fail"} run title @a[tag=win] subtitle {selector:"@a[tag=win]"}

#for no win [tag=!win]
#solo
execute if data storage deathswap:temp {end:"solo_win"} run title @a[tag=!win] title {selector:"@a[tag=win]"}
execute if data storage deathswap:temp {end:"solo_win"} if score *language deathswap.setting matches 1 run title @a[tag=!win] subtitle {text:"won this match!",color:"gold"}
execute if data storage deathswap:temp {end:"solo_win"} if score *language deathswap.setting matches 2 run title @a[tag=!win] subtitle {text:"獲得了本場勝利！",color:"gold"}

#team & killer
execute if data storage deathswap:temp {end:"red_win"} if score *language deathswap.setting matches 1 run title @a[tag=!win] title {text:"Team Red Wins!",color:"red"}
execute if data storage deathswap:temp {end:"red_win"} if score *language deathswap.setting matches 2 run title @a[tag=!win] title {text:"紅隊獲勝！",color:"red"}
execute if data storage deathswap:temp {end:"blue_win"} if score *language deathswap.setting matches 1 run title @a[tag=!win] title {text:"Team Blue Wins!",color:"blue"}
execute if data storage deathswap:temp {end:"blue_win"} if score *language deathswap.setting matches 2 run title @a[tag=!win] title {text:"藍隊獲勝！",color:"blue"}
execute if data storage deathswap:temp {end:"green_win"} if score *language deathswap.setting matches 1 run title @a[tag=!win] title {text:"Team Green Wins!",color:"green"}
execute if data storage deathswap:temp {end:"green_win"} if score *language deathswap.setting matches 2 run title @a[tag=!win] title {text:"綠隊獲勝！",color:"green"}
execute if data storage deathswap:temp {end:"yellow_win"} if score *language deathswap.setting matches 1 run title @a[tag=!win] title {text:"Team Yellow Wins!",color:"yellow"}
execute if data storage deathswap:temp {end:"yellow_win"} if score *language deathswap.setting matches 2 run title @a[tag=!win] title {text:"黃隊獲勝！",color:"yellow"}
execute if data storage deathswap:temp {end:"killer_win"} if score *language deathswap.setting matches 1 run title @a[tag=!win] title {text:"Killer Wins!",color:"dark_red"}
execute if data storage deathswap:temp {end:"killer_win"} if score *language deathswap.setting matches 2 run title @a[tag=!win] title {text:"殺手獲勝！",color:"dark_red"}

execute unless data storage deathswap:temp {end:"all_fail"} unless data storage deathswap:temp {end:"solo_win"} run title @a subtitle {selector:"@a[tag=win]"}

#---
#text
tellraw @a "-----------------------------------------------------"

#all fail
execute if data storage deathswap:temp {end:"all_fail"} if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"No one survived! No one wins!",color:"light_purple"}\
]
execute if data storage deathswap:temp {end:"all_fail"} if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"無人生還！沒有任何人獲勝！",color:"light_purple"}\
]
#solo win
execute if data storage deathswap:temp {end:"solo_win"} if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Congratulations! "},{selector:"@a[tag=win]",color:"gold"},{text:" has won this match!"}\
]
execute if data storage deathswap:temp {end:"solo_win"} if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"恭喜！"},{selector:"@a[tag=win]",color:"gold"},{text:" 獲得了本場勝利！"}\
]
#red win
execute if data storage deathswap:temp {end:"red_win"} if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Congratulations! "},{text:"Team Red",color:"red"},{text:" has won this match!"}\
]
execute if data storage deathswap:temp {end:"red_win"} if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"恭喜！"},{text:"紅隊",color:"red"},{text:"獲得了本場勝利！"}\
]
#blue win
execute if data storage deathswap:temp {end:"blue_win"} if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Congratulations! "},{text:"Team Blue",color:"blue"},{text:" has won this match!"}\
]
execute if data storage deathswap:temp {end:"blue_win"} if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"恭喜！"},{text:"藍隊",color:"blue"},{text:"獲得了本場勝利！"}\
]
#green win
execute if data storage deathswap:temp {end:"green_win"} if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Congratulations! "},{text:"Team Green",color:"green"},{text:" has won this match!"}\
]
execute if data storage deathswap:temp {end:"green_win"} if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"恭喜！"},{text:"綠隊",color:"green"},{text:"獲得了本場勝利！"}\
]
#yellow win
execute if data storage deathswap:temp {end:"yellow_win"} if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Congratulations! "},{text:"Team Yellow",color:"yellow"},{text:" has won this match!"}\
]
execute if data storage deathswap:temp {end:"yellow_win"} if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"恭喜！"},{text:"黃隊",color:"yellow"},{text:"獲得了本場勝利！"}\
]
#killer win
execute if data storage deathswap:temp {end:"killer_win"} if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Congratulations! "},{text:"Killer",color:"dark_red"},{text:" has won this match!"}\
]
execute if data storage deathswap:temp {end:"killer_win"} if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"恭喜！"},{text:"殺手",color:"dark_red"},{text:" 獲得了本場勝利！"}\
]

#winner
execute unless data storage deathswap:temp {end:"all_fail"} if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Winner: "},{selector:"@a[tag=win]"}\
]
execute unless data storage deathswap:temp {end:"all_fail"} if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"獲勝者："},{selector:"@a[tag=win]"}\
]

#---
#add_score
scoreboard players add @a[tag=win,tag=!player] deathswap.win_score 1
scoreboard players add @a[tag=win,tag=player,tag=!killer] deathswap.win_score 2
scoreboard players add @a[tag=win,tag=player,tag=killer] deathswap.win_score 3

#score_text
execute if score *language deathswap.setting matches 1 unless data storage deathswap:temp {end:"all_fail"} run tellraw @a [{storage:"deathswap:ui",nbt:"text.prefix",interpret:true},{"text": "Scores: "}]
execute if score *language deathswap.setting matches 1 as @a[tag=win,tag=player,tag=killer] run tellraw @a [{storage:"deathswap:ui",nbt:"text.prefix",interpret:true},{"selector":"@s"},{"text":" +3"}]
execute if score *language deathswap.setting matches 1 as @a[tag=win,tag=player,tag=!killer] run tellraw @a [{storage:"deathswap:ui",nbt:"text.prefix",interpret:true},{"selector":"@s"},{"text":" +2"}]
execute if score *language deathswap.setting matches 1 as @a[tag=win,tag=!player] run tellraw @a [{storage:"deathswap:ui",nbt:"text.prefix",interpret:true},{"selector":"@s"},{"text":" +1"}]

execute if score *language deathswap.setting matches 2 unless data storage deathswap:temp {end:"all_fail"} run tellraw @a [{storage:"deathswap:ui",nbt:"text.prefix",interpret:true},{"text": "獲得分數："}]
execute if score *language deathswap.setting matches 2 as @a[tag=win,tag=player,tag=killer] run tellraw @a [{storage:"deathswap:ui",nbt:"text.prefix",interpret:true},{"selector":"@s"},{"text":" +3"}]
execute if score *language deathswap.setting matches 2 as @a[tag=win,tag=player,tag=!killer] run tellraw @a [{storage:"deathswap:ui",nbt:"text.prefix",interpret:true},{"selector":"@s"},{"text":" +2"}]
execute if score *language deathswap.setting matches 2 as @a[tag=win,tag=!player] run tellraw @a [{storage:"deathswap:ui",nbt:"text.prefix",interpret:true},{"selector":"@s"},{"text":" +1"}]

tellraw @a "-----------------------------------------------------"

#---
#particle
execute as @a[tag=win] at @s run particle end_rod ~ ~1 ~ 0 0 0 0.25 40 force
execute as @a[tag=win] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~

#sound
execute as @a[tag=!win,team=!spectator] at @s run playsound entity.wither.death master @s ~ ~ ~

#adv
advancement grant @a[tag=!win,team=!spectator] only deathswap:main/criteria/lose
advancement grant @a[tag=win] only deathswap:main/criteria/win
advancement grant @a[team=spectator] only deathswap:main/criteria/want_play