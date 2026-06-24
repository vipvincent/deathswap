#--------------------------------------------------
#Death Swap
#data/deathswap/function/team/random_main.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#check return
$execute unless score *player_count deathswap.status matches $(random).. run return run function deathswap:lib/return/not_enough_players_random

#reset
function deathswap:team/reset_team_non-spectator

#random
$function deathswap:team/random/$(random)

#---
##text - result
#en
execute if score *language deathswap.setting matches 1 if entity @a[team=red] run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Team Red: ",color:"red"},{selector:"@a[team=red]"}\
]
execute if score *language deathswap.setting matches 1 if entity @a[team=blue] run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Team Blue: ",color:"blue"},{selector:"@a[team=blue]"}\
]
execute if score *language deathswap.setting matches 1 if entity @a[team=green] run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Team Green: ",color:"green"},{selector:"@a[team=green]"}\
]
execute if score *language deathswap.setting matches 1 if entity @a[team=yellow] run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Team Yellow: ",color:"yellow"},{selector:"@a[team=yellow]"}\
]
#zhtw
execute if score *language deathswap.setting matches 2 if entity @a[team=red] run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"紅隊：",color:"red"},{selector:"@a[team=red]"}\
]
execute if score *language deathswap.setting matches 2 if entity @a[team=blue] run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"藍隊：",color:"blue"},{selector:"@a[team=blue]"}\
]
execute if score *language deathswap.setting matches 2 if entity @a[team=green] run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"綠隊：",color:"green"},{selector:"@a[team=green]"}\
]
execute if score *language deathswap.setting matches 2 if entity @a[team=yellow] run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"黃隊：",color:"yellow"},{selector:"@a[team=yellow]"}\
]
