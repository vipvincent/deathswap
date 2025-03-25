#en
execute if score language deathswap.setting matches 1 run tellraw @s [\
{"text": "§a[Modrinth] ","click_event": {"action": "open_url","url": "https://modrinth.com/datapack/deathswap"}}\
,{"text": "§6[CurseForge] ","click_event": {"action": "open_url","url": "https://www.curseforge.com/minecraft/data-packs/deathswap"}},\
{"text": "§3[Planet Minecraft] ","click_event": {"action": "open_url","url": "https://www.planetminecraft.com/data-pack/deathswap-6145205/"}}\
]
execute if score language deathswap.setting matches 1 run tellraw @s [\
{"text": "§e[Docs] ","click_event": {"action": "open_url","url": "https://vipvincent.github.io/docs/en/deathswap"}}\
,{"text": "§c[Youtube] ","click_event": {"action": "open_url","url": "https://www.youtube.com/@vipvincentgame"}},\
{"text": "§9[Discord] ","click_event": {"action": "open_url","url": "https://discord.gg/3BKAydVfDk"}}\
]

#中文
execute if score language deathswap.setting matches 2 run tellraw @s [\
{"text": "§a[Modrinth] ","click_event": {"action": "open_url","url": "https://modrinth.com/datapack/deathswap"}}\
,{"text": "§6[CurseForge] ","click_event": {"action": "open_url","url": "https://www.curseforge.com/minecraft/data-packs/deathswap"}}\
,{"text": "§3[Planet Minecraft] ","click_event": {"action": "open_url","url": "https://www.planetminecraft.com/data-pack/deathswap-6145205/"}}\
]
execute if score language deathswap.setting matches 2 run tellraw @s [\
{"text": "§e[文檔] ","click_event": {"action": "open_url","url": "https://vipvincent.github.io/docs/deathswap"}},\
{"text": "§c[Youtube] ","click_event": {"action": "open_url","url": "https://www.youtube.com/@vipvincentgame"}},\
{"text": "§9[Discord] ","click_event": {"action": "open_url","url": "https://discord.gg/3BKAydVfDk"}}\
]