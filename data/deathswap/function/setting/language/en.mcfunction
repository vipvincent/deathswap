#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/language/en.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#language/en
scoreboard players set *language deathswap.setting 1

#update
function #deathswap:ui/update

#text
tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Language"},{text:" is set "},{text:"English",color:"red"}\
]

#sound
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

#install_stage
execute if data storage vipvincent:install_manager {deathswap:{install_stage:1b}} run function deathswap:install_complete

#adv
function deathswap:advancement/update