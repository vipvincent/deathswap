#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/language/zhtw.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#language/tw
scoreboard players set *language deathswap.setting 2

#update
function #deathswap:ui/update

#text
tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"語言"},{text:"設定為"},{text:"繁體中文",color:"aqua"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

#install_stage
execute if data storage vipvincent:install_manager {deathswap:{install_stage:1b}} run function deathswap:install_complete

#adv
function deathswap:advancement/update