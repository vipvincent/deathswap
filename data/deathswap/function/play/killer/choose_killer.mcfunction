#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/killer/choose_killer.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#only one
execute if score *killer.quantity deathswap.setting matches 0 run tag @a[tag=player,sort=random,limit=1] add killer

#one per team
execute if score *killer.quantity deathswap.setting matches 1 run tag @a[team=solo,tag=player,sort=random,limit=1] add killer 
execute if score *killer.quantity deathswap.setting matches 1 run tag @a[team=red,tag=player,sort=random,limit=1] add killer 
execute if score *killer.quantity deathswap.setting matches 1 run tag @a[team=blue,tag=player,sort=random,limit=1] add killer 
execute if score *killer.quantity deathswap.setting matches 1 run tag @a[team=green,tag=player,sort=random,limit=1] add killer 
execute if score *killer.quantity deathswap.setting matches 1 run tag @a[team=yellow,tag=player,sort=random,limit=1] add killer 

#title
execute if score *language deathswap.setting matches 1 run title @a[tag=killer] title {text:"You are a killer",color:"dark_red"}
execute if score *language deathswap.setting matches 2 run title @a[tag=killer] title {text:"你是殺手",color:"dark_red"}

#subtitle
execute if score *language deathswap.setting matches 1 run title @a[tag=killer] subtitle {text:"Kill everyone you can",color:"dark_red"}
execute if score *language deathswap.setting matches 2 run title @a[tag=killer] subtitle {text:"盡可能殺光所有人吧",color:"dark_red"}

#text - for killer
execute if score *language deathswap.setting matches 1 run tellraw @a[tag=killer] [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"You are a "},{text:"killer",color:"dark_red"},{text:" Kill everyone you can!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a[tag=killer] [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"你是"},{text:"殺手",color:"dark_red"},{text:"！盡可能殺光所有人吧！"}\
]

#text - for not killer
execute if score *language deathswap.setting matches 1 run tellraw @a[tag=!killer] [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"There is a "},{text:"killer",color:"dark_red"},{text:" in this game, please be careful!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a[tag=!killer] [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"本場遊戲上有"},{text:"殺手",color:"dark_red"},{text:"，請務必留意！"}\
]

#sound
execute as @a[tag=killer] at @s run playsound entity.skeleton.death master @s ~ ~ ~ 1 1 1
execute as @a[tag=!killer] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1

#weapon
function deathswap:play/killer/weapon
