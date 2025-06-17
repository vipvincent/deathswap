#special_gameplay/killer

#reset killer setting
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.26 with nautilus_shell[custom_data={ui:1b},custom_name={"text":"§e重設殺手模式設定"}]

#killer.quantity
execute if score killer.quantity deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.13 with player_head[custom_data={ui:1b},custom_name={"text":"§e殺手數量：僅一個"},lore=['§7每位殺手的獲勝條件都是各自獨立的，並非組隊'],profile={name:"MHF_Herobrine"}]
execute if score killer.quantity deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.13 with player_head[custom_data={ui:1b},custom_name={"text":"§e殺手數量：每隊一個"},lore=['§7每位殺手的獲勝條件都是各自獨立的，並非組隊'],profile={name:"MHF_Steve"}]

#killer.identity
execute if score killer.identity deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.12 with paper[custom_data={ui:1b},custom_name={"text":"§c殺手淘汰，顯示身分：關閉"}]
execute if score killer.identity deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.12 with paper[custom_data={ui:1b},custom_name={"text":"§a殺手淘汰，顯示身分：開啟"},enchantment_glint_override=true]

#killer.weapon
execute if score killer.weapon deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.14 with stick[custom_data={ui:1b},custom_name={"text":"§c殺手武器：無"},lore=['§7殺手的起始武器']]
execute if score killer.weapon deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.14 with wooden_sword[custom_data={ui:1b},custom_name={"text":"§a殺手武器：木劍"},lore=['§7殺手的起始武器'],enchantment_glint_override=true]
execute if score killer.weapon deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.14 with stone_sword[custom_data={ui:1b},custom_name={"text":"§a殺手武器：石劍"},lore=['§7殺手的起始武器'],enchantment_glint_override=true]
execute if score killer.weapon deathswap.setting matches 3 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.14 with iron_sword[custom_data={ui:1b},custom_name={"text":"§a殺手武器：鐵劍"},lore=['§7殺手的起始武器'],enchantment_glint_override=true]
execute if score killer.weapon deathswap.setting matches 4 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.14 with golden_sword[custom_data={ui:1b},custom_name={"text":"§a殺手武器：金劍"},lore=['§7殺手的起始武器'],enchantment_glint_override=true]
execute if score killer.weapon deathswap.setting matches 5 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.14 with diamond_sword[custom_data={ui:1b},custom_name={"text":"§a殺手武器：鑽石劍"},lore=['§7殺手的起始武器'],enchantment_glint_override=true]
execute if score killer.weapon deathswap.setting matches 6 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.14 with netherite_sword[custom_data={ui:1b},custom_name={"text":"§a殺手武器：獄髓劍"},lore=['§7殺手的起始武器'],enchantment_glint_override=true]
