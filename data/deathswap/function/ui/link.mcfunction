#ui/link

#en
execute if score *language deathswap.setting matches 1 run tellraw @s [\
    {\
        text: "[Modrinth] ",color: green,\
        click_event: {\
            action: open_url,url: "https://modrinth.com/project/irff3j1Z" \
        },\
        hover_event:{\
            action: show_text,value: [\
                "Click here to ",{text: "Modrinth",color: green}\
            ]\
        }\
    },\
    {\
        text: "[CurseForge] ",color: gold,\
        click_event: {\
            action: open_url,url: "https://www.curseforge.com/minecraft/data-packs/deathswap" \
        },\
        hover_event:{\
            action: show_text,value: [\
                "Click here to ",{text: "CurseForge",color: gold}\
            ]\
        }\
    },\
    {\
        text: "[Planet Minecraft] ",color:dark_aqua,\
        click_event: {\
            action: open_url,url: "https://www.planetminecraft.com/data-pack/deathswap-6145205/" \
        },\
        hover_event:{\
            action: show_text,value: [\
                "Click here to ",{text: "Planet Minecraft",color: dark_aqua}\
            ]\
        }\
    },\
    "\n",\
    {\
        text: "[Wiki] ",color: yellow,\
        click_event: {\
            action: open_url,url: "https://vipvincent.github.io/wiki/en/deathswap" \
        },\
        hover_event:{\
            action: show_text,value: [\
                "Click here to ",{text: "Wiki",color: yellow}\
            ]\
        }\
    },\
    {\
        text: "[Github] ",color: light_purple,\
        click_event: {\
            action: open_url,url: "https://github.com/vipvincent/deathswap" \
        },\
        hover_event:{\
            action: show_text,value: [\
                "Click here to ",{text: "Github",color: light_purple}\
            ]\
        }\
    },\
    {\
        text: "[Discord] ",color: blue,\
        click_event: {\
            action: open_url,url: "https://discord.gg/3BKAydVfDk" \
        },\
        hover_event:{\
            action: show_text,value: [\
                "Click here to ",{text: "Discord",color: blue}\
            ]\
        }\
    },\
    {\
        text: "[Youtube] ",color: red,\
        click_event: {\
            action: open_url,url: "https://www.youtube.com/@vipvincentgame" \
        },\
        hover_event:{\
            action: show_text,value: [\
                "Click here to ",{text: "Youtube",color: red}\
            ]\
        }\
    },\
]

#tw
execute if score *language deathswap.setting matches 2 run tellraw @s [\
    {\
        text: "[Modrinth] ",color: green,\
        click_event: {\
            action: open_url,url: "https://modrinth.com/project/irff3j1Z" \
        },\
        hover_event:{\
            action: show_text,value: [\
                "點擊前往 ",{text: "Modrinth",color: green}\
            ]\
        }\
    },\
    {\
        text: "[CurseForge] ",color: gold,\
        click_event: {\
            action: open_url,url: "https://www.curseforge.com/minecraft/data-packs/deathswap" \
        },\
        hover_event:{\
            action: show_text,value: [\
                "點擊前往 ",{text: "CurseForge",color: gold}\
            ]\
        }\
    },\
    {\
        text: "[Planet Minecraft] ",color:dark_aqua,\
        click_event: {\
            action: open_url,url: "https://www.planetminecraft.com/data-pack/deathswap-6145205/" \
        },\
        hover_event:{\
            action: show_text,value: [\
                "點擊前往 ",{text: "Planet Minecraft",color: dark_aqua}\
            ]\
        }\
    },\
    "\n",\
    {\
        text: "[Wiki] ",color: yellow,\
        click_event: {\
            action: open_url,url: "https://vipvincent.github.io/wiki/deathswap" \
        },\
        hover_event:{\
            action: show_text,value: [\
                "點擊前往 ",{text: "Wiki",color: yellow}\
            ]\
        }\
    },\
    {\
        text: "[Github] ",color: light_purple,\
        click_event: {\
            action: open_url,url: "https://github.com/vipvincent/deathswap" \
        },\
        hover_event:{\
            action: show_text,value: [\
                "點擊前往 ",{text: "Github",color: light_purple}\
            ]\
        }\
    },\
    {\
        text: "[Discord] ",color: blue,\
        click_event: {\
            action: open_url,url: "https://discord.gg/3BKAydVfDk" \
        },\
        hover_event:{\
            action: show_text,value: [\
                "點擊前往 ",{text: "Discord",color: blue}\
            ]\
        }\
    },\
        {\
        text: "[Youtube] ",color: red,\
        click_event: {\
            action: open_url,url: "https://www.youtube.com/@vipvincentgame" \
        },\
        hover_event:{\
            action: show_text,value: [\
                "點擊前往 ",{text: "Youtube",color: red}\
            ]\
        }\
    },\
]