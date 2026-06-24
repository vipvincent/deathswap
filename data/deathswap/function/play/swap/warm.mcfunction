#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/swap/warm.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#tellraw
execute if score *swap_countdown deathswap.timer = *swap_warn deathswap.setting if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Swap in "},\
    [{score:{name:"*swap_countdown",objective:"deathswap.timer"}},"s"],\
    {text:"!"}\
]
execute if score *swap_countdown deathswap.timer = *swap_warn deathswap.setting if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    [{score:{name:"*swap_countdown",objective:"deathswap.timer"}},"秒"],\
    {text:"後交換！"}\
]

#subtitle
execute if score *swap_countdown deathswap.timer <= *swap_warn deathswap.setting run title @a title ""
execute if score *swap_countdown deathswap.timer <= *swap_warn deathswap.setting if score *language deathswap.setting matches 1 run title @a subtitle [\
    {text:"Swap in ",color:"gray"},\
    [{score:{name:"*swap_countdown",objective:"deathswap.timer"}},"s"]\
]
execute if score *swap_countdown deathswap.timer <= *swap_warn deathswap.setting if score *language deathswap.setting matches 2 run title @a subtitle [\
    [{score:{name:"*swap_countdown",objective:"deathswap.timer"},color:"gray"}," 秒"],\
    {text:"後交換"}\
]

#sound
execute if score *swap_countdown deathswap.timer <= *swap_warn deathswap.setting run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~
