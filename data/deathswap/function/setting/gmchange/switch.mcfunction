scoreboard players add *gmchange deathswap.setting 1
execute if score *gmchange deathswap.setting matches 2 run scoreboard players set *gmchange deathswap.setting 0

#en
execute if score *language deathswap.setting matches 1 if score *gmchange deathswap.setting matches 0 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fGame Mode Auto Switch is set §cDisable"}]
execute if score *language deathswap.setting matches 1 if score *gmchange deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fGame Mode Auto Switch is set §aEnabled"}]

#中文
execute if score *language deathswap.setting matches 2 if score *gmchange deathswap.setting matches 0 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f遊戲模式自動切換已§c關閉"}]
execute if score *language deathswap.setting matches 2 if score *gmchange deathswap.setting matches 1 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f遊戲模式自動切換已§a開啟"}]

#tip
execute if score *gmchange deathswap.setting matches 1 if score *language deathswap.setting matches 1 run tellraw @a [\
    {text:"",color:gray},\
    "(Note: It is recommended to restrict certain items,","\n",\
    " such as Totem of Undying, Enchanted/Golden Apple,","\n",\
    " Potion, and Suspicious Stew.)" \
]
execute if score *gmchange deathswap.setting matches 1 if score *language deathswap.setting matches 2 run tellraw @a [\
    {text:"(註：建議自行限制物品，如：不死圖騰、附魔/金蘋果、藥水、可疑的燉湯)",color:gray},\
]

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~

function deathswap:ui/page/update