#text
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fGame Over! Thanks for playing!"}]
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§6Death Swap §fMade by §bvipvincent"}]

execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f遊戲結束！感謝遊玩！"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§6死亡交換§f是由§bvipvincent§f製作"}]

#statistics
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fPlay time of this game: "},{"score":{"name": "*play_time","objective": "deathswap.timer"},"color": "light_purple"},{"text": "§ds"}]
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fTotal Swap Round: "},{"score":{"name": "*swap_count","objective": "deathswap.status"},"color": "light_purple"}]


execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f本次遊玩時間："},{"score":{"name": "*play_time","objective": "deathswap.timer"},"color": "light_purple"},{"text": "§d秒"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f總共交換回合："},{"score":{"name": "*swap_count","objective": "deathswap.status"},"color": "light_purple"}]

#killer
execute if entity @a[tag=killer] if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fKiller: "},{"selector":"@a[tag=killer]","color": "dark_red"}]
execute if entity @a[tag=killer] if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f殺手："},{"selector":"@a[tag=killer]","color": "dark_red"}]

#reset
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§7The game will be reset at a later date!"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§7遊戲將在稍後重製！"}]

