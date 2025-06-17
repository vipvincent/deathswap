#special_gameplay/arena

#reset killer setting
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.26 with nautilus_shell[custom_data={ui:1b},custom_name={"text":"§e重設競技場設定"}]

#arena.start
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.3 with player_head[custom_data={ui:1b},custom_name={"text":"§a+5回合"},profile={name:MHF_ArrowUp}]
execute if score arena.start deathswap.setting matches 1.. run loot replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.12 loot deathswap:ui_page/tw/arena.start
execute if score arena.start deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.12 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§e競技場開始：直接開始"}]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.21 with player_head[custom_data={ui:1b},custom_name={"text":"§c-5回合"},profile={name:MHF_ArrowDown}]

#arena.border
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.4 with player_head[custom_data={ui:1b},custom_name={"text":"§a+100邊界"},profile={name:MHF_ArrowUp}]
loot replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.13 loot deathswap:ui_page/tw/arena.border
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.22 with player_head[custom_data={ui:1b},custom_name={"text":"§c-100邊界"},profile={name:MHF_ArrowDown}]

#arena.shrink
execute if score arena.shrink deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.14 with lead[custom_data={ui:1b},custom_name={"text":"§a競技場縮圈：開啟"},enchantment_glint_override=true]
execute if score arena.shrink deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.14 with lead[custom_data={ui:1b},custom_name={"text":"§c競技場縮圈：關閉"}]
