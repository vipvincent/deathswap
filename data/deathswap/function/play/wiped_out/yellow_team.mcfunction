#wiped_out/yellow_team
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§eYellow Team §rwiped out!"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§e黃隊§r全滅！"}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

scoreboard players set *team_yellow deathswap.status 0

#adv
advancement grant @a[team=yellow] only deathswap:main/criteria/wiped_out