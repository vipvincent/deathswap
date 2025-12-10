#prepare/tpall_lobby

#return
execute unless entity @e[type=marker,tag=lobby] if score *language deathswap.setting matches 1 run tellraw @s [{"text": "§cThe Game Lobby has not been set up yet!"}]
execute unless entity @e[type=marker,tag=lobby] if score *language deathswap.setting matches 2 run tellraw @s [{"text": "§c尚未設置遊戲大廳！"}]
execute unless entity @e[type=marker,tag=lobby] at @s run playsound entity.villager.no master @s ~ ~ ~
execute unless entity @e[type=marker,tag=lobby] run return fail

#main
tp @a @e[type=marker,tag=lobby,limit=1]
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fTeleport §eAll Players §fto Game Lobby"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f傳送§e所有玩家§f到遊戲大廳"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
function deathswap:ui/page/update