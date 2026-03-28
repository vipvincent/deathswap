#team_choose

#click
execute if score *team_choose deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.4 *[custom_data={ui:1b},item_name="team_spectator"] run function deathswap:team/join/spectator

execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.2 *[custom_data={ui:1b},item_name="team_solo"] run function deathswap:team/join/solo
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.3 *[custom_data={ui:1b},item_name="team_solo"] run function deathswap:team/join/solo
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.5 *[custom_data={ui:1b},item_name="team_solo"] run function deathswap:team/join/solo
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 as @a[tag=!creative] unless items entity @s hotbar.6 *[custom_data={ui:1b},item_name="team_solo"] run function deathswap:team/join/solo

execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 2 as @a[tag=!creative] unless items entity @s hotbar.2 *[custom_data={ui:1b},item_name="team_red"] run function deathswap:team/join/red
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 2 as @a[tag=!creative] unless items entity @s hotbar.3 *[custom_data={ui:1b},item_name="team_blue"] run function deathswap:team/join/blue
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 2 as @a[tag=!creative] unless items entity @s hotbar.5 *[custom_data={ui:1b},item_name="team_yellow"] run function deathswap:team/join/yellow
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 2 as @a[tag=!creative] unless items entity @s hotbar.6 *[custom_data={ui:1b},item_name="team_green"] run function deathswap:team/join/green

#right
execute as @a[tag=!creative,scores={deathswap.carrot_right_click=1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="potion",item_name="team_spectator"] run function deathswap:team/join/spectator
execute as @a[tag=!creative,scores={deathswap.carrot_right_click=1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="potion",item_name="team_solo"] run function deathswap:team/join/solo

execute as @a[tag=!creative,scores={deathswap.carrot_right_click=1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="potion",item_name="team_red"] run function deathswap:team/join/red
execute as @a[tag=!creative,scores={deathswap.carrot_right_click=1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="potion",item_name="team_blue"] run function deathswap:team/join/blue
execute as @a[tag=!creative,scores={deathswap.carrot_right_click=1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="potion",item_name="team_yellow"] run function deathswap:team/join/yellow
execute as @a[tag=!creative,scores={deathswap.carrot_right_click=1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="potion",item_name="team_green"] run function deathswap:team/join/green

#team_choose disable
execute if score *team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] unless items entity @s hotbar.2 *[custom_data={ui:1b}] run function deathswap:team/choose_disable
execute if score *team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] unless items entity @s hotbar.3 *[custom_data={ui:1b}] run function deathswap:team/choose_disable
execute if score *team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] unless items entity @s hotbar.4 *[custom_data={ui:1b}] run function deathswap:team/choose_disable
execute if score *team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] unless items entity @s hotbar.5 *[custom_data={ui:1b}] run function deathswap:team/choose_disable
execute if score *team_choose deathswap.setting matches 0 as @a[tag=admin,tag=!creative] unless items entity @s hotbar.6 *[custom_data={ui:1b}] run function deathswap:team/choose_disable

execute as @a[tag=admin,tag=!creative,scores={deathswap.carrot_right_click=1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="barrier"] run function deathswap:team/choose_disable

#team air
execute if score *team_choose deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s hotbar.2 *[custom_data={ui:1b}] run item replace entity @s hotbar.2 with air
execute if score *team_choose deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s hotbar.3 *[custom_data={ui:1b}] run item replace entity @s hotbar.3 with air
execute if score *team_choose deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s hotbar.4 *[custom_data={ui:1b}] run item replace entity @s hotbar.4 with air
execute if score *team_choose deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s hotbar.5 *[custom_data={ui:1b}] run item replace entity @s hotbar.5 with air
execute if score *team_choose deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s hotbar.6 *[custom_data={ui:1b}] run item replace entity @s hotbar.6 with air