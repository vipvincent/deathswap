function deathswap:ui/page/update

execute unless entity @s[type=armor_stand,tag=setlobby] if score language deathswap.setting matches 1 run tellraw @s [{"text": "Need to be placed on the block!","color":"red" }]
execute unless entity @s[type=armor_stand,tag=setlobby] if score language deathswap.setting matches 2 run tellraw @s [{"text": "需要放置在方塊上！","color":"red" }]
execute unless entity @s[type=armor_stand,tag=setlobby] as @s at @s run playsound entity.villager.no master @s ~ ~ ~
execute unless entity @s[type=armor_stand,tag=setlobby] run return fail

kill @e[tag=setlobby]

execute as @e[type=marker,tag=lobby] at @s run forceload remove ~ ~

kill @e[type=marker,tag=lobby]
summon marker ~ ~ ~ {Tags:["lobby"]}
execute as @e[type=marker,tag=lobby] at @s run forceload add ~ ~

#text 
execute store result score lobby.x deathswap.setting run data get entity @e[type=marker,tag=lobby,limit=1] Pos[0]
execute store result score lobby.y deathswap.setting run data get entity @e[type=marker,tag=lobby,limit=1] Pos[1]
execute store result score lobby.z deathswap.setting run data get entity @e[type=marker,tag=lobby,limit=1] Pos[2]

execute if dimension overworld if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§eGame lobby §fset at "},[{"text": "Overworld ","color": "green"},"[",{"score":{"name": "lobby.x","objective": "deathswap.setting"}}," ",{"score":{"name": "lobby.y","objective": "deathswap.setting"}}," ",{"score":{"name": "lobby.z","objective": "deathswap.setting"}},"]"]]
execute if dimension the_nether if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§eGame lobby §fset at "},[{"text": "Nether ","color": "red"},"[",{"score":{"name": "lobby.x","objective": "deathswap.setting"}}," ",{"score":{"name": "lobby.y","objective": "deathswap.setting"}}," ",{"score":{"name": "lobby.z","objective": "deathswap.setting"}},"]"]]
execute if dimension the_end if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§eGame lobby §fset at "},[{"text": "The End ","color": "dark_purple"},"[",{"score":{"name": "lobby.x","objective": "deathswap.setting"}}," ",{"score":{"name": "lobby.y","objective": "deathswap.setting"}}," ",{"score":{"name": "lobby.z","objective": "deathswap.setting"}},"]"]]
execute unless dimension overworld unless dimension the_nether unless dimension the_end if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§eGame lobby §fset at "},{"text": "Other","color": "yellow","extra":[" [",{"score":{"name": "lobby.x","objective": "deathswap.setting"}}," ",{"score":{"name": "lobby.y","objective": "deathswap.setting"}}," ",{"score":{"name": "lobby.z","objective": "deathswap.setting"}},"]"]}]

execute if dimension overworld if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§e遊戲大廳§f已設置在"},[{"text": "主世界","color": "green"},"[",{"score":{"name": "lobby.x","objective": "deathswap.setting"}}," ",{"score":{"name": "lobby.y","objective": "deathswap.setting"}}," ",{"score":{"name": "lobby.z","objective": "deathswap.setting"}},"]"]]
execute if dimension the_nether if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§e遊戲大廳§f已設置在"},[{"text": "地獄","color": "red"},"[",{"score":{"name": "lobby.x","objective": "deathswap.setting"}}," ",{"score":{"name": "lobby.y","objective": "deathswap.setting"}}," ",{"score":{"name": "lobby.z","objective": "deathswap.setting"}},"]"]]
execute if dimension the_end if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§e遊戲大廳§f已設置在"},[{"text": "終界","color": "dark_purple"},"[",{"score":{"name": "lobby.x","objective": "deathswap.setting"}}," ",{"score":{"name": "lobby.y","objective": "deathswap.setting"}}," ",{"score":{"name": "lobby.z","objective": "deathswap.setting"}},"]"]]
execute unless dimension overworld unless dimension the_nether unless dimension the_end if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§e遊戲大廳§f已設置在"},{"text": "其他","color": "yellow","extra":["[",{"score":{"name": "lobby.x","objective": "deathswap.setting"}}," ",{"score":{"name": "lobby.y","objective": "deathswap.setting"}}," ",{"score":{"name": "lobby.z","objective": "deathswap.setting"}},"]"]}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

scoreboard players reset lobby.x deathswap.setting
scoreboard players reset lobby.y deathswap.setting
scoreboard players reset lobby.z deathswap.setting