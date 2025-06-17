#setting

#reset setting
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.26 with nautilus_shell[custom_data={ui:1b},custom_name={"text":"§e重設設定"}]

#difficulty
execute if score difficulty deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.0 with player_head[custom_data={ui:1b},custom_name={"text":"§a難度：和平","italic":false},lore=['§7遊戲難度'],profile={name:"MHF_Cow"}]
execute if score difficulty deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.0 with zombie_head[custom_data={ui:1b},custom_name={"text":"§2難度：簡單"},lore=['§7遊戲難度']]
execute if score difficulty deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.0 with piglin_head[custom_data={ui:1b},custom_name={"text":"§6難度：普通"},lore=['§7遊戲難度']]
execute if score difficulty deathswap.setting matches 3 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.0 with wither_skeleton_skull[custom_data={ui:1b},custom_name={"text":"§c難度：困難"},lore=['§7遊戲難度']]

#time
execute if score time_set deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.9 with clock[custom_data={ui:1b},custom_name={"text":"§b時間：早上"},lore=['§7遊戲時間']]
execute if score time_set deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.9 with clock[custom_data={ui:1b},custom_name={"text":"§6時間：中午"},lore=['§7遊戲時間']]
execute if score time_set deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.9 with clock[custom_data={ui:1b},custom_name={"text":"§7時間：傍晚"},lore=['§7遊戲時間']]
execute if score time_set deathswap.setting matches 3 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.9 with clock[custom_data={ui:1b},custom_name={"text":"§8時間：晚上"},lore=['§7遊戲時間']]

#weather
execute if score weather deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.18 with sunflower[custom_data={ui:1b},custom_name={"text":"§b天氣：晴朗"},lore=['§7遊戲天氣']]
execute if score weather deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.18 with tube_coral[custom_data={ui:1b},custom_name={"text":"§3天氣：下雨"},lore=['§7遊戲天氣']]
execute if score weather deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.18 with lightning_rod[custom_data={ui:1b},custom_name={"text":"§9天氣：雷雨"},lore=['§7遊戲天氣']]

#mobspawn
execute if score mobspawn deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.1 with creeper_spawn_egg[custom_data={ui:1b},custom_name={"text":"§a怪物生成：開啟"},lore=['§7是否生成怪物，不影響生怪磚'],enchantment_glint_override=true]
execute if score mobspawn deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.1 with creeper_spawn_egg[custom_data={ui:1b},custom_name={"text":"§c怪物生成：關閉"},lore=['§7是否生成怪物，不影響生怪磚']]

#time_cycle
execute if score time_cycle deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.10 with daylight_detector[custom_data={ui:1b},custom_name={"text":"§a日夜交替：開啟"},lore=['§7是否進行晝夜更替和月相變化'],enchantment_glint_override=true]
execute if score time_cycle deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.10 with daylight_detector[custom_data={ui:1b},custom_name={"text":"§c日夜交替：關閉"},lore=['§7是否進行晝夜更替和月相變化']]

#wather_cycle
execute if score weather_cycle deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.19 with wind_charge[custom_data={ui:1b},custom_name={"text":"§a更新天氣：開啟"},lore=['§7天氣是否變化'],enchantment_glint_override=true]
execute if score weather_cycle deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.19 with wind_charge[custom_data={ui:1b},custom_name={"text":"§c更新天氣：關閉"},lore=['§7天氣是否變化']]

#hp_natural
execute if score hp_natural deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.2 with apple[custom_data={ui:1b},custom_name={"text":"§a自然回血：開啟"},lore=['§7玩家是否能在飢餓值足夠時自然恢復生命值'],enchantment_glint_override=true]
execute if score hp_natural deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.2 with apple[custom_data={ui:1b},custom_name={"text":"§c自然回血：關閉"},lore=['§7玩家是否能在飢餓值足夠時自然恢復生命值']]

#HP adj
execute if score hp_adj deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.3 with redstone[custom_data={ui:1b},custom_name={"text":"§a血量：1點"},lore=['§7調整玩家的血量，1顆心等於2點','§720點為Minecraft預設值'],enchantment_glint_override=true] 1
execute if score hp_adj deathswap.setting matches 10 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.3 with redstone[custom_data={ui:1b},custom_name={"text":"§a血量：10點"},lore=['§7調整玩家的血量，1顆心等於2點','§720點為Minecraft預設值'],enchantment_glint_override=true] 10
execute if score hp_adj deathswap.setting matches 20 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.3 with redstone[custom_data={ui:1b},custom_name={"text":"§c血量：20點"},lore=['§7調整玩家的血量，1顆心等於2點','§720點為Minecraft預設值']] 20
execute if score hp_adj deathswap.setting matches 30 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.3 with redstone[custom_data={ui:1b},custom_name={"text":"§a血量：30點"},lore=['§7調整玩家的血量，1顆心等於2點','§720點為Minecraft預設值'],enchantment_glint_override=true] 30
execute if score hp_adj deathswap.setting matches 40 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.3 with redstone[custom_data={ui:1b},custom_name={"text":"§a血量：40點"},lore=['§7調整玩家的血量，1顆心等於2點','§720點為Minecraft預設值'],enchantment_glint_override=true] 40
execute if score hp_adj deathswap.setting matches 50 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.3 with redstone[custom_data={ui:1b},custom_name={"text":"§a血量：50點"},lore=['§7調整玩家的血量，1顆心等於2點','§720點為Minecraft預設值'],enchantment_glint_override=true] 50
execute if score hp_adj deathswap.setting matches 60 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.3 with redstone[custom_data={ui:1b},custom_name={"text":"§a血量：60點"},lore=['§7調整玩家的血量，1顆心等於2點','§720點為Minecraft預設值'],enchantment_glint_override=true] 60

#tool
execute if score tool deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.11 with wooden_pickaxe[custom_data={ui:1b},custom_name={"text":"§c起始工具：關閉"},lore=['§7遊戲開始後是否要給予玩家起始工具']]
execute if score tool deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.11 with wooden_pickaxe[custom_data={ui:1b},custom_name={"text":"§a起始工具：木製工具"},lore=['§7遊戲開始後是否要給予玩家起始工具'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.11 with stone_pickaxe[custom_data={ui:1b},custom_name={"text":"§a起始工具：石製工具"},lore=['§7遊戲開始後是否要給予玩家起始工具'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 3 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.11 with iron_pickaxe[custom_data={ui:1b},custom_name={"text":"§a起始工具：鐵製工具"},lore=['§7遊戲開始後是否要給予玩家起始工具'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 4 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.11 with golden_pickaxe[custom_data={ui:1b},custom_name={"text":"§a起始工具：金製工具"},lore=['§7遊戲開始後是否要給予玩家起始工具'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 5 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.11 with diamond_pickaxe[custom_data={ui:1b},custom_name={"text":"§a起始工具：鑽石工具"},lore=['§7遊戲開始後是否要給予玩家起始工具'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 6 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.11 with netherite_pickaxe[custom_data={ui:1b},custom_name={"text":"§a起始工具：獄髓工具"},lore=['§7遊戲開始後是否要給予玩家起始工具'],enchantment_glint_override=true]

#armor
execute if score armor deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.12 with leather_chestplate[custom_data={ui:1b},custom_name={"text":"§c起始裝備：關閉"},lore=['§7遊戲開始後是否要給予玩家裝備']]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.12 with leather_chestplate[custom_data={ui:1b},custom_name={"text":"§a起始裝備：皮革裝備"},lore=['§7遊戲開始後是否要給予玩家裝備'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.12 with chainmail_chestplate[custom_data={ui:1b},custom_name={"text":"§a起始裝備：鎖鏈裝備"},lore=['§7遊戲開始後是否要給予玩家裝備'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 3 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.12 with iron_chestplate[custom_data={ui:1b},custom_name={"text":"§a起始裝備：鐵製裝備"},lore=['§7遊戲開始後是否要給予玩家裝備'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 4 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.12 with golden_chestplate[custom_data={ui:1b},custom_name={"text":"§a起始裝備：黃金裝備"},lore=['§7遊戲開始後是否要給予玩家裝備'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 5 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.12 with diamond_chestplate[custom_data={ui:1b},custom_name={"text":"§a起始裝備：鑽石裝備"},lore=['§7遊戲開始後是否要給予玩家裝備'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 6 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.12 with netherite_chestplate[custom_data={ui:1b},custom_name={"text":"§a起始裝備：獄髓裝備"},lore=['§7遊戲開始後是否要給予玩家裝備'],enchantment_glint_override=true]

#saturation
execute if score saturation deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.20 with honey_bottle[custom_data={ui:1b},custom_name={"text":"§c飽食效果：關閉"},lore=['§7是否給予玩家飽食效果']]
execute if score saturation deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.20 with honey_bottle[custom_data={ui:1b},custom_name={"text":"§a飽食效果：開啟"},lore=['§7是否給予玩家飽食效果'],enchantment_glint_override=true]

#night_vision
execute if score night_vision deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.21 with potion[custom_data={ui:1b},custom_name={"text":"§c夜視效果：關閉"},lore=['§7是否給予玩家夜視效果'],potion_contents={potion:long_night_vision},tooltip_display={hidden_components:["potion_contents"]}]
execute if score night_vision deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.21 with potion[custom_data={ui:1b},custom_name={"text":"§a夜視效果：開啟"},lore=['§7是否給予玩家夜視效果'],potion_contents={potion:long_night_vision},tooltip_display={hidden_components:["potion_contents"]},enchantment_glint_override=true]

#swap_time
execute if score swap_time deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§a交換時間：隨機30秒-1分鐘"},lore=['§7每回合的交換時間'],enchantment_glint_override=true] 1
execute if score swap_time deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§a交換時間：隨機30秒-2分鐘"},lore=['§7每回合的交換時間'],enchantment_glint_override=true] 2
execute if score swap_time deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§a交換時間：隨機30秒-3分鐘"},lore=['§7每回合的交換時間'],enchantment_glint_override=true] 3
execute if score swap_time deathswap.setting matches 3 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§a交換時間：隨機30秒-4分鐘"},lore=['§7每回合的交換時間'],enchantment_glint_override=true] 4
execute if score swap_time deathswap.setting matches 4 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§a交換時間：隨機30秒-5分鐘"},lore=['§7每回合的交換時間'],enchantment_glint_override=true] 5
execute if score swap_time deathswap.setting matches 5 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§c交換時間：固定1分鐘"},lore=['§7每回合的交換時間']] 1
execute if score swap_time deathswap.setting matches 6 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§c交換時間：固定2分鐘"},lore=['§7每回合的交換時間']] 2
execute if score swap_time deathswap.setting matches 7 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§c交換時間：固定3分鐘"},lore=['§7每回合的交換時間']] 3
execute if score swap_time deathswap.setting matches 8 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§c交換時間：固定4分鐘"},lore=['§7每回合的交換時間']] 4 
execute if score swap_time deathswap.setting matches 9 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§c交換時間：固定5分鐘"},lore=['§7每回合的交換時間']] 5

#swap_bossbar
execute if score swap_bossbar deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.5 with paper[custom_data={ui:1b},custom_name={"text":"§c交換倒數：旁觀/淘汰者"},lore=['§7是否顯示交換倒數']]
execute if score swap_bossbar deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.5 with paper[custom_data={ui:1b},custom_name={"text":"§a交換倒數：所有人"},lore=['§7是否顯示交換倒數'],enchantment_glint_override=true]

#swap_invincible
execute if score swap_invincible deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.13 with ender_eye[custom_data={ui:1b},custom_name={"text":"§c交換無敵：關閉"},lore=['§7交換時是否要給予抗性']] 1
execute if score swap_invincible deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.13 with ender_eye[custom_data={ui:1b},custom_name={"text":"§a交換無敵：1秒"},lore=['§7交換時是否要給予抗性'],enchantment_glint_override=true] 1
execute if score swap_invincible deathswap.setting matches 3 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.13 with ender_eye[custom_data={ui:1b},custom_name={"text":"§a交換無敵：3秒"},lore=['§7交換時是否要給予抗性'],enchantment_glint_override=true] 3

#swap_warn
execute if score swap_warn deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.14 with note_block[custom_data={ui:1b},custom_name={"text":"§c交換警告：關閉"},lore=['§7交換前是否要警告']] 1
execute if score swap_warn deathswap.setting matches 5 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.14 with note_block[custom_data={ui:1b},custom_name={"text":"§a交換警告：5秒"},lore=['§7交換前是否要警告'],enchantment_glint_override=true] 5
execute if score swap_warn deathswap.setting matches 10 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.14 with note_block[custom_data={ui:1b},custom_name={"text":"§a交換警告：10秒"},lore=['§7交換前是否要警告'],enchantment_glint_override=true] 10

#team collisionRule
execute if score team_collisionrule deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.22 with lead[custom_data={ui:1b},custom_name={"text":"§a同隊推擠：開啟"},lore=['§7同隊是否要互相推擠'],enchantment_glint_override=true]
execute if score team_collisionrule deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.22 with lead[custom_data={ui:1b},custom_name={"text":"§c同隊推擠：關閉"},lore=['§7同隊是否要互相推擠']]

#team friendlyFire
execute if score team_friendlyfire deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.23 with pufferfish[custom_data={ui:1b},custom_name={"text":"§a同隊互傷：開啟"},lore=['§7同隊是否可以互相傷害'],enchantment_glint_override=true]
execute if score team_friendlyfire deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.23 with pufferfish[custom_data={ui:1b},custom_name={"text":"§c同隊互傷：關閉"},lore=['§7同隊是否可以互相傷害']]

#furnace
execute if score furnace deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.6 with raw_iron[custom_data={ui:1b},custom_name={"text":"§c物品免燒：關閉"},lore=['§7礦物和食物是否不用燒，就能獲得燒好的']]
execute if score furnace deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.6 with iron_ingot[custom_data={ui:1b},custom_name={"text":"§a物品免燒：開啟"},lore=['§7礦物和食物是否不用燒，就能獲得燒好的'],enchantment_glint_override=true]

#inventory_limit
execute if score inventory_limit deathswap.setting matches 37 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.15 with chest[custom_data={ui:1b},custom_name={"text":"§c物品欄限制：關閉"},lore=['§7限制物品欄空間']] 37
execute if score inventory_limit deathswap.setting matches 28 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.15 with chest[custom_data={ui:1b},custom_name={"text":"§a物品欄限制：剩下28格"},lore=['§7限制物品欄空間'],enchantment_glint_override=true] 28
execute if score inventory_limit deathswap.setting matches 19 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.15 with chest[custom_data={ui:1b},custom_name={"text":"§a物品欄限制：剩下19格"},lore=['§7限制物品欄空間'],enchantment_glint_override=true] 19
execute if score inventory_limit deathswap.setting matches 10 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.15 with chest[custom_data={ui:1b},custom_name={"text":"§a物品欄限制：剩下10格"},lore=['§7限制物品欄空間'],enchantment_glint_override=true] 10
execute if score inventory_limit deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.15 with chest[custom_data={ui:1b},custom_name={"text":"§a物品欄限制：剩下2格(主手+副手)"},lore=['§7限制物品欄空間'],enchantment_glint_override=true] 2

#start_pos
execute if score start_pos deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.24 with campfire[custom_data={ui:1b},custom_name={"text":"§c遊戲開始點：隨機"},lore=['§7遊戲一開始的出生地','§7會依照大廳所在緯度']]
execute if score start_pos deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.24 with campfire[custom_data={ui:1b},custom_name={"text":"§a遊戲開始點：大廳"},lore=['§7遊戲一開始的出生地','§7會依照大廳所在緯度'],enchantment_glint_override=true]
