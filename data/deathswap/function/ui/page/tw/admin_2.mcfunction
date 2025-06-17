#team_setting

#team collisionRule
execute if score team_collisionrule deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.10 with lead[custom_data={ui:1b},custom_name={"text":"§a同隊推擠：開啟"},lore=['§7同隊是否要互相推擠'],enchantment_glint_override=true]
execute if score team_collisionrule deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.10 with lead[custom_data={ui:1b},custom_name={"text":"§c同隊推擠：關閉"},lore=['§7同隊是否要互相推擠']]

#team friendlyFire
execute if score team_friendlyfire deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.11 with pufferfish[custom_data={ui:1b},custom_name={"text":"§a同隊互傷：開啟"},lore=['§7同隊是否可以互相傷害'],enchantment_glint_override=true]
execute if score team_friendlyfire deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.11 with pufferfish[custom_data={ui:1b},custom_name={"text":"§c同隊互傷：關閉"},lore=['§7同隊是否可以互相傷害']]

#random_team
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.12 with magenta_glazed_terracotta[custom_data={ui:1b},custom_name={"text":"§e隨機分為兩隊"},lore=['§7將非旁觀者的玩家隨機分為兩隊']] 2
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.13 with magenta_glazed_terracotta[custom_data={ui:1b},custom_name={"text":"§e隨機分為三隊"},lore=['§7將非旁觀者的玩家隨機分為兩隊']] 3
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.14 with magenta_glazed_terracotta[custom_data={ui:1b},custom_name={"text":"§e隨機分為四隊"},lore=['§7將非旁觀者的玩家隨機分為兩隊']] 4

#choose_team
execute if score team_choose deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.15 with slime_ball[custom_data={ui:1b},custom_name={"text":"§c選隊權限：關閉"},lore=['§7開啟此功能才能讓玩家自己選擇隊伍']]
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.15 with slime_ball[custom_data={ui:1b},custom_name={"text":"§a選隊權限：開啟"},lore=['§7開啟此功能才能讓玩家自己選擇隊伍'],enchantment_glint_override=true]

#reset_team
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.16 with redstone_torch[custom_data={ui:1b},custom_name={"text":"§e重製隊伍"},lore=['§7將所有玩家移出隊伍']]
