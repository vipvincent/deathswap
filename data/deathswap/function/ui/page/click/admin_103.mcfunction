#special_gameplay/arena

execute if score arena deathswap.setting matches 0 run execute as @a[scores={deathswap.ui_page=103}] run function deathswap:ui/page/change {ui_page:100}

#reset arena setting
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] unless items entity @s inventory.26 *[custom_data={ui:1b}] run function deathswap:setting/arena/default

#arena.start
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] unless items entity @s inventory.3 *[custom_data={ui:1b}] run function deathswap:setting/arena/start_add {start:5}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] unless items entity @s inventory.12 *[custom_data={ui:1b}] run function deathswap:ui/page/update
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] unless items entity @s inventory.21 *[custom_data={ui:1b}] run function deathswap:setting/arena/start_minus {start:5}

#arena.border
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] unless items entity @s inventory.4 *[custom_data={ui:1b}] run function deathswap:setting/arena/border_add {border:100}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] unless items entity @s inventory.13 *[custom_data={ui:1b}] run function deathswap:ui/page/update
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] unless items entity @s inventory.22 *[custom_data={ui:1b}] run function deathswap:setting/arena/border_minus {border:100}

#arena.shrink
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] unless items entity @s inventory.14 *[custom_data={ui:1b}] run function deathswap:setting/arena/shrink

#air
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.0 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.1 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.2 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.5 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.6 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.7 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.9 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.10 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.11 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.15 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.16 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.17 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.18 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.19 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.20 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.23 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.24 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] inventory.25 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]