#team_setting

#team collisionRule
execute if score *mode deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.20 with barrier[custom_data={ui:1b},custom_name={"text":"§cSolo Battle does not support this setting!"}]
execute if score *mode deathswap.setting matches 2 if score *team_collisionrule deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.20 with lead[custom_data={ui:1b},custom_name={"text":"§aSame Team Collision: Enabled"},lore=['§7Whether the same team pushes each other'],enchantment_glint_override=true]
execute if score *mode deathswap.setting matches 2 if score *team_collisionrule deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.20 with lead[custom_data={ui:1b},custom_name={"text":"§cSame Team Collision: Disable"},lore=['§7Whether the same team pushes each other']]

#team friendlyFire
execute if score *mode deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.21 with barrier[custom_data={ui:1b},custom_name={"text":"§cSolo Battle does not support this setting!"}]
execute if score *mode deathswap.setting matches 2 if score *team_friendlyfire deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.21 with pufferfish[custom_data={ui:1b},custom_name={"text":"§aSame Team Friendly Fire: Enabled"},lore=['§7Whether the same team hurts each other'],enchantment_glint_override=true]
execute if score *mode deathswap.setting matches 2 if score *team_friendlyfire deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.21 with pufferfish[custom_data={ui:1b},custom_name={"text":"§cSame Team Friendly Fire: Disable"},lore=['§7Whether the same team hurts each other']]

#mode
execute if score *mode deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.22 with player_head[custom_data={ui:1b},custom_name={"text":"§eSolo Battle"}] 1
execute if score *mode deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.22 with player_head[custom_data={ui:1b},custom_name={"text":"§eTeam Battle"}] 4

#all_join_solo
execute if score *mode deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.13 with nether_star[custom_data={ui:1b},custom_name={"text":"§eAdd players to §aGame team"},lore=['§7Add all non-spectator players to Game Team']]

#random_team
execute if score *mode deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.12 with magenta_glazed_terracotta[custom_data={ui:1b},custom_name={"text":"§eRandomly divided into Two Teams"},lore=['§7Randomly divide non-spectator players into two teams']] 2
execute if score *mode deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.13 with magenta_glazed_terracotta[custom_data={ui:1b},custom_name={"text":"§eRandomly divided into Three Teams"},lore=['§7Randomly divide non-spectator players into three teams']] 3
execute if score *mode deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.14 with magenta_glazed_terracotta[custom_data={ui:1b},custom_name={"text":"§eRandomly divided into Four Teams"},lore=['§7Randomly divide non-spectator players into four teams']] 4

#choose_team
execute if score *team_choose deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.23 with slime_ball[custom_data={ui:1b},custom_name={"text":"§cTeam Selection: Disable"},lore=['§7Enabled this will allow players to choose their own teams']]
execute if score *team_choose deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.23 with slime_ball[custom_data={ui:1b},custom_name={"text":"§aTeam Selection: Enabled"},lore=['§7Enabled this will allow players to choose their own teams'],enchantment_glint_override=true]

#reset_team
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.24 with redstone_torch[custom_data={ui:1b},custom_name={"text":"§eReset the Team"},lore=['§7Remove All Players from the team']]
