#gmchange
# 0 survival
# 1 creative

#gamemode
execute if score gmchange_wait deathswap.timer matches 1.. run gamemode survival @a[tag=player]
execute if score gmchange_wait deathswap.timer matches ..0 if score gmchange deathswap.status matches 0 run gamemode survival @a[tag=player]
execute if score gmchange_wait deathswap.timer matches ..0 if score gmchange deathswap.status matches 1 run gamemode creative @a[tag=player]

# gmchange bossbar
execute if score language deathswap.setting matches 1 if score gmchange_wait deathswap.timer matches 1.. run bossbar set deathswap:gmchange name [{"text":"§6Game Mode Change Pause: "},{"score":{"name": "gmchange_wait","objective": "deathswap.timer"},"color": "gold"},"§6s"]
execute if score language deathswap.setting matches 1 if score gmchange_wait deathswap.timer matches ..0 if score gmchange deathswap.status matches 0 run bossbar set deathswap:gmchange name [{"text": "§aGame Mode Change in "},{"score":{"name": "gmchange","objective": "deathswap.timer"},"color": "gold"},{"text": "§6s §ato Creative"}]
execute if score language deathswap.setting matches 1 if score gmchange_wait deathswap.timer matches ..0 if score gmchange deathswap.status matches 1 run bossbar set deathswap:gmchange name [{"text": "§cGame Mode Change in "},{"score":{"name": "gmchange","objective": "deathswap.timer"},"color": "gold"},{"text": "§6s §cto Survival"}]

execute if score language deathswap.setting matches 2 if score gmchange_wait deathswap.timer matches 1.. run bossbar set deathswap:gmchange name [{"text":"§6遊戲模式切換暫停："},{"score":{"name": "gmchange_wait","objective": "deathswap.timer"},"color": "gold"},"§6秒"]
execute if score language deathswap.setting matches 2 if score gmchange_wait deathswap.timer matches ..0 if score gmchange deathswap.status matches 0 run bossbar set deathswap:gmchange name [{"text": "§a遊戲模式將於"},{"score":{"name": "gmchange","objective": "deathswap.timer"},"color": "gold"},{"text": "§6秒§a後切換至創造模式"}]
execute if score language deathswap.setting matches 2 if score gmchange_wait deathswap.timer matches ..0 if score gmchange deathswap.status matches 1 run bossbar set deathswap:gmchange name [{"text": "§c遊戲模式將於"},{"score":{"name": "gmchange","objective": "deathswap.timer"},"color": "gold"},{"text": "§6秒§c後切換至生存模式"}]

execute if score gmchange_wait deathswap.timer matches 1.. run bossbar set deathswap:gmchange color yellow
execute if score gmchange_wait deathswap.timer matches 1.. run bossbar set deathswap:gmchange style progress
execute if score gmchange_wait deathswap.timer matches ..0 if score gmchange deathswap.status matches 0 run bossbar set deathswap:gmchange color green
execute if score gmchange_wait deathswap.timer matches ..0 if score gmchange deathswap.status matches 0 run bossbar set deathswap:gmchange style notched_10
execute if score gmchange_wait deathswap.timer matches ..0 if score gmchange deathswap.status matches 1 run bossbar set deathswap:gmchange color red
execute if score gmchange_wait deathswap.timer matches ..0 if score gmchange deathswap.status matches 1 run bossbar set deathswap:gmchange style notched_6

# gmchange to creative
execute if score gmchange_wait deathswap.timer matches ..0 if score gmchange deathswap.status matches 0 if score gmchange deathswap.timer matches 0 run function deathswap:play/gmchange/creative
# gmchange to survival
execute if score gmchange_wait deathswap.timer matches ..0 if score gmchange deathswap.status matches 1 if score gmchange deathswap.timer matches 0 run function deathswap:play/gmchange/survival

#gmchagne resume
execute if score gmchange_wait deathswap.timer matches 0 run function deathswap:play/gmchange/resume

#bossbar max/value
execute if score gmchange_wait deathswap.timer matches ..0 if score gmchange deathswap.status matches 0 store result bossbar deathswap:gmchange max run scoreboard players get gmchange.survival_time deathswap.setting
execute if score gmchange_wait deathswap.timer matches ..0 if score gmchange deathswap.status matches 1 store result bossbar deathswap:gmchange max run scoreboard players get gmchange.creative_time deathswap.setting
execute if score gmchange_wait deathswap.timer matches ..0 store result bossbar deathswap:gmchange value run scoreboard players get gmchange deathswap.timer

execute if score gmchange_wait deathswap.timer matches 1.. run bossbar set deathswap:gmchange max 5
execute if score gmchange_wait deathswap.timer matches 1.. store result bossbar deathswap:gmchange value run scoreboard players get gmchange_wait deathswap.timer