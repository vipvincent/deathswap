#en
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§e>>>>> Score calculation rules <<<<<"}]
execute if score language deathswap.setting matches 1 run tellraw @a ""
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§7+1   Only win"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§7+2   Win and survive"}]
execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§7+2   Killer win"}]
execute if score language deathswap.setting matches 1 run tellraw @a ""

#中文
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§e>>>>> 分數計算規則 <<<<<"}]
execute if score language deathswap.setting matches 2 run tellraw @a ""
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§7+1   僅獲勝"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§7+2   獲勝並存活"}]
execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§7+3   殺手獲勝"}]
execute if score language deathswap.setting matches 2 run tellraw @a ""


execute as @s at @s run playsound ui.button.click master @s ~ ~ ~ 1

function deathswap:ui/page/update