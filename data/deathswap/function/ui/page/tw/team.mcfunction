#team_choose

#spectator
execute if score *team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!spectator] hotbar.4 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:8421504},tooltip_display={hidden_components:[potion_contents]},\
    item_name="team_spectator",custom_name=[{"text":"加入旁觀(","color":"gray","italic": false},{"keybind":"key.use"},{"text":")"}]\
]
execute if score *team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=spectator] hotbar.4 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:8421504},tooltip_display={hidden_components:[potion_contents]},enchantment_glint_override=true,\
    item_name="team_spectator",custom_name=[{"text":"已加入旁觀(","color":"gray","italic": false},{"keybind":"key.use"},{"text":")"}]\
]

#solo
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!solo] hotbar.2 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:65280},tooltip_display={hidden_components:[potion_contents]},\
    item_name="team_solo",custom_name=[{"text":"加入遊戲隊伍(","color":"green","italic": false},{"keybind":"key.use"},{"text":")"}]\
]
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=solo] hotbar.2 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:65280},tooltip_display={hidden_components:[potion_contents]},enchantment_glint_override=true,\
    item_name="team_solo",custom_name=[{"text":"已加入遊戲隊伍(","color":"green","italic": false},{"keybind":"key.use"},{"text":")"}]\
]

execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!solo] hotbar.3 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:65280},tooltip_display={hidden_components:[potion_contents]},\
    item_name="team_solo",custom_name=[{"text":"加入遊戲隊伍(","color":"green","italic": false},{"keybind":"key.use"},{"text":")"}]\
]
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=solo] hotbar.3 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:65280},tooltip_display={hidden_components:[potion_contents]},enchantment_glint_override=true,\
    item_name="team_solo",custom_name=[{"text":"已加入遊戲隊伍(","color":"green","italic": false},{"keybind":"key.use"},{"text":")"}]\
]

execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!solo] hotbar.5 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:65280},tooltip_display={hidden_components:[potion_contents]},\
    item_name="team_solo",custom_name=[{"text":"加入遊戲隊伍(","color":"green","italic": false},{"keybind":"key.use"},{"text":")"}]\
]
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=solo] hotbar.5 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:65280},tooltip_display={hidden_components:[potion_contents]},enchantment_glint_override=true,\
    item_name="team_solo",custom_name=[{"text":"已加入遊戲隊伍(","color":"green","italic": false},{"keybind":"key.use"},{"text":")"}]\
]

execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!solo] hotbar.6 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:65280},tooltip_display={hidden_components:[potion_contents]},\
    item_name="team_solo",custom_name=[{"text":"加入遊戲隊伍(","color":"green","italic": false},{"keybind":"key.use"},{"text":")"}]\
]
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=solo] hotbar.6 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:65280},tooltip_display={hidden_components:[potion_contents]},enchantment_glint_override=true,\
    item_name="team_solo",custom_name=[{"text":"已加入遊戲隊伍(","color":"green","italic": false},{"keybind":"key.use"},{"text":")"}]\
]

#red
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 2 run item replace entity @a[tag=!creative,team=!red] hotbar.2 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:16711680},tooltip_display={hidden_components:[potion_contents]},\
    item_name="team_red",custom_name=[{"text":"加入紅隊(","color":"red","italic": false},{"keybind":"key.use"},{"text":")"}]\
]
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 2 run item replace entity @a[tag=!creative,team=red] hotbar.2 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:16711680},tooltip_display={hidden_components:[potion_contents]},enchantment_glint_override=true,\
    item_name="team_red",custom_name=[{"text":"已加入紅隊(","color":"red","italic": false},{"keybind":"key.use"},{"text":")"}]\
]

#blue
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 2 run item replace entity @a[tag=!creative,team=!blue] hotbar.3 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:255},tooltip_display={hidden_components:[potion_contents]},\
    item_name="team_blue",custom_name=[{"text":"加入藍隊(","color":"blue","italic": false},{"keybind":"key.use"},{"text":")"}]\
]
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 2 run item replace entity @a[tag=!creative,team=blue] hotbar.3 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:255},tooltip_display={hidden_components:[potion_contents]},enchantment_glint_override=true,\
    item_name="team_blue",custom_name=[{"text":"已加入藍隊(","color":"blue","italic": false},{"keybind":"key.use"},{"text":")"}]\
]

#yellow
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 2 run item replace entity @a[tag=!creative,team=!yellow] hotbar.5 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:16776960},tooltip_display={hidden_components:[potion_contents]},\
    item_name="team_yellow",custom_name=[{"text":"加入黃隊(","color":"yellow","italic": false},{"keybind":"key.use"},{"text":")"}]\
]
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 2 run item replace entity @a[tag=!creative,team=yellow] hotbar.5 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:16776960},tooltip_display={hidden_components:[potion_contents]},enchantment_glint_override=true,\
    item_name="team_yellow",custom_name=[{"text":"已加入黃隊(","color":"yellow","italic": false},{"keybind":"key.use"},{"text":")"}]\
]

#green
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 2 run item replace entity @a[tag=!creative,team=!green] hotbar.6 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:65280},tooltip_display={hidden_components:[potion_contents]},\
    item_name="team_green",custom_name=[{"text":"加入綠隊(","color":"green","italic": false},{"keybind":"key.use"},{"text":")"}]\
]
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 2 run item replace entity @a[tag=!creative,team=green] hotbar.6 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="potion",potion_contents={custom_color:65280},tooltip_display={hidden_components:[potion_contents]},enchantment_glint_override=true,\
    item_name="team_green",custom_name=[{"text":"已加入綠隊(","color":"green","italic": false},{"keybind":"key.use"},{"text":")"}]\
]

#disable
execute if score *team_choose deathswap.setting matches 0 run item replace entity @a[tag=!creative,tag=admin] hotbar.2 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="barrier",\
    custom_name=[{"text":"自由選隊尚未啟用","color":"red","italic":false}]\
]
execute if score *team_choose deathswap.setting matches 0 run item replace entity @a[tag=!creative,tag=admin] hotbar.3 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="barrier",\
    custom_name=[{"text":"自由選隊尚未啟用","color":"red","italic":false}]\
]
execute if score *team_choose deathswap.setting matches 0 run item replace entity @a[tag=!creative,tag=admin] hotbar.4 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="barrier",\
    custom_name=[{"text":"自由選隊尚未啟用","color":"red","italic":false}]\
]
execute if score *team_choose deathswap.setting matches 0 run item replace entity @a[tag=!creative,tag=admin] hotbar.5 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="barrier",\
    custom_name=[{"text":"自由選隊尚未啟用","color":"red","italic":false}]\
]
execute if score *team_choose deathswap.setting matches 0 run item replace entity @a[tag=!creative,tag=admin] hotbar.6 with carrot_on_a_stick[\
    custom_data={ui:1b},item_model="barrier",\
    custom_name=[{"text":"自由選隊尚未啟用","color":"red","italic":false}]\
]