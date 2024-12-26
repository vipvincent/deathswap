execute if score end deathswap.timer matches ..299 run scoreboard players add end deathswap.timer 1

execute if score end deathswap.timer matches 100 if score language deathswap.setting matches 1 run title @a title {"text": "§bGame over!"}
execute if score end deathswap.timer matches 100 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§bThanks for playing~"}
execute if score end deathswap.timer matches 100 if score language deathswap.setting matches 2 run title @a title {"text": "§b遊戲結束！"}
execute if score end deathswap.timer matches 100 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§b感謝你的遊玩~"}

execute if score end deathswap.timer matches 200 if score language deathswap.setting matches 1 run title @a title {"text": "§6Death Swap"}
execute if score end deathswap.timer matches 200 if score language deathswap.setting matches 1 run title @a subtitle {"text": "§bMade by vipvincent"}
execute if score end deathswap.timer matches 200 if score language deathswap.setting matches 2 run title @a title {"text": "§6死亡交換"}
execute if score end deathswap.timer matches 200 if score language deathswap.setting matches 2 run title @a subtitle {"text": "§b製作：早安豆江 vipvincent"}

#actionbar
execute if score language deathswap.setting matches 1 if score win deathswap.status matches 0 run title @a actionbar {"text": "§dNo team wins§7 | §bThanks for playing~"}
execute if score language deathswap.setting matches 1 if score win deathswap.status matches 1 run title @a actionbar {"text": "§cRed team wins§7 | §bThanks for playing~"}
execute if score language deathswap.setting matches 1 if score win deathswap.status matches 2 run title @a actionbar {"text": "§9Blue team wins§7 | §bThanks for playing~"}
execute if score language deathswap.setting matches 1 if score win deathswap.status matches 3 run title @a actionbar {"text": "§eYellow team wins§7 | §bThanks for playing~"}
execute if score language deathswap.setting matches 1 if score win deathswap.status matches 4 run title @a actionbar {"text": "§aGreen team wins§7 | §bThanks for playing~"}
execute if score language deathswap.setting matches 1 if score win deathswap.status matches 5 run title @a actionbar [{"text": "§4Killer "},{"selector":"@a[tag=win]","color": "dark_red"},{"text":" §4wins§7 | §bThanks for playing~"}]

execute if score language deathswap.setting matches 2 if score win deathswap.status matches 0 run title @a actionbar {"text": "§d沒有任何隊伍獲勝§7 | §b感謝你的遊玩~"}
execute if score language deathswap.setting matches 2 if score win deathswap.status matches 1 run title @a actionbar {"text": "§c紅隊獲勝§7 | §b感謝你的遊玩~"}
execute if score language deathswap.setting matches 2 if score win deathswap.status matches 2 run title @a actionbar {"text": "§9藍隊獲勝§7 | §b感謝你的遊玩~"}
execute if score language deathswap.setting matches 2 if score win deathswap.status matches 3 run title @a actionbar {"text": "§e黃隊獲勝§7 | §b感謝你的遊玩~"}
execute if score language deathswap.setting matches 2 if score win deathswap.status matches 4 run title @a actionbar {"text": "§a綠隊獲勝§7 | §b感謝你的遊玩~"}
execute if score language deathswap.setting matches 2 if score win deathswap.status matches 5 run title @a actionbar [{"text": "§4殺手 "},{"selector":"@a[tag=win]","color": "dark_red"},{"text":" §4獲勝§7 | §b感謝你的遊玩~"}]

gamemode survival @a[tag=player]
gamemode spectator @a[tag=!player]

function deathswap:play/inventory_limit

#reset
execute if score end deathswap.timer matches 300 run function deathswap:reset