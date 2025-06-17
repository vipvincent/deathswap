#team_choose

#team
execute if score team_choose deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.2 *[custom_data={ui:1b}] run function deathswap:ui/team/join/red
execute if score team_choose deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.3 *[custom_data={ui:1b}] run function deathswap:ui/team/join/blue
execute if score team_choose deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.4 *[custom_data={ui:1b}] run function deathswap:ui/team/join/spectator
execute if score team_choose deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.5 *[custom_data={ui:1b}] run function deathswap:ui/team/join/yellow
execute if score team_choose deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.6 *[custom_data={ui:1b}] run function deathswap:ui/team/join/green

#right
execute as @a[tag=!creative,scores={deathswap.carrot_right_click=1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:16711680}] run function deathswap:ui/team/join/red
execute as @a[tag=!creative,scores={deathswap.carrot_right_click=1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:255}] run function deathswap:ui/team/join/blue
execute as @a[tag=!creative,scores={deathswap.carrot_right_click=1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:8421504}] run function deathswap:ui/team/join/spectator
execute as @a[tag=!creative,scores={deathswap.carrot_right_click=1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:16776960}] run function deathswap:ui/team/join/yellow
execute as @a[tag=!creative,scores={deathswap.carrot_right_click=1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="potion",potion_contents={custom_color:65280}] run function deathswap:ui/team/join/green

#team_choose disable
execute if score team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] unless items entity @s hotbar.2 *[custom_data={ui:1b}] run function deathswap:ui/team/choose_disable
execute if score team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] unless items entity @s hotbar.3 *[custom_data={ui:1b}] run function deathswap:ui/team/choose_disable
execute if score team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] unless items entity @s hotbar.4 *[custom_data={ui:1b}] run function deathswap:ui/team/choose_disable
execute if score team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] unless items entity @s hotbar.5 *[custom_data={ui:1b}] run function deathswap:ui/team/choose_disable
execute if score team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] unless items entity @s hotbar.6 *[custom_data={ui:1b}] run function deathswap:ui/team/choose_disable

execute as @a[tag=admin,tag=!creative,scores={deathswap.carrot_right_click=1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="barrier"] run function deathswap:ui/team/choose_disable

#team air
execute if score team_choose deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s hotbar.2 *[custom_data={ui:1b}] run item replace entity @s hotbar.2 with air
execute if score team_choose deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s hotbar.3 *[custom_data={ui:1b}] run item replace entity @s hotbar.3 with air
execute if score team_choose deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s hotbar.4 *[custom_data={ui:1b}] run item replace entity @s hotbar.4 with air
execute if score team_choose deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s hotbar.5 *[custom_data={ui:1b}] run item replace entity @s hotbar.5 with air
execute if score team_choose deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s hotbar.6 *[custom_data={ui:1b}] run item replace entity @s hotbar.6 with air