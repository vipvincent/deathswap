#gmchange
execute if score gmchange deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.12 with feather[custom_data={ui:1b},item_name='{"text":"§c遊戲模式自動切換：關閉"}',lore=['"§7在設定的時間自動切換遊戲模式"']]
execute if score gmchange deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.12 with feather[custom_data={ui:1b},item_name='{"text":"§a遊戲模式自動切換：開啟"}',lore=['"§7在設定的時間自動切換遊戲模式"'],enchantment_glint_override=true]
execute if score gmchange deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.21 with book[custom_data={ui:1b},item_name='{"text": "§e設定 - 遊戲模式自動切換"}']

#killer
execute if score killer deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.13 with stick[custom_data={ui:1b},item_model=iron_sword,item_name='{"text":"§c殺手模式：關閉"}',lore=['"§7殺手隱藏在隊伍中"','"§7並且殺手需要殺光除自己以外的人"','"§7殺手之間的獲勝條件為各自獨立"','"§7且所屬隊伍獲勝不算殺手獲勝"','"§7因此殺手同時要避免自己隊伍獲勝"']]
execute if score killer deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.13 with stick[custom_data={ui:1b},item_model=iron_sword,item_name='{"text":"§a殺手模式：開啟"}',lore=['"§7殺手隱藏在隊伍中"','"§7並且殺手需要殺光除自己以外的人"','"§7殺手之間的獲勝條件為各自獨立"','"§7且所屬隊伍獲勝不算殺手獲勝"','"§7因此殺手同時要避免自己隊伍獲勝"'],enchantment_glint_override=true]
execute if score killer deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.22 with book[custom_data={ui:1b},item_name='{"text": "§e設定 - 殺手模式"}']

#arena
execute if score arena deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.14 with redstone[custom_data={ui:1b},item_name='{"text":"§c競技場：關閉"}',lore=['"§7競技場"']]
execute if score arena deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.14 with redstone[custom_data={ui:1b},item_name='{"text":"§a競技場：開啟"}',lore=['"§7競技場"'],enchantment_glint_override=true]
execute if score arena deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.23 with book[custom_data={ui:1b},item_name='{"text": "§e設定 - 競技場"}']
