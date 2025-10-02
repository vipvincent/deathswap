function deathswap:ui/page/update

#check lobby
execute unless entity @e[type=marker,tag=lobby] if score language deathswap.setting matches 1 run tellraw @s [{"text": "§cThe lobby has not been set up yet!"}]
execute unless entity @e[type=marker,tag=lobby] if score language deathswap.setting matches 2 run tellraw @s [{"text": "§c尚未設置大廳！"}]
execute unless entity @e[type=marker,tag=lobby] at @s run playsound entity.villager.no master @s ~ ~ ~
execute unless entity @e[type=marker,tag=lobby] run return fail

#check player mode/solo_team
execute if score mode deathswap.setting matches 1 unless score solo_count deathswap.count matches 2.. if score language deathswap.setting matches 1 run tellraw @s [{"text": "§cAt least two players in Game Team to start the game!"}]
execute if score mode deathswap.setting matches 1 unless score solo_count deathswap.count matches 2.. if score language deathswap.setting matches 2 run tellraw @s [{"text": "§c至少需要兩位玩家在遊戲隊伍裡才能開始遊戲！"}]
execute if score mode deathswap.setting matches 1 unless score solo_count deathswap.count matches 2.. at @s run playsound entity.villager.no master @s ~ ~ ~
execute if score mode deathswap.setting matches 1 unless score solo_count deathswap.count matches 2.. run return fail

#check player mode/team_battle
execute if score mode deathswap.setting matches 2 unless score team_count deathswap.count matches 2.. if score language deathswap.setting matches 1 run tellraw @s [{"text": "§cAt least two teams need players to start game!"}]
execute if score mode deathswap.setting matches 2 unless score team_count deathswap.count matches 2.. if score language deathswap.setting matches 2 run tellraw @s [{"text": "§c至少需要兩隊有玩家才能開始遊戲！"}]
execute if score mode deathswap.setting matches 2 unless score team_count deathswap.count matches 2.. at @s run playsound entity.villager.no master @s ~ ~ ~
execute if score mode deathswap.setting matches 2 unless score team_count deathswap.count matches 2.. run return fail

#ok
function deathswap:wait/wait_start