#team setting
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] unless items entity @s inventory.10 *[custom_data={ui:1b}] run function deathswap:setting/team/team_collisionrule
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] unless items entity @s inventory.11 *[custom_data={ui:1b}] run function deathswap:setting/team/team_friendlyfire

#random team
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] unless items entity @s inventory.12 *[custom_data={ui:1b},count=2] run function deathswap:ui/team/random_main {random:2}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] unless items entity @s inventory.13 *[custom_data={ui:1b},count=3] run function deathswap:ui/team/random_main {random:3}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] unless items entity @s inventory.14 *[custom_data={ui:1b},count=4] run function deathswap:ui/team/random_main {random:4}

#choose_team
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] unless items entity @s inventory.15 *[custom_data={ui:1b}] run function deathswap:ui/team/choose_team

#reset_team
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] unless items entity @s inventory.16 *[custom_data={ui:1b}] run function deathswap:ui/team/reset_team

#air
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.0 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.1 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.2 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.3 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.4 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.5 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.6 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.7 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.9 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.17 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.18 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.19 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.20 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.21 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.22 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.23 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.24 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.25 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] inventory.26 with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name=""]