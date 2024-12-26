scoreboard players set win deathswap.status 5
tag @s add win

#text
execute if score language deathswap.setting matches 1 run title @s title {"text": "§6Win!"}
execute if score language deathswap.setting matches 1 run title @a[tag=!win] title {"text": "§4Killer wins!"}
execute if score language deathswap.setting matches 2 run title @s title {"text": "§6獲勝！"}
execute if score language deathswap.setting matches 2 run title @a[tag=!win] title {"text": "§4殺手獲勝！"}

title @a subtitle [{"selector":"@s","color": "dark_red"}]

tellraw @a {"text": "---------------------------------------------------"}
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§4================================"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§4Congratulations! The Killer "},{"selector":"@a[tag=win]","color": "dark_red"},{"text":" §4wins!"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§4================================"}]

execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§4================================"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§4恭喜！殺手 "},{"selector":"@a[tag=win]","color": "dark_red"},{"text":" §4獲勝！"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§4================================"}]

function deathswap:end/the_end
