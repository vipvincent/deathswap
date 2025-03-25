#gmchange
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] unless items entity @s inventory.12 *[custom_data={ui:1b}] run function deathswap:setting/gmchange/switch
execute if score gmchange deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.21 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
execute if score gmchange deathswap.setting matches 1 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] unless items entity @s inventory.21 *[custom_data={ui:1b}] run function deathswap:ui/page/change {ui_page:101}

#killer
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] unless items entity @s inventory.13 *[custom_data={ui:1b}] run function deathswap:setting/killer/switch
execute if score killer deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.22 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
execute if score killer deathswap.setting matches 1 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] unless items entity @s inventory.22 *[custom_data={ui:1b}] run function deathswap:ui/page/change {ui_page:102}

#arena
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] unless items entity @s inventory.14 *[custom_data={ui:1b}] run function deathswap:setting/arena/switch
execute if score arena deathswap.setting matches 0 run item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.23 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
execute if score arena deathswap.setting matches 1 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] unless items entity @s inventory.23 *[custom_data={ui:1b}] run function deathswap:ui/page/change {ui_page:103}

#air
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.0 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.1 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.2 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.3 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.4 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.5 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.6 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.7 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.9 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.10 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.11 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.15 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.16 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.17 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.18 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.19 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.20 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.24 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.25 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=3}] inventory.26 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]