#end/main

$scoreboard players set *end deathswap.status $(end)
scoreboard players set *end deathswap.timer 0
scoreboard players set *game deathswap.status 3

#bpssbar
bossbar set deathswap:swap_countdown visible false
bossbar set deathswap:arena visible false
bossbar set deathswap:gmchange visible false
bossbar set deathswap:random_effect visible false

# end status
# -1 all fail
#  0 solo win
#  1 red team win
#  2 blue team win
#  3 yellow team win
#  4 green team win
#  5 killer win

tellraw @a {"text": "-----------------------------------------------------"}

#all fail
execute if score *end deathswap.status matches -1 if score *language deathswap.setting matches 1 run title @a title {"text": "§dNo one survived!"}
execute if score *end deathswap.status matches -1 if score *language deathswap.setting matches 1 run title @a subtitle {"text": "§dOh my God!"}
execute if score *end deathswap.status matches -1 if score *language deathswap.setting matches 2 run title @a title {"text": "§d無人生還！"}
execute if score *end deathswap.status matches -1 if score *language deathswap.setting matches 2 run title @a subtitle {"text": "§d我的天呀！"}

execute if score *end deathswap.status matches -1 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§d================================"}]
execute if score *end deathswap.status matches -1 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§dNo one survived! No one wins!"}]
execute if score *end deathswap.status matches -1 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§d================================"}]
execute if score *end deathswap.status matches -1 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§d================================"}]
execute if score *end deathswap.status matches -1 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§d無人生還！沒有任何人獲勝！"}]
execute if score *end deathswap.status matches -1 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§d================================"}]

#solo win
execute if score *end deathswap.status matches 0 run tag @a[team=solo,tag=player] add win

execute if score *end deathswap.status matches 0 if score *language deathswap.setting matches 1 run title @a[tag=win] title {"text": "§6Win!"}
execute if score *end deathswap.status matches 0 if score *language deathswap.setting matches 2 run title @a[tag=win] title {"text": "§6獲勝！"}
execute if score *end deathswap.status matches 0 run title @a[tag=win] subtitle {"selector":"@a[tag=win]","color":"gold"}

execute if score *end deathswap.status matches 0 run title @a[tag=!win] title {"selector":"@a[tag=win]","color":"gold"}
execute if score *end deathswap.status matches 0 if score *language deathswap.setting matches 1 run title @a[tag=!win] subtitle {"text": "§6Won this victory!"}
execute if score *end deathswap.status matches 0 if score *language deathswap.setting matches 2 run title @a[tag=!win] subtitle {"text": "§6獲得了此次勝利！"}

execute if score *end deathswap.status matches 0 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§6================================"}]
execute if score *end deathswap.status matches 0 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§6Congratulations! "},{"selector":"@a[tag=win]","color": "gold"},{"text":" §6wins!"}]
execute if score *end deathswap.status matches 0 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§6================================"}]

execute if score *end deathswap.status matches 0 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§6================================"}]
execute if score *end deathswap.status matches 0 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§6恭喜！ "},{"selector":"@a[tag=win]","color": "gold"},{"text":" §6獲勝！"}]
execute if score *end deathswap.status matches 0 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§6================================"}]

#red team win
execute if score *end deathswap.status matches 1 run tag @a[team=red,tag=!killer] add win

execute if score *end deathswap.status matches 1 if score *language deathswap.setting matches 1 run title @a[tag=win] title {"text": "§6Win!"}
execute if score *end deathswap.status matches 1 if score *language deathswap.setting matches 1 run title @a[tag=!win] title {"text": "§cRed Team Wins!"}
execute if score *end deathswap.status matches 1 if score *language deathswap.setting matches 2 run title @a[tag=win] title {"text": "§6獲勝！"}
execute if score *end deathswap.status matches 1 if score *language deathswap.setting matches 2 run title @a[tag=!win] title {"text": "§c紅隊獲勝！"}
execute if score *end deathswap.status matches 1 run title @a subtitle [{"selector":"@a[tag=win]"}]

execute if score *end deathswap.status matches 1 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§c================================"}]
execute if score *end deathswap.status matches 1 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§cCongratulations! The Red Team Wins!"}]
execute if score *end deathswap.status matches 1 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector":"@a[tag=win]","color": "red"}]
execute if score *end deathswap.status matches 1 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§c================================"}]
execute if score *end deathswap.status matches 1 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§c================================"}]
execute if score *end deathswap.status matches 1 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§c恭喜！紅隊獲勝！"}]
execute if score *end deathswap.status matches 1 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector":"@a[tag=win]","color": "red"}]
execute if score *end deathswap.status matches 1 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§c================================"}]

#blue team win
execute if score *end deathswap.status matches 2 run tag @a[team=blue,tag=!killer] add win

execute if score *end deathswap.status matches 2 if score *language deathswap.setting matches 1 run title @a[tag=win] title {"text": "§6Win!"}
execute if score *end deathswap.status matches 2 if score *language deathswap.setting matches 1 run title @a[tag=!win] title {"text": "§9Blue Team Wins!"}
execute if score *end deathswap.status matches 2 if score *language deathswap.setting matches 2 run title @a[tag=win] title {"text": "§6獲勝！"}
execute if score *end deathswap.status matches 2 if score *language deathswap.setting matches 2 run title @a[tag=!win] title {"text": "§9藍隊獲勝！"}
execute if score *end deathswap.status matches 2 run title @a subtitle [{"selector":"@a[tag=win]"}]

execute if score *end deathswap.status matches 2 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§9================================"}]
execute if score *end deathswap.status matches 2 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§9Congratulations! The Blue Team wins!"}]
execute if score *end deathswap.status matches 2 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector":"@a[tag=win]","color": "blue"}]
execute if score *end deathswap.status matches 2 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§9================================"}]
execute if score *end deathswap.status matches 2 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§9================================"}]
execute if score *end deathswap.status matches 2 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§9恭喜！藍隊獲勝！"}]
execute if score *end deathswap.status matches 2 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector":"@a[tag=win]","color": "blue"}]
execute if score *end deathswap.status matches 2 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§9================================"}]

#yellow team win
execute if score *end deathswap.status matches 3 run tag @a[team=yellow,tag=!killer] add win

execute if score *end deathswap.status matches 3 if score *language deathswap.setting matches 1 run title @a[tag=win] title {"text": "§6Win!"}
execute if score *end deathswap.status matches 3 if score *language deathswap.setting matches 1 run title @a[tag=!win] title {"text": "§eYellow Team Wins!"}
execute if score *end deathswap.status matches 3 if score *language deathswap.setting matches 2 run title @a[tag=win] title {"text": "§6獲勝！"}
execute if score *end deathswap.status matches 3 if score *language deathswap.setting matches 2 run title @a[tag=!win] title {"text": "§e黃隊獲勝！"}
execute if score *end deathswap.status matches 3 run title @a subtitle [{"selector":"@a[tag=win]"}]

execute if score *end deathswap.status matches 3 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§e================================"}]
execute if score *end deathswap.status matches 3 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§eCongratulations! The yellow Team Wins!"}]
execute if score *end deathswap.status matches 3 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector":"@a[tag=win]","color": "yellow"}]
execute if score *end deathswap.status matches 3 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§e================================"}]
execute if score *end deathswap.status matches 3 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§e================================"}]
execute if score *end deathswap.status matches 3 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§e恭喜！黃隊獲勝！"}]
execute if score *end deathswap.status matches 3 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector":"@a[tag=win]","color": "yellow"}]
execute if score *end deathswap.status matches 3 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§e================================"}]

#green team win
execute if score *end deathswap.status matches 4 run tag @a[team=green,tag=!killer] add win

execute if score *end deathswap.status matches 4 if score *language deathswap.setting matches 1 run title @a[tag=win] title {"text": "§6Win!"}
execute if score *end deathswap.status matches 4 if score *language deathswap.setting matches 1 run title @a[tag=!win] title {"text": "§aGreen Team Wins!"}
execute if score *end deathswap.status matches 4 if score *language deathswap.setting matches 2 run title @a[tag=win] title {"text": "§6獲勝！"}
execute if score *end deathswap.status matches 4 if score *language deathswap.setting matches 2 run title @a[tag=!win] title {"text": "§a綠隊獲勝！"}
execute if score *end deathswap.status matches 4 run title @a subtitle [{"selector":"@a[tag=win]"}]

execute if score *end deathswap.status matches 4 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§a================================"}]
execute if score *end deathswap.status matches 4 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§aCongratulations! The Green Team Wins!"}]
execute if score *end deathswap.status matches 4 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector":"@a[tag=win]","color": "green"}]
execute if score *end deathswap.status matches 4 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§a================================"}]
execute if score *end deathswap.status matches 4 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§a================================"}]
execute if score *end deathswap.status matches 4 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§a恭喜！綠隊獲勝！"}]
execute if score *end deathswap.status matches 4 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector":"@a[tag=win]","color": "green"}]
execute if score *end deathswap.status matches 4 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§a================================"}]

#killer win
execute if score *end deathswap.status matches 5 run tag @a[tag=killer,tag=player] add win

execute if score *end deathswap.status matches 5 if score *language deathswap.setting matches 1 run title @a[tag=win] title {"text": "§6Win!"}
execute if score *end deathswap.status matches 5 if score *language deathswap.setting matches 1 run title @a[tag=!win] title {"text": "§4Killer wins!"}
execute if score *end deathswap.status matches 5 if score *language deathswap.setting matches 2 run title @a[tag=win] title {"text": "§6獲勝！"}
execute if score *end deathswap.status matches 5 if score *language deathswap.setting matches 2 run title @a[tag=!win] title {"text": "§4殺手獲勝！"}
execute if score *end deathswap.status matches 5 run title @a subtitle [{"selector":"@a[tag=win]","color": "dark_red"}]

execute if score *end deathswap.status matches 5 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§4================================"}]
execute if score *end deathswap.status matches 5 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§4Congratulations! The Killer "},{"selector":"@a[tag=win]","color": "dark_red"},{"text":" §4wins!"}]
execute if score *end deathswap.status matches 5 if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§4================================"}]
execute if score *end deathswap.status matches 5 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§4================================"}]
execute if score *end deathswap.status matches 5 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§4恭喜！殺手 "},{"selector":"@a[tag=win]","color": "dark_red"},{"text":" §4獲勝！"}]
execute if score *end deathswap.status matches 5 if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§4================================"}]

#sound & pqrticle
execute as @a[tag=!win] at @s run playsound entity.wither.death master @s ~ ~ ~ 99999999999999999999999999999999999999 1 1
execute as @a[tag=win] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 99999999999999999999999999999999999999 1 1
execute as @a[tag=win] at @s run particle end_rod ~ ~1 ~ 0 0 0 0.25 40 force

#add_score
scoreboard players add @a[tag=win,tag=!player] deathswap.win_score 1
scoreboard players add @a[tag=win,tag=player,tag=!killer] deathswap.win_score 2
scoreboard players add @a[tag=win,tag=player,tag=killer] deathswap.win_score 3

#score_text
execute if score *language deathswap.setting matches 1 unless score *end deathswap.status matches -1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "Scores: "}]
execute if score *language deathswap.setting matches 1 as @a[tag=win,tag=player,tag=killer] run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector":"@s"},{"text":" +3"}]
execute if score *language deathswap.setting matches 1 as @a[tag=win,tag=player,tag=!killer] run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector":"@s"},{"text":" +2"}]
execute if score *language deathswap.setting matches 1 as @a[tag=win,tag=!player] run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"selector":"@s"},{"text":" +1"}]

execute if score *language deathswap.setting matches 2 unless score *end deathswap.status matches -1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "獲得分數："}]
execute if score *language deathswap.setting matches 2 as @a[tag=win,tag=player,tag=killer] run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector":"@s"},{"text":" +3"}]
execute if score *language deathswap.setting matches 2 as @a[tag=win,tag=player,tag=!killer] run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector":"@s"},{"text":" +2"}]
execute if score *language deathswap.setting matches 2 as @a[tag=win,tag=!player] run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"selector":"@s"},{"text":" +1"}]

tellraw @a {"text": "-----------------------------------------------------"}