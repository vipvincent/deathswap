#gmchange

#reset gmchange setting
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.26 with nautilus_shell[custom_data={ui:1b},item_name={"text":"§e重設遊戲模式自動切換設定"}]

#gmchange.survival_time
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.11 with player_head[custom_data={ui:1b},custom_name={"text": "§c-5秒"},profile={name:MHF_ArrowLeft},tooltip_display={hidden_components:["profile"]}] 5
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.12 with player_head[custom_data={ui:1b},custom_name={"text": "§c-1秒"},profile={name:MHF_ArrowLeft},tooltip_display={hidden_components:["profile"]}]
loot replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.13 loot deathswap:ui_page/tw/gmchange.survival_time
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.14 with player_head[custom_data={ui:1b},custom_name={"text": "§a+1秒"},profile={name:MHF_ArrowRight},tooltip_display={hidden_components:["profile"]}]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.15 with player_head[custom_data={ui:1b},custom_name={"text": "§a+5秒"},profile={name:MHF_ArrowRight},tooltip_display={hidden_components:["profile"]}] 5

#gmchange.creative_time
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.20 with player_head[custom_data={ui:1b},custom_name={"text": "§c-5秒"},profile={name:MHF_ArrowLeft},tooltip_display={hidden_components:["profile"]}] 5
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.21 with player_head[custom_data={ui:1b},custom_name={"text": "§c-1秒"},profile={name:MHF_ArrowLeft},tooltip_display={hidden_components:["profile"]}]
loot replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.22 loot deathswap:ui_page/tw/gmchange.creative_time
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.23 with player_head[custom_data={ui:1b},custom_name={"text": "§a+1秒"},profile={name:MHF_ArrowRight},tooltip_display={hidden_components:["profile"]}]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.24 with player_head[custom_data={ui:1b},custom_name={"text": "§a+5秒"},profile={name:MHF_ArrowRight},tooltip_display={hidden_components:["profile"]}] 5