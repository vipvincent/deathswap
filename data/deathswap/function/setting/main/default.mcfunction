#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/main/default.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

scoreboard players set *difficulty deathswap.setting 2
scoreboard players set *spawn_monsters deathswap.setting 1

scoreboard players set *time_set deathswap.setting 0
scoreboard players set *time_cycle deathswap.setting 1
time set day

scoreboard players set *weather deathswap.setting 0
scoreboard players set *weather_cycle deathswap.setting 1
weather clear

scoreboard players set *tool deathswap.setting 0
scoreboard players set *armor deathswap.setting 0

scoreboard players set *natural_regeneration deathswap.setting 1
scoreboard players set *max_health deathswap.setting 20

scoreboard players set *swap_bossbar deathswap.setting 0
scoreboard players set *swap_invincible deathswap.setting 0
scoreboard players set *swap_warn deathswap.setting 0

scoreboard players set *team_collisionrule deathswap.setting 1
scoreboard players set *team_friendlyfire deathswap.setting 1

scoreboard players set *saturation deathswap.setting 0
scoreboard players set *night_vision deathswap.setting 0
scoreboard players set *glowing deathswap.setting 0

scoreboard players set *auto_furnace deathswap.setting 0
scoreboard players set *start_pos deathswap.setting 0

#---
#text
execute if score *language deathswap.setting matches 1 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"Main Settings",color:"yellow"},{text:" have been reset"}\
]
execute if score *language deathswap.setting matches 2 run tellraw @a [\
    {storage:"deathswap:ui",nbt:"text.prefix",interpret:true},\
    {text:"主要設定",color:"yellow"},{text:"已重設"}\
]

#sound
execute if score *language deathswap.setting matches 1.. as @a at @s run playsound ui.button.click master @s ~ ~ ~