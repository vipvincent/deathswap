#prepare/tpall_here

tp @a @s
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fTeleport §eAll Players §fto "},{"selector":"@s","color":"white"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f傳送§e所有玩家§f到 "},{"selector":"@s","color":"white"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
function deathswap:ui/page/update