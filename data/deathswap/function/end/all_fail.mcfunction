execute if score language deathswap.setting matches 1 run title @a title {"text": "§dNo one survived!"}
execute if score language deathswap.setting matches 1 run title @a subtitle {"text": "§dOh my God!"}

execute if score language deathswap.setting matches 2 run title @a title {"text": "§d無人生還！"}
execute if score language deathswap.setting matches 2 run title @a subtitle {"text": "§d我的天呀！"}

tellraw @a {"text": "-----------------------------------------------------"}
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§d================================"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§dNo one survived! No team wins!"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§d================================"}]

execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§d================================"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§d無人生還！沒有任何隊伍獲勝！"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§d================================"}]

scoreboard players set win deathswap.status 0
function deathswap:end/the_end