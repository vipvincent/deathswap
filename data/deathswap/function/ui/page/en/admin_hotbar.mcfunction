#hotbar-lobby
item replace entity @a[tag=admin,tag=!creative] hotbar.7 with armor_stand[custom_data={ui:1b},item_model="lectern",item_name=[{"text":"Set Game lobby (","color":"yellow"},{"keybind":"key.use"},{"text":")"}],entity_data={id:"armor_stand",Tags:["setlobby"],"Invisible":true}]

#hotbar-tp
item replace entity @a[tag=admin,tag=!creative] hotbar.1 with carrot_on_a_stick[custom_data={ui:1b},item_model="ender_pearl",item_name=[{"text":"Teleport all players to here (","color":"yellow"},{"keybind":"key.use"},{"text":")"}]]

#survival-creative
item replace entity @a[tag=admin,tag=!creative] hotbar.0 with carrot_on_a_stick[custom_data={ui:1b},item_model="feather",item_name=[{"text":"Switch to creative mode (","color":"yellow"},{"keybind":"key.use"},{"text":")"}]]
item replace entity @a[tag=admin,tag=creative] hotbar.0 with carrot_on_a_stick[custom_data={ui:1b},item_model="writable_book",enchantment_glint_override=true,item_name=[{"text":"Switch to setting menu (","color":"yellow"},{"keybind":"key.use"},{"text":")"}]]

#start
item replace entity @a[tag=admin,tag=!creative] hotbar.8 with carrot_on_a_stick[custom_data={ui:1b},item_model="emerald",item_name=[{"text":"Start game! (","color":"green"},{"keybind":"key.use"},{"text":")"}]]