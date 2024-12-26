#reset setting
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.26 *[custom_data={ui:1b}] run function deathswap:setting/default

#
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.0 *[custom_data={ui:1b}] run function deathswap:setting/difficulty
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.9 *[custom_data={ui:1b}] run function deathswap:setting/time
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.18 *[custom_data={ui:1b}] run function deathswap:setting/weather
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.1 *[custom_data={ui:1b}] run function deathswap:setting/mobspawn
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.10 *[custom_data={ui:1b}] run function deathswap:setting/time_cycle
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.19 *[custom_data={ui:1b}] run function deathswap:setting/weather_cycle

#hp
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.2 *[custom_data={ui:1b}] run function deathswap:setting/hp_natural
execute if score hp_adj deathswap.setting matches 1 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.3 *[custom_data={ui:1b},count=1] run function deathswap:setting/hp_adj
execute if score hp_adj deathswap.setting matches 10 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.3 *[custom_data={ui:1b},count=10] run function deathswap:setting/hp_adj
execute if score hp_adj deathswap.setting matches 20 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.3 *[custom_data={ui:1b},count=20] run function deathswap:setting/hp_adj
execute if score hp_adj deathswap.setting matches 30 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.3 *[custom_data={ui:1b},count=30] run function deathswap:setting/hp_adj
execute if score hp_adj deathswap.setting matches 40 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.3 *[custom_data={ui:1b},count=40] run function deathswap:setting/hp_adj
execute if score hp_adj deathswap.setting matches 50 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.3 *[custom_data={ui:1b},count=50] run function deathswap:setting/hp_adj
execute if score hp_adj deathswap.setting matches 60 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.3 *[custom_data={ui:1b},count=60] run function deathswap:setting/hp_adj

#start
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.11 *[custom_data={ui:1b}] run function deathswap:setting/tool
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.12 *[custom_data={ui:1b}] run function deathswap:setting/armor

#effect
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.20 *[custom_data={ui:1b}] run function deathswap:setting/saturation
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.21 *[custom_data={ui:1b}] run function deathswap:setting/night_vision

#swap
execute if score swap_time deathswap.setting matches 0 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.4 *[custom_data={ui:1b},count=1] run function deathswap:setting/swap_time
execute if score swap_time deathswap.setting matches 1 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.4 *[custom_data={ui:1b},count=2] run function deathswap:setting/swap_time
execute if score swap_time deathswap.setting matches 2 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.4 *[custom_data={ui:1b},count=3] run function deathswap:setting/swap_time
execute if score swap_time deathswap.setting matches 3 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.4 *[custom_data={ui:1b},count=4] run function deathswap:setting/swap_time
execute if score swap_time deathswap.setting matches 4 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.4 *[custom_data={ui:1b},count=5] run function deathswap:setting/swap_time
execute if score swap_time deathswap.setting matches 5 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.4 *[custom_data={ui:1b},count=1] run function deathswap:setting/swap_time
execute if score swap_time deathswap.setting matches 6 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.4 *[custom_data={ui:1b},count=2] run function deathswap:setting/swap_time
execute if score swap_time deathswap.setting matches 7 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.4 *[custom_data={ui:1b},count=3] run function deathswap:setting/swap_time
execute if score swap_time deathswap.setting matches 8 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.4 *[custom_data={ui:1b},count=4] run function deathswap:setting/swap_time
execute if score swap_time deathswap.setting matches 9 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.4 *[custom_data={ui:1b},count=5] run function deathswap:setting/swap_time
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.5 *[custom_data={ui:1b}] run function deathswap:setting/swap_bossbar
execute if score swap_invincible deathswap.setting matches 0 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.13 *[custom_data={ui:1b},count=1] run function deathswap:setting/swap_invincible
execute if score swap_invincible deathswap.setting matches 1 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.13 *[custom_data={ui:1b},count=1] run function deathswap:setting/swap_invincible
execute if score swap_invincible deathswap.setting matches 3 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.13 *[custom_data={ui:1b},count=3] run function deathswap:setting/swap_invincible
execute if score swap_warn deathswap.setting matches 0 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.14 *[custom_data={ui:1b},count=1] run function deathswap:setting/swap_warn
execute if score swap_warn deathswap.setting matches 5 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.14 *[custom_data={ui:1b},count=5] run function deathswap:setting/swap_warn
execute if score swap_warn deathswap.setting matches 10 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.14 *[custom_data={ui:1b},count=10] run function deathswap:setting/swap_warn

#team setting
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.22 *[custom_data={ui:1b}] run function deathswap:setting/team/team_collisionrule
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.23 *[custom_data={ui:1b}] run function deathswap:setting/team/team_friendlyfire

execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.6 *[custom_data={ui:1b}] run function deathswap:setting/furnace
execute if score inventory_limit deathswap.setting matches 37 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.15 *[custom_data={ui:1b},count=37] run function deathswap:setting/inventory_limit
execute if score inventory_limit deathswap.setting matches 28 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.15 *[custom_data={ui:1b},count=28] run function deathswap:setting/inventory_limit
execute if score inventory_limit deathswap.setting matches 19 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.15 *[custom_data={ui:1b},count=19] run function deathswap:setting/inventory_limit
execute if score inventory_limit deathswap.setting matches 10 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.15 *[custom_data={ui:1b},count=10] run function deathswap:setting/inventory_limit
execute if score inventory_limit deathswap.setting matches 2 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.15 *[custom_data={ui:1b},count=2] run function deathswap:setting/inventory_limit
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] unless items entity @s inventory.24 *[custom_data={ui:1b}] run function deathswap:setting/lobbymode

#air
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.7 with stick[custom_data={ui:1b},max_stack_size=1,hide_tooltip={},item_model="air",item_name='""']
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.16 with stick[custom_data={ui:1b},max_stack_size=1,hide_tooltip={},item_model="air",item_name='""']
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.17 with stick[custom_data={ui:1b},max_stack_size=1,hide_tooltip={},item_model="air",item_name='""']
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] inventory.25 with stick[custom_data={ui:1b},max_stack_size=1,hide_tooltip={},item_model="air",item_name='""']
