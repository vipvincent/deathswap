#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/random_effect/effect.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#effect
$effect give @a[tag=player] $(effect) $(time) 0

#text
$execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Random Effect: "},{translate:"effect.minecraft.$(effect)"}\
    ]
$execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"隨機效果："},{translate:"effect.minecraft.$(effect)"}\
]

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~