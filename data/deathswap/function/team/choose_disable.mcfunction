function deathswap:ui/page/update

execute if score *language deathswap.setting matches 1 run tellraw @s {"text":"Team Selection is not yet enabled! To enable it,\n please open your inventory and go to the Team page.",color:red}
execute if score *language deathswap.setting matches 2 run tellraw @s {"text":"自由選隊尚未啟用！如要啟用，請打開物品欄並前往隊伍頁面。",color:red}

execute at @s run playsound entity.villager.no master @s ~ ~ ~