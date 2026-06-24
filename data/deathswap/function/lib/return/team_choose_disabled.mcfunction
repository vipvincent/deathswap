#--------------------------------------------------
#Death Swap
#data/deathswap/function/lib/return/team_choose_disabled.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#text
execute if score *language deathswap.setting matches 1 run tellraw @s [\
    {storage:"deathswap:ui",nbt:"text.error_prefix",interpret:true},\
    {text:"Team Selection is not yet enabled! \nTo enable it, Please open Inventory and go to the Team Page."}\
]
execute if score *language deathswap.setting matches 2 run tellraw @s [\
    {storage:"deathswap:ui",nbt:"text.error_prefix",interpret:true},\
    {text:"自由選隊尚未啟用！如要啟用，請打開物品欄並前往隊伍頁面。"}\
]

#sound
execute at @s run playsound entity.villager.no master @s ~ ~ ~