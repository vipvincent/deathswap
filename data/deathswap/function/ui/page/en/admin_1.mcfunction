#setting

#reset setting
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.26 with nautilus_shell[custom_data={ui:1b},custom_name={"text":"§eReset setting"}]

#difficulty
execute if score difficulty deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.0 with player_head[custom_data={ui:1b},custom_name={"text":"§aDifficulty: Peaceful","italic":false},lore=['§7Game difficulty'],profile="MHF_Cow"]
execute if score difficulty deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.0 with zombie_head[custom_data={ui:1b},custom_name={"text":"§2Difficulty: Easy"},lore=['§7Game difficulty']]
execute if score difficulty deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.0 with piglin_head[custom_data={ui:1b},custom_name={"text":"§6Difficulty: Normal"},lore=['§7Game difficulty']]
execute if score difficulty deathswap.setting matches 3 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.0 with wither_skeleton_skull[custom_data={ui:1b},custom_name={"text":"§cDifficulty: Hard"},lore=['§7Game difficulty']]

#time
execute if score time_set deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.9 with clock[custom_data={ui:1b},custom_name={"text":"§bTime: Day"},lore=['§7Game time']]
execute if score time_set deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.9 with clock[custom_data={ui:1b},custom_name={"text":"§6Time: Noon"},lore=['§7Game time']]
execute if score time_set deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.9 with clock[custom_data={ui:1b},custom_name={"text":"§7Time: Night"},lore=['§7Game time']]
execute if score time_set deathswap.setting matches 3 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.9 with clock[custom_data={ui:1b},custom_name={"text":"§8Time: Midnight"},lore=['§7Game time']]

#weather
execute if score weather deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.18 with sunflower[custom_data={ui:1b},custom_name={"text":"§bWeather: Clear"},lore=['§7Game weather']]
execute if score weather deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.18 with tube_coral[custom_data={ui:1b},custom_name={"text":"§3Weather: Rain"},lore=['§7Game weather']]
execute if score weather deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.18 with lightning_rod[custom_data={ui:1b},custom_name={"text":"§9Weather: Thunder"},lore=['§7Game weather']]

#mobspawn
execute if score mobspawn deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.1 with creeper_spawn_egg[custom_data={ui:1b},custom_name={"text":"§aMonster spawn: Enabled"},lore=['§7Whether to generate monsters, does not affect monster spawners'],enchantment_glint_override=true]
execute if score mobspawn deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.1 with creeper_spawn_egg[custom_data={ui:1b},custom_name={"text":"§cMonster spawn: Disable"},lore=['§7Whether to generate monsters, does not affect monster spawners']]

#time_cycle
execute if score time_cycle deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.10 with daylight_detector[custom_data={ui:1b},custom_name={"text":"§aDay/Night Cycle: Enabled"},lore=['§7Whether the daylight cycle and moon phases progress'],enchantment_glint_override=true]
execute if score time_cycle deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.10 with daylight_detector[custom_data={ui:1b},custom_name={"text":"§cDay/Night Cycle: Disable"},lore=['§7Whether the daylight cycle and moon phases progress']]

#wather_cycle
execute if score weather_cycle deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.19 with wind_charge[custom_data={ui:1b},custom_name={"text":"§aWeather Cycle: Enabled"},lore=['§7Whether the weather can change naturally'],enchantment_glint_override=true]
execute if score weather_cycle deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.19 with wind_charge[custom_data={ui:1b},custom_name={"text":"§cWeather Cycle: Disable"},lore=['§7Whether the weather can change naturally']]

#hp_natural
execute if score hp_natural deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.2 with apple[custom_data={ui:1b},custom_name={"text":"§aNatural regeneration: Enabled"},lore=['§7Whether the player can regenerate health naturally if their hunger is full enough'],enchantment_glint_override=true]
execute if score hp_natural deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.2 with apple[custom_data={ui:1b},custom_name={"text":"§cNatural regeneration: Disable"},lore=['§7Whether the player can regenerate health naturally if their hunger is full enough']]

#HP adj
execute if score hp_adj deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.3 with redstone[custom_data={ui:1b},custom_name={"text":"§aHP: 1 point"},lore=['§7Adjust the player hp, 1 heart is equal to 2 points','§720 points is the default value for Minecraft'],enchantment_glint_override=true] 1
execute if score hp_adj deathswap.setting matches 10 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.3 with redstone[custom_data={ui:1b},custom_name={"text":"§aHP: 10 points"},lore=['§7Adjust the player hp, 1 heart is equal to 2 points','§720 points is the default value for Minecraft'],enchantment_glint_override=true] 10
execute if score hp_adj deathswap.setting matches 20 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.3 with redstone[custom_data={ui:1b},custom_name={"text":"§cHP: 20 points"},lore=['§7Adjust the player hp, 1 heart is equal to 2 points','§720 points is the default value for Minecraft']] 20
execute if score hp_adj deathswap.setting matches 30 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.3 with redstone[custom_data={ui:1b},custom_name={"text":"§aHP: 30 points"},lore=['§7Adjust the player hp, 1 heart is equal to 2 points','§720 points is the default value for Minecraft'],enchantment_glint_override=true] 30
execute if score hp_adj deathswap.setting matches 40 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.3 with redstone[custom_data={ui:1b},custom_name={"text":"§aHP: 40 points"},lore=['§7Adjust the player hp, 1 heart is equal to 2 points','§720 points is the default value for Minecraft'],enchantment_glint_override=true] 40
execute if score hp_adj deathswap.setting matches 50 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.3 with redstone[custom_data={ui:1b},custom_name={"text":"§aHP: 50 points"},lore=['§7Adjust the player hp, 1 heart is equal to 2 points','§720 points is the default value for Minecraft'],enchantment_glint_override=true] 50
execute if score hp_adj deathswap.setting matches 60 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.3 with redstone[custom_data={ui:1b},custom_name={"text":"§aHP: 60 points"},lore=['§7Adjust the player hp, 1 heart is equal to 2 points','§720 points is the default value for Minecraft'],enchantment_glint_override=true] 60

#tool
execute if score tool deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.11 with wooden_pickaxe[custom_data={ui:1b},custom_name={"text":"§cStart tool: Disable"},lore=['§7Whether to give the player starting tools after the game starts']]
execute if score tool deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.11 with wooden_pickaxe[custom_data={ui:1b},custom_name={"text":"§aStart tool: Wooden Tools"},lore=['§7Whether to give the player starting tools after the game starts'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.11 with stone_pickaxe[custom_data={ui:1b},custom_name={"text":"§aStart tool: Stone Tools"},lore=['§7Whether to give the player starting tools after the game starts'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 3 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.11 with iron_pickaxe[custom_data={ui:1b},custom_name={"text":"§aStart tool: Iron Tools"},lore=['§7Whether to give the player starting tools after the game starts'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 4 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.11 with golden_pickaxe[custom_data={ui:1b},custom_name={"text":"§aStart tool: Golden Tools"},lore=['§7Whether to give the player starting tools after the game starts'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 5 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.11 with diamond_pickaxe[custom_data={ui:1b},custom_name={"text":"§aStart tool: Diamond Tools"},lore=['§7Whether to give the player starting tools after the game starts'],enchantment_glint_override=true]
execute if score tool deathswap.setting matches 6 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.11 with netherite_pickaxe[custom_data={ui:1b},custom_name={"text":"§aStart tool: Netherite Tools"},lore=['§7Whether to give the player starting tools after the game starts'],enchantment_glint_override=true]

#armor
execute if score armor deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.12 with leather_chestplate[custom_data={ui:1b},custom_name={"text":"§cStart tool: Disable"},lore=['§7Whether to give the player starting armor after the game starts']]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.12 with leather_chestplate[custom_data={ui:1b},custom_name={"text":"§aStart tool: Leather Armor"},lore=['§7Whether to give the player starting armor after the game starts'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.12 with chainmail_chestplate[custom_data={ui:1b},custom_name={"text":"§aStart tool: Chainmail Armor"},lore=['§7Whether to give the player starting armor after the game starts'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 3 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.12 with iron_chestplate[custom_data={ui:1b},custom_name={"text":"§aStart tool: Iron Armor"},lore=['§7Whether to give the player starting armor after the game starts'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 4 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.12 with golden_chestplate[custom_data={ui:1b},custom_name={"text":"§aStart tool: Golden Armor"},lore=['§7Whether to give the player starting armor after the game starts'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 5 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.12 with diamond_chestplate[custom_data={ui:1b},custom_name={"text":"§aStart tool: Diamond Armor"},lore=['§7Whether to give the player starting armor after the game starts'],enchantment_glint_override=true]
execute if score armor deathswap.setting matches 6 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.12 with netherite_chestplate[custom_data={ui:1b},custom_name={"text":"§aStart tool: Netherite Armor"},lore=['§7Whether to give the player starting armor after the game starts'],enchantment_glint_override=true]

#saturation
execute if score saturation deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.20 with honey_bottle[custom_data={ui:1b},custom_name={"text":"§cSaturation effect: Disable"},lore=['§7Whether to give players saturation effect']]
execute if score saturation deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.20 with honey_bottle[custom_data={ui:1b},custom_name={"text":"§aSaturation effect: Enabled"},lore=['§7Whether to give players saturation effect'],enchantment_glint_override=true]

#night_vision
execute if score night_vision deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.21 with potion[custom_data={ui:1b},custom_name={"text":"§cNight vision effect: Disable"},lore=['§7Whether to give players night vision effect'],potion_contents={potion:long_night_vision},tooltip_display={hidden_components:["potion_contents"]}]
execute if score night_vision deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.21 with potion[custom_data={ui:1b},custom_name={"text":"§aNight vision effect: Enabled"},lore=['§7Whether to give players night vision effect'],potion_contents={potion:long_night_vision},tooltip_display={hidden_components:["potion_contents"]},enchantment_glint_override=true]

#swap_time
execute if score swap_time deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§aSwap time: Random 30s-1min"},lore=['§7Swap time per round'],enchantment_glint_override=true] 1
execute if score swap_time deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§aSwap time: Random 30s-2min"},lore=['§7Swap time per round'],enchantment_glint_override=true] 2
execute if score swap_time deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§aSwap time: Random 30s-3min"},lore=['§7Swap time per round'],enchantment_glint_override=true] 3
execute if score swap_time deathswap.setting matches 3 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§aSwap time: Random 30s-4min"},lore=['§7Swap time per round'],enchantment_glint_override=true] 4
execute if score swap_time deathswap.setting matches 4 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§aSwap time: Random 30s-5min"},lore=['§7Swap time per round'],enchantment_glint_override=true] 5
execute if score swap_time deathswap.setting matches 5 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§cSwap time: Fixed 1min"},lore=['§7Swap time per round']] 1
execute if score swap_time deathswap.setting matches 6 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§cSwap time: Fixed 2min"},lore=['§7Swap time per round']] 2
execute if score swap_time deathswap.setting matches 7 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§cSwap time: Fixed 3min"},lore=['§7Swap time per round']] 3
execute if score swap_time deathswap.setting matches 8 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§cSwap time: Fixed 4min"},lore=['§7Swap time per round']] 4 
execute if score swap_time deathswap.setting matches 9 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.4 with ender_pearl[custom_data={ui:1b},custom_name={"text":"§cSwap time: Fixed 5min"},lore=['§7Swap time per round']] 5

#swap_bossbar
execute if score swap_bossbar deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.5 with paper[custom_data={ui:1b},custom_name={"text":"§cSwap countdown: Spectators/Eliminates"},lore=['§7Whether to display the swap countdown']]
execute if score swap_bossbar deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.5 with paper[custom_data={ui:1b},custom_name={"text":"§aSwap countdown: Everyone"},lore=['§7Whether to display the swap countdown'],enchantment_glint_override=true]

#swap_invincible
execute if score swap_invincible deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.13 with ender_eye[custom_data={ui:1b},custom_name={"text":"§cSwap invincibility: Disable"},lore=['§7Whether to give resistance when swap']] 1
execute if score swap_invincible deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.13 with ender_eye[custom_data={ui:1b},custom_name={"text":"§aSwap invincibility: 1s"},lore=['§7Whether to give resistance when swap'],enchantment_glint_override=true] 1
execute if score swap_invincible deathswap.setting matches 3 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.13 with ender_eye[custom_data={ui:1b},custom_name={"text":"§aSwap invincibility: 3s"},lore=['§7Whether to give resistance when swap'],enchantment_glint_override=true] 3

#swap_warn
execute if score swap_warn deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.14 with note_block[custom_data={ui:1b},custom_name={"text":"§cSwap warn: Disable"},lore=['§7Whether to warn before swap']] 1
execute if score swap_warn deathswap.setting matches 5 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.14 with note_block[custom_data={ui:1b},custom_name={"text":"§aSwap warn: 5s"},lore=['§7Whether to warn before swap'],enchantment_glint_override=true] 5
execute if score swap_warn deathswap.setting matches 10 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.14 with note_block[custom_data={ui:1b},custom_name={"text":"§aSwap warn: 10s"},lore=['§7Whether to warn before swap'],enchantment_glint_override=true] 10

#team collisionRule
execute if score team_collisionrule deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.22 with lead[custom_data={ui:1b},custom_name={"text":"§aSame team collision: Enabled"},lore=['§7Whether the same team pushes each other'],enchantment_glint_override=true]
execute if score team_collisionrule deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.22 with lead[custom_data={ui:1b},custom_name={"text":"§cSame team collision: Disable"},lore=['§7Whether the same team pushes each other']]

#team friendlyFire
execute if score team_friendlyfire deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.23 with pufferfish[custom_data={ui:1b},custom_name={"text":"§aSame team friendly fire: Enabled"},lore=['§7Whether the same team hurts each other'],enchantment_glint_override=true]
execute if score team_friendlyfire deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.23 with pufferfish[custom_data={ui:1b},custom_name={"text":"§cSame team friendly fire: Disable"},lore=['§7Whether the same team hurts each other']]

#furnace
execute if score furnace deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.6 with raw_iron[custom_data={ui:1b},custom_name={"text":"§cAutomatic furnace: Disable"},lore=['§7Whether minerals and food can be obtained cooked without burning them']]
execute if score furnace deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.6 with iron_ingot[custom_data={ui:1b},custom_name={"text":"§aAutomatic furnace: Enabled"},lore=['§7Whether minerals and food can be obtained cooked without burning them'],enchantment_glint_override=true]

#inventory_limit
execute if score inventory_limit deathswap.setting matches 37 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.15 with chest[custom_data={ui:1b},custom_name={"text":"§cInventory limit: Disable"},lore=['§7Limit inventory space']] 37
execute if score inventory_limit deathswap.setting matches 28 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.15 with chest[custom_data={ui:1b},custom_name={"text":"§aInventory limit: 28 spaces left"},lore=['§7Limit inventory space'],enchantment_glint_override=true] 28
execute if score inventory_limit deathswap.setting matches 19 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.15 with chest[custom_data={ui:1b},custom_name={"text":"§aInventory limit: 19 spaces left"},lore=['§7Limit inventory space'],enchantment_glint_override=true] 19
execute if score inventory_limit deathswap.setting matches 10 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.15 with chest[custom_data={ui:1b},custom_name={"text":"§aInventory limit: 10 spaces left"},lore=['§7Limit inventory space'],enchantment_glint_override=true] 10 
execute if score inventory_limit deathswap.setting matches 2 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.15 with chest[custom_data={ui:1b},custom_name={"text":"§aInventory limit: 2 spaces left(mainhand+offhand)"},lore=['§7Limit inventory space'],enchantment_glint_override=true] 2

#start_pos
execute if score start_pos deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.24 with campfire[custom_data={ui:1b},custom_name={"text":"§cGame start point: Random"},lore=['§7The birthplace at the beginning of the game','§7According to the dimension of the lobby']]
execute if score start_pos deathswap.setting matches 1 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.24 with campfire[custom_data={ui:1b},custom_name={"text":"§aGame start point: Lobby"},lore=['§7The birthplace at the beginning of the game','§7According to the dimension of the lobby'],enchantment_glint_override=true]
