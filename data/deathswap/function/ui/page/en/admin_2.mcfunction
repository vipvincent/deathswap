#team collisionRule
execute if score team_collisionrule deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.10 with lead[custom_data={ui:1b},item_name='{"text":"§aSame team collision: Enabled"}',lore=['"§7Whether the same team pushes each other"'],enchantment_glint_override=true]
execute if score team_collisionrule deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.10 with lead[custom_data={ui:1b},item_name='{"text":"§cSame team collision: Disable"}',lore=['"§7Whether the same team pushes each other"']]

#team friendlyFire
execute if score team_friendlyfire deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.11 with pufferfish[custom_data={ui:1b},item_name='{"text":"§aSame team friendly fire: Enabled"}',lore=['"§7Whether the same team hurts each other"'],enchantment_glint_override=true]
execute if score team_friendlyfire deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.11 with pufferfish[custom_data={ui:1b},item_name='{"text":"§cSame team friendly fire: Disable"}',lore=['"§7Whether the same team hurts each other"']]

#random_team
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.12 with magenta_glazed_terracotta[custom_data={ui:1b},item_name='{"text":"§eRandomly divided into two teams"}',lore=['"§7Randomly divide non-spectator players into two teams"']] 2
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.13 with magenta_glazed_terracotta[custom_data={ui:1b},item_name='{"text":"§eRandomly divided into three teams"}',lore=['"§7Randomly divide non-spectator players into three teams"']] 3
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.14 with magenta_glazed_terracotta[custom_data={ui:1b},item_name='{"text":"§eRandomly divided into four teams"}',lore=['"§7Randomly divide non-spectator players into four teams"']] 4

#choose_team
execute if score team_choose deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.15 with slime_ball[custom_data={ui:1b},item_name='{"text":"§cTeam selection permission: Disable"}',lore=['"§7Enabled this will allow players to choose their own teams"']]
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.15 with slime_ball[custom_data={ui:1b},item_name='{"text":"§aTeam selection permission: Enabled"}',lore=['"§7Enabled this will allow players to choose their own teams"'],enchantment_glint_override=true]

#reset_team
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.16 with redstone_torch[custom_data={ui:1b},item_name='{"text":"§eReset the team"}',lore=['"§7Remove all players from the team"']]
