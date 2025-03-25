tellraw @s {"text": "§8§m+--------------------***--------------------+"}

#en
execute if score language deathswap.setting matches 1 run tellraw @s [{"text": "§r§fThis world/server use §6Death Swap"}," | ",{"text": "§r§fVersion: "},{"nbt": "version","storage": "deathswap:status","color": "yellow"}]
execute if score language deathswap.setting matches 1 run tellraw @s [{"text":"§r§fMade By: §bvipvincent"}," | ",{"text":"§r§fOriginal Concept: "},{"text":"SethBling","color":"red","click_event": {"action": "open_url","url": "https://www.youtube.com/watch?v=r5rEaHPt6mw"}}]

#中文
execute if score language deathswap.setting matches 2 run tellraw @s [{"text": "§r§f此世界/伺服器使用§6死亡交換"}," | ",{"text": "§r§f版本："},{"nbt": "version","storage": "deathswap:status","color": "yellow"}]
execute if score language deathswap.setting matches 2 run tellraw @s [{"text":"§r§f製作：§b早安豆江 vipvincent"}," | ",{"text":"§r§f原創概念："},{"text":"SethBling","color":"red","click_event": {"action": "open_url","url": "https://www.youtube.com/watch?v=r5rEaHPt6mw"}}]

function deathswap:ui/link

tellraw @s {"text": "§8§m+--------------------***--------------------+"}

function deathswap:ui/page/update