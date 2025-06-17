#home

#main
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] unless items entity @s inventory.12 *[custom_data={ui:1b}] run function deathswap:ui/page/change {ui_page:1}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] unless items entity @s inventory.13 *[custom_data={ui:1b}] run function deathswap:ui/page/change {ui_page:2}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] unless items entity @s inventory.14 *[custom_data={ui:1b}] run function deathswap:ui/page/change {ui_page:100}

#language
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] unless items entity @s inventory.18 *[custom_data={ui:1b}] run function deathswap:ui/language
#info
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] unless items entity @s inventory.26 *[custom_data={ui:1b}] run function deathswap:ui/info
#reset_win
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] unless items entity @s inventory.0 *[custom_data={ui:1b}] run function deathswap:prepare/reset_wins
#ui_win
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] unless items entity @s inventory.8 *[custom_data={ui:1b}] run function deathswap:ui/win_score

#air
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.1 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.2 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.3 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.4 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.5 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.6 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.7 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.9 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.10 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.11 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.15 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.16 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.17 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.19 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.20 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.21 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.22 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.23 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.24 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.25 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",custom_name=""]