scoreboard players set difficulty deathswap.setting 2
scoreboard players set time_set deathswap.setting 0
time set day
scoreboard players set weather deathswap.setting 0
weather clear
scoreboard players set time_cycle deathswap.setting 0
scoreboard players set weather_cycle deathswap.setting 0
scoreboard players set mobspawn deathswap.setting 0
scoreboard players set hp_natural deathswap.setting 0
scoreboard players set saturation deathswap.setting 0
scoreboard players set night_vision deathswap.setting 0

scoreboard players set tool deathswap.setting 0
scoreboard players set armor deathswap.setting 0
scoreboard players set hp_adj deathswap.setting 20
execute as @a run attribute @s minecraft:max_health base set 20
scoreboard players set swap_time deathswap.setting 2
scoreboard players set swap_bossbar deathswap.setting 0
scoreboard players set swap_invincible deathswap.setting 0
scoreboard players set swap_warn deathswap.setting 0
scoreboard players set furnace deathswap.setting 0
scoreboard players set inventory_limit deathswap.setting 37
scoreboard players set start_pos deathswap.setting 0

scoreboard players set team_collisionrule deathswap.setting 0
scoreboard players set team_friendlyfire deathswap.setting 0

function deathswap:ui/page/update

execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fMain game settings have been §dreset"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f遊戲主設定已§d重設"}]

execute if score language deathswap.setting matches 1.. as @a at @s run playsound ui.button.click master @s ~ ~ ~