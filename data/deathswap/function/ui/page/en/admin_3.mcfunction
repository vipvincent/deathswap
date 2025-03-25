#gmchange
execute if score gmchange deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.12 with feather[custom_data={ui:1b},item_name={"text":"§cGame Mode Auto Switch: Disabled"},lore=['§7Set time to automatically switch game modes']]
execute if score gmchange deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.12 with feather[custom_data={ui:1b},item_name={"text":"§aGame Mode Auto Switch: Enabled"},lore=['§7Set time to automatically switch game modes'],enchantment_glint_override=true]
execute if score gmchange deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.21 with book[custom_data={ui:1b},item_name={"text": "§eSetting - Game Mode Auto Switch"}]

#killer
execute if score killer deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.13 with stick[custom_data={ui:1b},item_model=iron_sword,item_name={"text":"§cKiller Mode: Disabled"},lore=['§7The killer is hidden among the team','§7And the killer needs to kill everyone except himself','§7The winning condition for killers is to be independent','§7The victory of the team does not count as the killer\'s victory','§7Therefore, the killer must also prevent his team from winning']]
execute if score killer deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.13 with stick[custom_data={ui:1b},item_model=iron_sword,item_name={"text":"§aKiller Mode: Enabled"},lore=['§7The killer is hidden among the team','§7And the killer needs to kill everyone except himself','§7The winning condition for killers is to be independent','§7The victory of the team does not count as the killer\'s victory','§7Therefore, the killer must also prevent his team from winning'],enchantment_glint_override=true]
execute if score killer deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.22 with book[custom_data={ui:1b},item_name={"text": "§eSetting - Killer Mode"}]

#arena
execute if score arena deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.14 with redstone[custom_data={ui:1b},item_name={"text":"§cArena: Disabled"},lore=['§7Arena']]
execute if score arena deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.14 with redstone[custom_data={ui:1b},item_name={"text":"§aArena: Enabled"},lore=['§7Arena'],enchantment_glint_override=true]
execute if score arena deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.23 with book[custom_data={ui:1b},item_name={"text": "§eSetting - Arena"}]
