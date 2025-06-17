#special_gameplay

#gmchange
execute if score gmchange deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.11 with feather[custom_data={ui:1b},custom_name={"text":"§c遊戲模式自動切換：關閉"},lore=['§7在設定的時間自動切換遊戲模式']]
execute if score gmchange deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.11 with feather[custom_data={ui:1b},custom_name={"text":"§a遊戲模式自動切換：開啟"},lore=['§7在設定的時間自動切換遊戲模式'],enchantment_glint_override=true]
execute if score gmchange deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.20 with written_book[custom_data={ui:1b},custom_name={"text": "§e設定 - 遊戲模式自動切換"}]

#killer
execute if score killer deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.12 with stick[custom_data={ui:1b},item_model=iron_sword,custom_name={"text":"§c殺手模式：關閉"},lore=['§7殺手潛伏於不同隊伍中，彼此為敵，','§7目標是殺光所有其他玩家，','§7唯有自己存活才能獲勝。','§7隊伍勝利不算殺手勝利，','§7殺手必須暗中行動，','§7並設法阻止自己隊伍獲勝。']]
execute if score killer deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.12 with stick[custom_data={ui:1b},item_model=iron_sword,custom_name={"text":"§a殺手模式：開啟"},lore=['§7殺手潛伏於不同隊伍中，彼此為敵，','§7目標是殺光所有其他玩家，','§7唯有自己存活才能獲勝。','§7隊伍勝利不算殺手勝利，','§7殺手必須暗中行動，','§7並設法阻止自己隊伍獲勝。'],enchantment_glint_override=true]
execute if score killer deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.21 with written_book[custom_data={ui:1b},custom_name={"text": "§e設定 - 殺手模式"}]

#arena
execute if score arena deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.13 with redstone[custom_data={ui:1b},custom_name={"text":"§c競技場：關閉"},lore=['§7競技場']]
execute if score arena deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.13 with redstone[custom_data={ui:1b},custom_name={"text":"§a競技場：開啟"},lore=['§7競技場'],enchantment_glint_override=true]
execute if score arena deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.22 with written_book[custom_data={ui:1b},custom_name={"text": "§e設定 - 競技場"}]

#random_effect
execute if score random_effect deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.14 with potion[custom_data={ui:1b},tooltip_display={hidden_components:[potion_contents]},custom_name={"text":"§c隨機效果：關閉"},lore=['§7隨機獲得一個效果']]
execute if score random_effect deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.14 with potion[custom_data={ui:1b},tooltip_display={hidden_components:[potion_contents]},custom_name={"text":"§a隨機效果：開啟"},lore=['§7隨機獲得一個效果'],enchantment_glint_override=true]
execute if score random_effect deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] inventory.23 with written_book[custom_data={ui:1b},custom_name={"text": "§e設定 - 隨機效果"}]