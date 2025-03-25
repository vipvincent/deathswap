#team
#red
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!red] hotbar.2 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:16711680},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"加入紅隊(","color":"red","italic": false},{"keybind":"key.use"},{"text":")"}]]
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=red] hotbar.2 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:16711680},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"已加入紅隊(","color":"red","italic": false},{"keybind":"key.use"},{"text":")"}],enchantment_glint_override=true]

#blue
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!blue] hotbar.3 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:255},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"加入藍隊(","color":"blue","italic": false},{"keybind":"key.use"},{"text":")"}]]
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=blue] hotbar.3 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:255},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"已加入藍隊(","color":"blue","italic": false},{"keybind":"key.use"},{"text":")"}],enchantment_glint_override=true]

#yellow
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!yellow] hotbar.5 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:16776960},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"加入黃隊(","color":"yellow","italic": false},{"keybind":"key.use"},{"text":")"}]]
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=yellow] hotbar.5 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:16776960},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"已加入黃隊(","color":"yellow","italic": false},{"keybind":"key.use"},{"text":")"}],enchantment_glint_override=true]

#green
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!green] hotbar.6 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:65280},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"加入綠隊(","color":"green","italic": false},{"keybind":"key.use"},{"text":")"}]]
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=green] hotbar.6 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:65280},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"已加入綠隊(","color":"green","italic": false},{"keybind":"key.use"},{"text":")"}],enchantment_glint_override=true]

#spectator
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!spectator] hotbar.4 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:8421504},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"加入旁觀(","color":"gray","italic": false},{"keybind":"key.use"},{"text":")"}]]
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=spectator] hotbar.4 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:8421504},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"已加入旁觀(","color":"gray","italic": false},{"keybind":"key.use"},{"text":")"}],enchantment_glint_override=true]

#team_choose disable
execute if score team_choose deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative] hotbar.2 with carrot_on_a_stick[custom_data={ui:1b},item_model="barrier",item_name=[{"text":"選隊權限尚未啟用","color":"red"}]]
execute if score team_choose deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative] hotbar.3 with carrot_on_a_stick[custom_data={ui:1b},item_model="barrier",item_name=[{"text":"選隊權限尚未啟用","color":"red"}]]
execute if score team_choose deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative] hotbar.4 with carrot_on_a_stick[custom_data={ui:1b},item_model="barrier",item_name=[{"text":"選隊權限尚未啟用","color":"red"}]]
execute if score team_choose deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative] hotbar.5 with carrot_on_a_stick[custom_data={ui:1b},item_model="barrier",item_name=[{"text":"選隊權限尚未啟用","color":"red"}]]
execute if score team_choose deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative] hotbar.6 with carrot_on_a_stick[custom_data={ui:1b},item_model="barrier",item_name=[{"text":"選隊權限尚未啟用","color":"red"}]]