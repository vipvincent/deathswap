#wiped_out/red_team
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§cRed Team §rwiped out!"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§c紅隊§r全滅！"}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

scoreboard players set *team_red deathswap.status 0