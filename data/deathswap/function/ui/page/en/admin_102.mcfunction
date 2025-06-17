#special_gameplay/killer

#reset killer setting
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.26 with nautilus_shell[custom_data={ui:1b},custom_name={"text":"§eReset Killer Mode setting"}]

#killer.quantity
execute if score killer.quantity deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.13 with player_head[custom_data={ui:1b},custom_name={"text":"§eNumber of killers: Only one"},lore=['§7The winning conditions for each killer are independent and not a team.'],profile={name:"MHF_Herobrine"}]
execute if score killer.quantity deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.13 with player_head[custom_data={ui:1b},custom_name={"text":"§eNumber of killers: One per team"},lore=['§7The winning conditions for each killer are independent and not a team.'],profile={name:"MHF_Steve"}]

#killer.identity
execute if score killer.identity deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.12 with paper[custom_data={ui:1b},custom_name={"text":"§cKiller eliminated, show identity: Disabled"}]
execute if score killer.identity deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.12 with paper[custom_data={ui:1b},custom_name={"text":"§aKiller eliminated, show identity: Enabled"},enchantment_glint_override=true]

#killer.weapon
execute if score killer.weapon deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.14 with stick[custom_data={ui:1b},custom_name={"text":"§cKiller Weapon: None"},lore=['§7Killer\'s starting weapon']]
execute if score killer.weapon deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.14 with wooden_sword[custom_data={ui:1b},custom_name={"text":"§aKiller Weapon: Wooden Sword"},lore=['§7Killer\'s starting weapon'],enchantment_glint_override=true]
execute if score killer.weapon deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.14 with stone_sword[custom_data={ui:1b},custom_name={"text":"§aKiller Weapon: Stone Sword"},lore=['§7Killer\'s starting weapon'],enchantment_glint_override=true]
execute if score killer.weapon deathswap.setting matches 3 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.14 with iron_sword[custom_data={ui:1b},custom_name={"text":"§aKiller Weapon: Iron Sword"},lore=['§7Killer\'s starting weapon'],enchantment_glint_override=true]
execute if score killer.weapon deathswap.setting matches 4 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.14 with golden_sword[custom_data={ui:1b},custom_name={"text":"§aKiller Weapon: Golden Sword"},lore=['§7Killer\'s starting weapon'],enchantment_glint_override=true]
execute if score killer.weapon deathswap.setting matches 5 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.14 with diamond_sword[custom_data={ui:1b},custom_name={"text":"§aKiller Weapon: Diamond Sword"},lore=['§7Killer\'s starting weapon'],enchantment_glint_override=true]
execute if score killer.weapon deathswap.setting matches 6 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.14 with netherite_sword[custom_data={ui:1b},custom_name={"text":"§aKiller Weapon: Netherite Sword"},lore=['§7Killer\'s starting weapon'],enchantment_glint_override=true]
