#join_game
execute at @e[type=marker,tag=lobby,limit=1] run spawnpoint @s ~ ~ ~
execute as @s[tag=!notadmin,tag=!admin] run tag @s add notadmin

#lang
execute unless score *language deathswap.setting matches 1.. run function deathswap:language

#welcome
execute unless score @s deathswap.leave_game matches 0.. if score *language deathswap.setting matches 1 run tellraw @a [\
    "",{text:"Death Swap",color:gold},{text:" | ",color:gray},\
    "Welcome ",{"selector":"@s","color":"white"}," to ",{text:"Death Swap",color:gold}," for the first time!"\
]
execute if score @s deathswap.leave_game matches 1 if score *language deathswap.setting matches 1 run tellraw @a [\
    "",{text:"Death Swap",color:gold},{text:" | ",color:gray},\
    "Welcome back to the ",{text:"Death Swap",color:gold},", ",{"selector":"@s","color":"white"},"!"\
]

execute unless score @s deathswap.leave_game matches 0.. if score *language deathswap.setting matches 2 run tellraw @a [\
    "",{text:"死亡交換",color:gold},{text:" | ",color:gray},\
    "歡迎 ",{"selector":"@s","color":"white"}," 首次來到",{text:"死亡交換",color:gold},"！" \
]
execute if score @s deathswap.leave_game matches 1 if score *language deathswap.setting matches 2 run tellraw @a [\
    "",{text:"死亡交換",color:gold},{text:" | ",color:gray},\
    "歡迎回到",{text:"死亡交換",color:gold},"，",{"selector":"@s","color":"white"},"！" \
]


#title
execute if score *language deathswap.setting matches 1 run title @s title {"text": "§6Death Swap"}
execute if score *language deathswap.setting matches 1 run title @s subtitle {"text": "§bMade by vipvincent"}

execute if score *language deathswap.setting matches 2 run title @s title {"text": "§6死亡交換"}
execute if score *language deathswap.setting matches 2 run title @s subtitle {"text": "§b製作：vipvincent"}

execute if score *language deathswap.setting matches 1.. run execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

#info
execute if score *language deathswap.setting matches 1.. run function deathswap:ui/info

#status 0
execute if score *game deathswap.status matches 0 run effect clear @a
execute if score *game deathswap.status matches 0 run clear @s
execute if score *game deathswap.status matches 0 run xp set @a 0 points
execute if score *game deathswap.status matches 0 run xp set @a 0 levels
execute if score *game deathswap.status matches 0 run tp @s @e[type=marker,tag=lobby,limit=1]
execute if score *game deathswap.status matches 0 run gamemode survival @s
execute if score *game deathswap.status matches 0 run team leave @s
execute if score *game deathswap.status matches 0 run tag @s remove player
execute if score *game deathswap.status matches 0 run tag @s remove spectator
execute if score *game deathswap.status matches 0 run tag @s remove eliminated
execute if score *game deathswap.status matches 0 run tag @s remove win
execute if score *game deathswap.status matches 0 run tag @s remove killer

execute if score *game deathswap.status matches 0 run function deathswap:lib/still/off

execute if score *game deathswap.status matches 0 run function deathswap:ui/page/update
execute if score *game deathswap.status matches 0 run scoreboard players set @s deathswap.ui_page 0

execute if score *game deathswap.status matches 0 run function deathswap:ui/click_admin

#status 2 play join
execute if score *game deathswap.status matches 2 if score *language deathswap.setting matches 1 if entity @s[tag=player] run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector":"@s","color":"white"},{"text": " §7auto-eliminated for leaving, now spectating."}]
execute if score *game deathswap.status matches 2 if score *language deathswap.setting matches 2 if entity @s[tag=player] run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector":"@s","color":"white"},{"text": " 因為中途離開遊戲而被自動淘汰，並加入旁觀。"}]
execute if score *game deathswap.status matches 2 run kill @s

#spectator
execute if score *game deathswap.status matches 1..3 run team join spectator @s
execute if score *game deathswap.status matches 1..3 run gamemode spectator @s
