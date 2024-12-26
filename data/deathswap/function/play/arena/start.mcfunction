#bossbar
execute if score arena.shrink deathswap.setting matches 1 run bossbar set deathswap:arena visible false
bossbar set deathswap:swap_countdown visible true
execute if score gmchange deathswap.setting matches 1 run bossbar set deathswap:gmchange visible true

#collisionrule
execute if score team_collisionrule deathswap.setting matches 0 run team modify red collisionRule always
execute if score team_collisionrule deathswap.setting matches 0 run team modify blue collisionRule always
execute if score team_collisionrule deathswap.setting matches 0 run team modify yellow collisionRule always
execute if score team_collisionrule deathswap.setting matches 0 run team modify green collisionRule always

execute if score team_collisionrule deathswap.setting matches 1 run team modify red collisionRule pushOwnTeam
execute if score team_collisionrule deathswap.setting matches 1 run team modify blue collisionRule pushOwnTeam
execute if score team_collisionrule deathswap.setting matches 1 run team modify yellow collisionRule pushOwnTeam
execute if score team_collisionrule deathswap.setting matches 1 run team modify green collisionRule pushOwnTeam

gamerule maxEntityCramming 24

#text
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fThe arena begins now!"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f競技場現在開始！"}]

execute as @a at @s run playsound block.end_portal.spawn master @s ~ ~ ~

#attribute
execute as @a[tag=player] run attribute @s minecraft:jump_strength base set 0.41999998688697815
execute as @a[tag=player] run attribute @s minecraft:movement_speed base set 0.10000000149011612
execute as @a[tag=player] run attribute @s minecraft:block_interaction_range base set 4.5
execute as @a[tag=player] run attribute @s minecraft:entity_interaction_range base set 3.0

#status
scoreboard players set arena deathswap.status 2

#shrink 
execute store result score arena.border deathswap.status run scoreboard players get arena.border deathswap.setting
execute if score arena.shrink deathswap.setting matches 0 run function deathswap:play/arena/shrink_wait