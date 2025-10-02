#count
scoreboard players set solo_count deathswap.count 0
scoreboard players set red_count deathswap.count 0
scoreboard players set blue_count deathswap.count 0
scoreboard players set yellow_count deathswap.count 0
scoreboard players set green_count deathswap.count 0

scoreboard players set player_count deathswap.count 0
scoreboard players set team_count deathswap.count 0

#for prepare(0)
execute if score game deathswap.status matches 0 as @a[team=solo] run scoreboard players add solo_count deathswap.count 1
execute if score game deathswap.status matches 0 as @a[team=red] run scoreboard players add red_count deathswap.count 1
execute if score game deathswap.status matches 0 as @a[team=blue] run scoreboard players add blue_count deathswap.count 1
execute if score game deathswap.status matches 0 as @a[team=yellow] run scoreboard players add yellow_count deathswap.count 1
execute if score game deathswap.status matches 0 as @a[team=green] run scoreboard players add green_count deathswap.count 1

execute if score game deathswap.status matches 0 as @a[team=!spectator] run scoreboard players add player_count deathswap.count 1
execute if score game deathswap.status matches 0 if entity @a[team=red] run scoreboard players add team_count deathswap.count 1
execute if score game deathswap.status matches 0 if entity @a[team=blue] run scoreboard players add team_count deathswap.count 1
execute if score game deathswap.status matches 0 if entity @a[team=yellow] run scoreboard players add team_count deathswap.count 1
execute if score game deathswap.status matches 0 if entity @a[team=green] run scoreboard players add team_count deathswap.count 1

#for wait(1) and play(2)
execute if score game deathswap.status matches 1.. as @a[team=solo,tag=player] run scoreboard players add solo_count deathswap.count 1
execute if score game deathswap.status matches 1.. as @a[team=red,tag=player] run scoreboard players add red_count deathswap.count 1
execute if score game deathswap.status matches 1.. as @a[team=blue,tag=player] run scoreboard players add blue_count deathswap.count 1
execute if score game deathswap.status matches 1.. as @a[team=yellow,tag=player] run scoreboard players add yellow_count deathswap.count 1
execute if score game deathswap.status matches 1.. as @a[team=green,tag=player] run scoreboard players add green_count deathswap.count 1

execute if score game deathswap.status matches 1.. as @a[tag=player] run scoreboard players add player_count deathswap.count 1
execute if score game deathswap.status matches 1.. if entity @a[team=red,tag=player] run scoreboard players add team_count deathswap.count 1
execute if score game deathswap.status matches 1.. if entity @a[team=blue,tag=player] run scoreboard players add team_count deathswap.count 1
execute if score game deathswap.status matches 1.. if entity @a[team=yellow,tag=player] run scoreboard players add team_count deathswap.count 1
execute if score game deathswap.status matches 1.. if entity @a[team=green,tag=player] run scoreboard players add team_count deathswap.count 1
