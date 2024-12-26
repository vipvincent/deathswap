#hotbar
execute as @a[tag=admin,tag=!creative,gamemode=!creative] unless items entity @s hotbar.0 *[custom_data={ui:1b}] run gamemode creative @s
execute as @a[tag=admin,tag=creative,gamemode=creative] unless items entity @s hotbar.0 *[custom_data={ui:1b}] run gamemode survival @s
execute as @a[tag=admin,tag=!creative] unless items entity @s hotbar.1 *[custom_data={ui:1b}] run function deathswap:prepare/tp

execute as @e[type=armor_stand,tag=setlobby] at @s run function deathswap:prepare/lobby_set
execute as @a[tag=admin,tag=!creative] at @s unless items entity @s hotbar.7 *[custom_data={ui:1b}] run function deathswap:prepare/lobby_set

execute as @a[tag=admin,tag=!creative] unless items entity @s hotbar.8 *[custom_data={ui:1b}] run function deathswap:prepare/checkstart

execute as @a[tag=admin,tag=!creative] unless items entity @s weapon.offhand warped_fungus_on_a_stick[custom_data={ui:1b}] run function deathswap:ui/page/update

#right_click
execute as @a[tag=admin,tag=creative,scores={deathswap.carrot_right_click=1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b}] run gamemode survival @s
execute as @a[tag=admin,tag=!creative,scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand feather[custom_data={ui:1b}] run gamemode creative @s

execute as @a[tag=admin,tag=!creative,scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand slime_ball[custom_data={ui:1b}] run function deathswap:prepare/tp
execute as @a[tag=admin,tag=!creative,scores={deathswap.warped_right_click=1}] at @s if items entity @s weapon.mainhand armor_stand[custom_data={ui:1b}] run function deathswap:prepare/lobby_set
execute as @a[tag=admin,tag=!creative,scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand emerald[custom_data={ui:1b}] run function deathswap:prepare/checkstart
