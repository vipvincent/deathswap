#special_gameplay

#gmchange
execute if score gmchange deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.11 with feather[custom_data={ui:1b},custom_name={"text":"§cGame Mode Auto Switch: Disabled"},lore=['§7Set time to automatically switch game modes']]
execute if score gmchange deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.11 with feather[custom_data={ui:1b},custom_name={"text":"§aGame Mode Auto Switch: Enabled"},lore=['§7Set time to automatically switch game modes'],enchantment_glint_override=true]
execute if score gmchange deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.20 with written_book[custom_data={ui:1b},custom_name={"text": "§eSetting - Game Mode Auto Switch"}]

#killer
execute if score killer deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.12 with stick[custom_data={ui:1b},item_model=iron_sword,custom_name={"text":"§cKiller Mode: Disabled"},lore=['§7Killers are hidden in different teams and ','§7compete against each other.','§7To win, a killer must eliminate all other players ','§7and be the last one standing.','§7Team victory does not count; ','§7killers must act secretly and ','§7prevent their own team from winning.']]
execute if score killer deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.12 with stick[custom_data={ui:1b},item_model=iron_sword,custom_name={"text":"§aKiller Mode: Enabled"},lore=['§7Killers are hidden in different teams and ','§7compete against each other.','§7To win, a killer must eliminate all other players ','§7and be the last one standing.','§7Team victory does not count; ','§7killers must act secretly and ','§7prevent their own team from winning.'],enchantment_glint_override=true]
execute if score killer deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.21 with written_book[custom_data={ui:1b},custom_name={"text": "§eSetting - Killer Mode"}]

#arena
execute if score arena deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.13 with redstone[custom_data={ui:1b},custom_name={"text":"§cArena: Disabled"},lore=['§7Arena']]
execute if score arena deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.13 with redstone[custom_data={ui:1b},custom_name={"text":"§aArena: Enabled"},lore=['§7Arena'],enchantment_glint_override=true]
execute if score arena deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.22 with written_book[custom_data={ui:1b},custom_name={"text": "§eSetting - Arena"}]

#random_effect
execute if score random_effect deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.14 with potion[custom_data={ui:1b},tooltip_display={hidden_components:[potion_contents]},custom_name={"text":"§cRandom Effect: Disabled"},lore=['§760 seconds to randomly gain an effect']]
execute if score random_effect deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.14 with potion[custom_data={ui:1b},tooltip_display={hidden_components:[potion_contents]},custom_name={"text":"§aRandom Effect: Enabled"},lore=['§760 seconds to randomly gain an effect'],enchantment_glint_override=true]
execute if score random_effect deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.23 with written_book[custom_data={ui:1b},custom_name={"text": "§eSetting - Random Effect"}]