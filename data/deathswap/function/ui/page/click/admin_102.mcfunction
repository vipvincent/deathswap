#special_gameplay/killer

execute if score killer deathswap.setting matches 0 run execute as @a[scores={deathswap.ui_page=102}] run function deathswap:ui/page/change {ui_page:100}

#reset killer setting
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] unless items entity @s inventory.26 *[custom_data={ui:1b}] run function deathswap:setting/killer/default

#killer.quantity
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] unless items entity @s inventory.13 *[custom_data={ui:1b}] run function deathswap:setting/killer/quantity

#killer.identity
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] unless items entity @s inventory.12 *[custom_data={ui:1b}] run function deathswap:setting/killer/identity

#killer.weapon
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] unless items entity @s inventory.14 *[custom_data={ui:1b}] run function deathswap:setting/killer/weapon

#air
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.0 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.1 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.2 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.3 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.4 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.5 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.6 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.7 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.9 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.10 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.11 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.15 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.16 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.17 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.18 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.19 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.20 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.21 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.22 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.23 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.24 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] inventory.25 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]