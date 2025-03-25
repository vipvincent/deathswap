#arena

#reset killer setting
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.26 with nautilus_shell[custom_data={ui:1b},item_name={"text":"§eReset Arena Mode setting"}]

#arena.start
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.3 with player_head[custom_data={ui:1b},custom_name={"text":"§a+5 Round"},profile={name:MHF_ArrowUp}]
execute if score arena.start deathswap.setting matches 1.. run loot replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.12 loot deathswap:ui_page/en/arena.start
execute if score arena.start deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.12 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§eArena Start: Start Directly"}]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.21 with player_head[custom_data={ui:1b},custom_name={"text":"§c-5 Round"},profile={name:MHF_ArrowDown}]

#arena.border
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.4 with player_head[custom_data={ui:1b},custom_name={"text":"§a+100 Border"},profile={name:MHF_ArrowUp}]
loot replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.13 loot deathswap:ui_page/en/arena.border
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.22 with player_head[custom_data={ui:1b},custom_name={"text":"§c-100 Border"},profile={name:MHF_ArrowDown}]

#arena.shrink
execute if score arena.shrink deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.14 with lead[custom_data={ui:1b},item_name={"text":"§aArena Shrinks: Enabled"},enchantment_glint_override=true]
execute if score arena.shrink deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.14 with lead[custom_data={ui:1b},item_name={"text":"§cArena Shrinks: Disable"}]
