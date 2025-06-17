#special_gameplay/gmchange

#reset gmchange setting
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.26 with nautilus_shell[custom_data={ui:1b},custom_name={"text":"§eReset Game Mode Auto Switch setting"}]

#gmchange.survival_time
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.11 with player_head[custom_data={ui:1b},custom_name={"text": "§c-5s"},profile={name:MHF_ArrowLeft},tooltip_display={hidden_components:["profile"]}] 5
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.12 with player_head[custom_data={ui:1b},custom_name={"text": "§c-1s"},profile={name:MHF_ArrowLeft},tooltip_display={hidden_components:["profile"]}]
loot replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.13 loot deathswap:ui_page/en/gmchange.survival_time
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.14 with player_head[custom_data={ui:1b},custom_name={"text": "§a+1s"},profile={name:MHF_ArrowRight},tooltip_display={hidden_components:["profile"]}]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.15 with player_head[custom_data={ui:1b},custom_name={"text": "§a+5s"},profile={name:MHF_ArrowRight},tooltip_display={hidden_components:["profile"]}] 5

#gmchange.creative_time
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.20 with player_head[custom_data={ui:1b},custom_name={"text": "§c-5s"},profile={name:MHF_ArrowLeft},tooltip_display={hidden_components:["profile"]}] 5
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.21 with player_head[custom_data={ui:1b},custom_name={"text": "§c-1s"},profile={name:MHF_ArrowLeft},tooltip_display={hidden_components:["profile"]}]
loot replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.22 loot deathswap:ui_page/en/gmchange.creative_time
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.23 with player_head[custom_data={ui:1b},custom_name={"text": "§a+1s"},profile={name:MHF_ArrowRight},tooltip_display={hidden_components:["profile"]}]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] inventory.24 with player_head[custom_data={ui:1b},custom_name={"text": "§a+5s"},profile={name:MHF_ArrowRight},tooltip_display={hidden_components:["profile"]}] 5