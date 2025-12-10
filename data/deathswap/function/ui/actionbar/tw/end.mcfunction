#actionbar/tw/end
execute if score *end deathswap.status matches -1 run title @a actionbar {"text": "§d沒有任何人獲勝§7 | §b感謝你的遊玩~"}
execute if score *end deathswap.status matches 0 run title @a actionbar [{"selector":"@a[tag=win]","color": "gold"},{"text":" §6獲勝§7 | §b感謝你的遊玩~"}]
execute if score *end deathswap.status matches 1 run title @a actionbar {"text": "§c紅隊獲勝§7 | §b感謝你的遊玩~"}
execute if score *end deathswap.status matches 2 run title @a actionbar {"text": "§9藍隊獲勝§7 | §b感謝你的遊玩~"}
execute if score *end deathswap.status matches 3 run title @a actionbar {"text": "§e黃隊獲勝§7 | §b感謝你的遊玩~"}
execute if score *end deathswap.status matches 4 run title @a actionbar {"text": "§a綠隊獲勝§7 | §b感謝你的遊玩~"}
execute if score *end deathswap.status matches 5 run title @a actionbar [{"text": "§4殺手 "},{"selector":"@a[tag=win]","color": "dark_red"},{"text":" §4獲勝§7 | §b感謝你的遊玩~"}]
