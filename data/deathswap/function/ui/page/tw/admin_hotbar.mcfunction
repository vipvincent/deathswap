#hotbar-lobby
item replace entity @a[tag=admin,tag=!creative] hotbar.7 with armor_stand[custom_data={ui:1b},item_model="lectern",item_name='[{"text":"設置遊戲大廳(","color":"yellow"},{"keybind":"key.use"},{"text":")"}]',entity_data={id:"armor_stand",Tags:["setlobby"],"Invisible":true}]

#hotbar-tp
item replace entity @a[tag=admin,tag=!creative] hotbar.1 with slime_ball[custom_data={ui:1b},item_model="ender_pearl",item_name='[{"text":"傳送所有玩家到這裡(","color":"yellow"},{"keybind":"key.use"},{"text":")"}]']

#survival-creative
item replace entity @a[tag=admin,tag=!creative] hotbar.0 with feather[custom_data={ui:1b},item_name='[{"text":"切換至創造模式(","color":"yellow"},{"keybind":"key.use"},{"text":")"}]']
item replace entity @a[tag=admin,tag=creative] hotbar.0 with carrot_on_a_stick[custom_data={ui:1b},item_model="writable_book",enchantment_glint_override=true,item_name='[{"text":"§e切換至設定介面(","color":"yellow"},{"keybind":"key.use"},{"text":")"}]']

#start
item replace entity @a[tag=admin,tag=!creative] hotbar.8 with emerald[custom_data={ui:1b},item_name='[{"text":"開始遊戲！(","color":"green"},{"keybind":"key.use"},{"text":")"}]']

#left head admin
item replace entity @a[tag=admin,tag=!creative] weapon.offhand with warped_fungus_on_a_stick[custom_data={ui:1b},hide_tooltip={},item_model="writable_book",enchantment_glint_override=true,item_name='""']