#team
execute if score team_choose deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.2 *[custom_data={ui:1b}] run function deathswap:ui/team/join/red
execute if score team_choose deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.3 *[custom_data={ui:1b}] run function deathswap:ui/team/join/blue
execute if score team_choose deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.4 *[custom_data={ui:1b}] run function deathswap:ui/team/join/spectator
execute if score team_choose deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.5 *[custom_data={ui:1b}] run function deathswap:ui/team/join/yellow
execute if score team_choose deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.6 *[custom_data={ui:1b}] run function deathswap:ui/team/join/green

#right
execute as @a[tag=!creative,scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand tipped_arrow[custom_data={ui:1b},item_name='"red"'] run function deathswap:ui/team/join/red
execute as @a[tag=!creative,scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand tipped_arrow[custom_data={ui:1b},item_name='"blue"'] run function deathswap:ui/team/join/blue
execute as @a[tag=!creative,scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand tipped_arrow[custom_data={ui:1b},item_name='"spectator"'] run function deathswap:ui/team/join/spectator
execute as @a[tag=!creative,scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand tipped_arrow[custom_data={ui:1b},item_name='"yellow"'] run function deathswap:ui/team/join/yellow
execute as @a[tag=!creative,scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand tipped_arrow[custom_data={ui:1b},item_name='"green"'] run function deathswap:ui/team/join/green

#team air
execute if score team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] run item replace entity @s hotbar.2 with stick[custom_data={ui:1b},max_stack_size=1,hide_tooltip={},item_model="air",item_name='""']
execute if score team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] run item replace entity @s hotbar.3 with stick[custom_data={ui:1b},max_stack_size=1,hide_tooltip={},item_model="air",item_name='""']
execute if score team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] run item replace entity @s hotbar.4 with stick[custom_data={ui:1b},max_stack_size=1,hide_tooltip={},item_model="air",item_name='""']
execute if score team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] run item replace entity @s hotbar.5 with stick[custom_data={ui:1b},max_stack_size=1,hide_tooltip={},item_model="air",item_name='""']
execute if score team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] run item replace entity @s hotbar.6 with stick[custom_data={ui:1b},max_stack_size=1,hide_tooltip={},item_model="air",item_name='""']

execute if score team_choose deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s hotbar.2 *[custom_data={ui:1b}] run item replace entity @s hotbar.2 with air
execute if score team_choose deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s hotbar.3 *[custom_data={ui:1b}] run item replace entity @s hotbar.3 with air
execute if score team_choose deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s hotbar.4 *[custom_data={ui:1b}] run item replace entity @s hotbar.4 with air
execute if score team_choose deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s hotbar.5 *[custom_data={ui:1b}] run item replace entity @s hotbar.5 with air
execute if score team_choose deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s hotbar.6 *[custom_data={ui:1b}] run item replace entity @s hotbar.6 with air