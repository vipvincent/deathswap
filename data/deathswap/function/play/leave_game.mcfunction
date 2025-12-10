#play/leave_game

#text
execute if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text":"Someone leave the game, will be eliminated!"}]
execute if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text":"似乎有人中途離開遊戲，該玩家將被自動淘汰！"}]
