#--------------------------------------------------
#Death Swap
#data/deathswap/function/install_complete.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#no install_stage
execute unless data storage vipvincent:install_manager {deathswap:{install_stage:1b}} run return fail

#language
execute unless score *language deathswap.setting matches 1.. run return run function deathswap:language

#remove data
data remove storage vipvincent:install_manager deathswap.install_stage

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Death Swap",color:"gold"},{text:" install completed!"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"死亡交換",color:"gold"},{text:"安裝完成！"}\
]

#reset
function deathswap:reset
