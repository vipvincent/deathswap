#hotbar
execute as @a[tag=admin,tag=!creative,gamemode=!creative] unless items entity @s hotbar.0 *[custom_data={ui:1b}] run gamemode creative @s
execute as @a[tag=admin,tag=creative,gamemode=creative] unless items entity @s hotbar.0 *[custom_data={ui:1b}] run gamemode survival @s
execute as @a[tag=admin,tag=!creative,predicate=!deathswap:is_sneaking] unless items entity @s hotbar.1 *[custom_data={ui:1b}] run function deathswap:prepare/tpall_here
execute as @a[tag=admin,tag=!creative,predicate=deathswap:is_sneaking] unless items entity @s hotbar.1 *[custom_data={ui:1b}] run function deathswap:prepare/tpall_lobby


execute as @a[tag=admin,tag=!creative] unless items entity @s hotbar.8 *[custom_data={ui:1b}] run function deathswap:wait/wait_start

execute as @e[type=armor_stand,tag=setlobby] at @s run function deathswap:prepare/lobby_set
execute as @a[tag=admin,tag=!creative] at @s unless items entity @s hotbar.7 *[custom_data={ui:1b}] run function deathswap:prepare/lobby_set

#right_click
execute as @a[tag=admin,tag=creative,scores={deathswap.carrot_right_click=1}] \
    if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="writable_book"] run gamemode survival @s
execute as @a[tag=admin,tag=!creative,scores={deathswap.carrot_right_click=1}] \
    if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="feather"] run gamemode creative @s

execute as @a[tag=admin,tag=!creative,scores={deathswap.carrot_right_click=1},predicate=!deathswap:is_sneaking] \
    if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="ender_pearl"] run function deathswap:prepare/tpall_here
execute as @a[tag=admin,tag=!creative,scores={deathswap.carrot_right_click=1},predicate=deathswap:is_sneaking] \
    if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="ender_pearl"] run function deathswap:prepare/tpall_lobby

execute as @a[tag=admin,tag=!creative,scores={deathswap.carrot_right_click=1}] \
    if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={ui:1b},item_model="emerald"] run function deathswap:wait/wait_start
