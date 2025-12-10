#en
execute if score *language deathswap.setting matches 1 run tellraw @s [\
{"text": "§a[Modrinth]","click_event": {"action": "open_url","url": "https://modrinth.com/datapack/deathswap"},"hover_event":{"action":"show_text","value":"Click here to §aModrinth"}}," ",\
{"text": "§6[CurseForge]","click_event": {"action": "open_url","url": "https://www.curseforge.com/minecraft/data-packs/deathswap"},"hover_event":{"action":"show_text","value":"Click here to §6CurseForge"}}," ",\
{"text": "§3[Planet Minecraft]","click_event": {"action": "open_url","url": "https://www.planetminecraft.com/data-pack/deathswap-6145205/"},"hover_event":{"action":"show_text","value":"Click here to §3Planet Minecraft"}}\
]
execute if score *language deathswap.setting matches 1 run tellraw @s [\
{"text": "§e[Docs]","click_event": {"action": "open_url","url": "https://vipvincent.github.io/docs/en/deathswap"},"hover_event":{"action":"show_text","value":"Click here to §eDocs"}}," ",\
{"text": "§c[Youtube]","click_event": {"action": "open_url","url": "https://www.youtube.com/@vipvincentgame"},"hover_event":{"action":"show_text","value":"Click here to §cYoutube"}}," ",\
{"text": "§9[Discord]","click_event": {"action": "open_url","url": "https://discord.gg/3BKAydVfDk"},"hover_event":{"action":"show_text","value":"Click here to §9Discord"}}\
]

#中文
execute if score *language deathswap.setting matches 2 run tellraw @s [\
{"text": "§a[Modrinth]","click_event": {"action": "open_url","url": "https://modrinth.com/datapack/deathswap"},"hover_event":{"action":"show_text","value":"點擊此處前往 §aModrinth"}}," ",\
{"text": "§6[CurseForge]","click_event": {"action": "open_url","url": "https://www.curseforge.com/minecraft/data-packs/deathswap"},"hover_event":{"action":"show_text","value":"點擊此處前往 §6CurseForge"}}," ",\
{"text": "§3[Planet Minecraft]","click_event": {"action": "open_url","url": "https://www.planetminecraft.com/data-pack/deathswap-6145205/"},"hover_event":{"action":"show_text","value":"點擊此處前往 §3Planet Minecraft"}}," "\
]
execute if score *language deathswap.setting matches 2 run tellraw @s [\
{"text": "§e[文檔]","click_event": {"action": "open_url","url": "https://vipvincent.github.io/docs/deathswap"},"hover_event":{"action":"show_text","value":"點擊此處前往 §e文檔"}}," ",\
{"text": "§c[Youtube]","click_event": {"action": "open_url","url": "https://www.youtube.com/@vipvincentgame"},"hover_event":{"action":"show_text","value":"點擊此處前往 §cYoutube"}}," ",\
{"text": "§9[Discord]","click_event": {"action": "open_url","url": "https://discord.gg/3BKAydVfDk"},"hover_event":{"action":"show_text","value":"點擊此處前往 §9Discord"}}\
]