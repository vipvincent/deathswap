#--------------------------------------------------
#Death Swap
#data/deathswap/function/reinstall.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#return
execute unless data storage vipvincent:install_manager {deathswap:{install:1b}} run return run function deathswap:lib/return/not_installed

#--- reinstall main
#text
tellraw @a "-----------------------------------------------------"
execute unless score *language deathswap.setting matches 2.. run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Reinstall "},{text:"Death Swap",color:"gold"},{text:"..."}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"重新安裝"},{text:"死亡交換",color:"gold"},{text:"..."}\
]

#data for reinstall
data modify storage vipvincent:install_manager deathswap.reinstall_stage set value 1b
execute if score *language deathswap.setting matches 1 run data modify storage vipvincent:install_manager deathswap.reinstall_lang set value "en"
execute if score *language deathswap.setting matches 2 run data modify storage vipvincent:install_manager deathswap.reinstall_lang set value "zhtw"

#uninstall&install
function deathswap:uninstall
function deathswap:install

#--- back here
#lanugage
execute if data storage vipvincent:install_manager {deathswap:{reinstall_lang:"en"}} run function deathswap:setting/language/en
execute if data storage vipvincent:install_manager {deathswap:{reinstall_lang:"zhtw"}} run function deathswap:setting/language/zhtw

#clear data for reinstall
data remove storage vipvincent:install_manager deathswap.reinstall_lang
data remove storage vipvincent:install_manager deathswap.reinstall_stage

#not_set_lanauge
execute unless score *language deathswap.setting matches 1.. run function deathswap:ui/language_tip