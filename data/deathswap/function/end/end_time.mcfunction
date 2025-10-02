execute if score end deathswap.timer matches ..299 run scoreboard players add end deathswap.timer 1

execute if score end deathswap.timer matches 100 run function deathswap:end/end_text
execute if score end deathswap.timer matches 100 if score language deathswap.setting matches 1 run title @a title {"text": "§bGame over!"}
execute if score end deathswap.timer matches 100 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§bThanks for playing~"}
execute if score end deathswap.timer matches 100 if score language deathswap.setting matches 2 run title @a title {"text": "§b遊戲結束！"}
execute if score end deathswap.timer matches 100 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§b感謝你的遊玩~"}

execute if score end deathswap.timer matches 200 if score language deathswap.setting matches 1 run title @a title {"text": "§6Death Swap"}
execute if score end deathswap.timer matches 200 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§bMade by vipvincent"}
execute if score end deathswap.timer matches 200 if score language deathswap.setting matches 2 run title @a title {"text": "§6死亡交換"}
execute if score end deathswap.timer matches 200 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§b製作：早安豆江 vipvincent"}

#gamemode
gamemode survival @a[tag=player]
gamemode spectator @a[tag=!player]

function deathswap:play/inventory_limit

#reset
execute if score end deathswap.timer matches 300 run function deathswap:reset