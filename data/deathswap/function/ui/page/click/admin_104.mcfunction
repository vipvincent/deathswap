#special_gameplay/random_effect

execute if score random_effect deathswap.setting matches 0 run execute as @a[scores={deathswap.ui_page=104}] run function deathswap:ui/page/change {ui_page:100}

#reset arena setting
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] unless items entity @s inventory.26 *[custom_data={ui:1b}] run function deathswap:setting/random_effect/default

#time
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] unless items entity @s inventory.4 *[custom_data={ui:1b},count=5] run function deathswap:setting/random_effect/time_add {time:5}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] unless items entity @s inventory.13 *[custom_data={ui:1b}] run function deathswap:ui/page/update
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] unless items entity @s inventory.22 *[custom_data={ui:1b},count=5] run function deathswap:setting/random_effect/time_minus {time:5}

#air
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.0 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.1 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.2 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.3 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.5 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.6 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.7 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.9 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.10 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.11 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.12 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.14 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.15 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.16 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.17 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.18 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.19 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.20 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.21 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.23 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.24 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] inventory.25 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]