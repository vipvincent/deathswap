#special_gameplay/random_effect

#reset random_effect setting
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.26 with nautilus_shell[custom_data={ui:1b},custom_name={"text":"§eReset Random Effect setting"}]

#time
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.4 with player_head[custom_data={ui:1b},custom_name={"text": "§a+5s"},profile={name:MHF_ArrowUp},tooltip_display={hidden_components:["profile"]}]
loot replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.13 loot deathswap:ui_page/en/random_effect.time
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.22 with player_head[custom_data={ui:1b},custom_name={"text": "§c-5s"},profile={name:MHF_ArrowDown},tooltip_display={hidden_components:["profile"]}]