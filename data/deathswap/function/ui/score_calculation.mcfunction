#en
execute if score *language deathswap.setting matches 1 run tellraw @s [{"text": ">>>>> Score Calculation Rules <<<<<",color:yellow}]
execute if score *language deathswap.setting matches 1 run tellraw @s ""
execute if score *language deathswap.setting matches 1 run tellraw @s [{"text": "+1 - Only Win",color:gray}]
execute if score *language deathswap.setting matches 1 run tellraw @s [{"text": "+2 - Win and Survive",color:gray}]
execute if score *language deathswap.setting matches 1 run tellraw @s [{"text": "+3 - Killer Win",color:gray}]
execute if score *language deathswap.setting matches 1 run tellraw @s ""

#中文
execute if score *language deathswap.setting matches 2 run tellraw @s [{"text": ">>>>> 分數計算規則 <<<<<",color:gray}]
execute if score *language deathswap.setting matches 2 run tellraw @s ""
execute if score *language deathswap.setting matches 2 run tellraw @s [{"text": "+1 - 僅獲勝",color:gray}]
execute if score *language deathswap.setting matches 2 run tellraw @s [{"text": "+2 - 獲勝並存活",color:gray}]
execute if score *language deathswap.setting matches 2 run tellraw @s [{"text": "+3 - 殺手獲勝",color:gray}]
execute if score *language deathswap.setting matches 2 run tellraw @s ""


execute as @s at @s run playsound ui.button.click master @s ~ ~ ~ 1

function deathswap:ui/page/update