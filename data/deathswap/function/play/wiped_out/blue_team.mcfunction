#wiped_out/blue_team
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§9Red Team §rwiped out!"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§9藍隊§r全滅！"}]

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

scoreboard players set *team_blue deathswap.status 0

#adv
advancement grant @a[team=blue] only deathswap:main/criteria/wiped_out