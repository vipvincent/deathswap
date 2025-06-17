#special_gameplay/random_effect

#reset random_effect setting
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.26 with nautilus_shell[custom_data={ui:1b},custom_name={"text":"§e重設隨機效果設定"}]

#time
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.4 with player_head[custom_data={ui:1b},custom_name={"text": "§a+5秒"},profile={name:MHF_ArrowUp},tooltip_display={hidden_components:["profile"]}] 5
loot replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.13 loot deathswap:ui_page/tw/random_effect.time
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.22 with player_head[custom_data={ui:1b},custom_name={"text": "§c-5秒"},profile={name:MHF_ArrowDown},tooltip_display={hidden_components:["profile"]}] 5