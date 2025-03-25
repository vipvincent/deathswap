#team
#red
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!red] hotbar.2 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:16711680},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"Join the red team (","color":"red","italic": false},{"keybind":"key.use"},{"text":")"}]]
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=red] hotbar.2 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:16711680},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"Joined the red team (","color":"red","italic": false},{"keybind":"key.use"},{"text":")"}],enchantment_glint_override=true]

#blue
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!blue] hotbar.3 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:255},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"Join the blue team (","color":"blue","italic": false},{"keybind":"key.use"},{"text":")"}]]
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=blue] hotbar.3 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:255},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"Joined the blue team (","color":"blue","italic": false},{"keybind":"key.use"},{"text":")"}],enchantment_glint_override=true]

#yellow
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!yellow] hotbar.5 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:16776960},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"Join the yellow team (","color":"yellow","italic": false},{"keybind":"key.use"},{"text":")"}]]
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=yellow] hotbar.5 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:16776960},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"Joined the yellow team (","color":"yellow","italic": false},{"keybind":"key.use"},{"text":")"}],enchantment_glint_override=true]

#green
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!green] hotbar.6 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:65280},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"Join the green team (","color":"green","italic": false},{"keybind":"key.use"},{"text":")"}]]
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=green] hotbar.6 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:65280},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"Joined the green team (","color":"green","italic": false},{"keybind":"key.use"},{"text":")"}],enchantment_glint_override=true]

#spectator
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=!spectator] hotbar.4 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:8421504},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"Join the spectator (","color":"gray","italic": false},{"keybind":"key.use"},{"text":")"}]]
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=!creative,team=spectator] hotbar.4 with carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:8421504},tooltip_display={hidden_components:[potion_contents]},item_name=[{"text":"Joined the spectator (","color":"gray","italic": false},{"keybind":"key.use"},{"text":")"}],enchantment_glint_override=true]

#team_choose disable
execute if score team_choose deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative] hotbar.2 with carrot_on_a_stick[custom_data={ui:1b},item_model="barrier",item_name=[{"text":"Team selection has been disabled!","color":"red"}]]
execute if score team_choose deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative] hotbar.3 with carrot_on_a_stick[custom_data={ui:1b},item_model="barrier",item_name=[{"text":"Team selection has been disabled!","color":"red"}]]
execute if score team_choose deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative] hotbar.4 with carrot_on_a_stick[custom_data={ui:1b},item_model="barrier",item_name=[{"text":"Team selection has been disabled!","color":"red"}]]
execute if score team_choose deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative] hotbar.5 with carrot_on_a_stick[custom_data={ui:1b},item_model="barrier",item_name=[{"text":"Team selection has been disabled!","color":"red"}]]
execute if score team_choose deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative] hotbar.6 with carrot_on_a_stick[custom_data={ui:1b},item_model="barrier",item_name=[{"text":"Team selection has been disabled!","color":"red"}]]