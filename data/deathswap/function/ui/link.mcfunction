#en
execute if score language deathswap.setting matches 1 run tellraw @s [\
{"text": "§a[Modrinth] ","clickEvent": {"action": "open_url","value": "https://modrinth.com/datapack/deathswap"}}\
,{"text": "§6[CurseForge] ","clickEvent": {"action": "open_url","value": "https://www.curseforge.com/minecraft/data-packs/deathswap"}},\
{"text": "§3[Planet Minecraft] ","clickEvent": {"action": "open_url","value": "https://www.planetminecraft.com/data-pack/deathswap-6145205/"}}\
]
execute if score language deathswap.setting matches 1 run tellraw @s [\
{"text": "§e[Docs] ","clickEvent": {"action": "open_url","value": "https://vipvincent.github.io/docs/en/deathswap"}}\
,{"text": "§c[Youtube] ","clickEvent": {"action": "open_url","value": "https://www.youtube.com/@vipvincentgame"}},\
{"text": "§9[Discord] ","clickEvent": {"action": "open_url","value": "https://discord.gg/3BKAydVfDk"}}\
]

#中文
execute if score language deathswap.setting matches 2 run tellraw @s [\
{"text": "§a[Modrinth] ","clickEvent": {"action": "open_url","value": "https://modrinth.com/datapack/deathswap"}}\
,{"text": "§6[CurseForge] ","clickEvent": {"action": "open_url","value": "https://www.curseforge.com/minecraft/data-packs/deathswap"}}\
,{"text": "§3[Planet Minecraft] ","clickEvent": {"action": "open_url","value": "https://www.planetminecraft.com/data-pack/deathswap-6145205/"}}\
]
execute if score language deathswap.setting matches 2 run tellraw @s [\
{"text": "§e[文檔] ","clickEvent": {"action": "open_url","value": "https://vipvincent.github.io/docs/deathswap"}},\
{"text": "§c[Youtube] ","clickEvent": {"action": "open_url","value": "https://www.youtube.com/@vipvincentgame"}},\
{"text": "§9[Discord] ","clickEvent": {"action": "open_url","value": "https://discord.gg/3BKAydVfDk"}}\
]