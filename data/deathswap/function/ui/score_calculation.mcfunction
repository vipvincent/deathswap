#en
execute if score *language deathswap.setting matches 1 run tellraw @s [{"text": "§e>>>>> Score Calculation Rules <<<<<"}]
execute if score *language deathswap.setting matches 1 run tellraw @s ""
execute if score *language deathswap.setting matches 1 run tellraw @s [{"text": "§7+1 - Only Win"}]
execute if score *language deathswap.setting matches 1 run tellraw @s [{"text": "§7+2 - Win and Survive"}]
execute if score *language deathswap.setting matches 1 run tellraw @s [{"text": "§7+3 - Killer Win"}]
execute if score *language deathswap.setting matches 1 run tellraw @s ""

#中文
execute if score *language deathswap.setting matches 2 run tellraw @s [{"text": "§e>>>>> 分數計算規則 <<<<<"}]
execute if score *language deathswap.setting matches 2 run tellraw @s ""
execute if score *language deathswap.setting matches 2 run tellraw @s [{"text": "§7+1 - 僅獲勝"}]
execute if score *language deathswap.setting matches 2 run tellraw @s [{"text": "§7+2 - 獲勝並存活"}]
execute if score *language deathswap.setting matches 2 run tellraw @s [{"text": "§7+3 - 殺手獲勝"}]
execute if score *language deathswap.setting matches 2 run tellraw @s ""


execute as @s at @s run playsound ui.button.click master @s ~ ~ ~ 1

function deathswap:ui/page/update