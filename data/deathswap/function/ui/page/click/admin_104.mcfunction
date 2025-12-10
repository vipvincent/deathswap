#special_gameplay/random_effect

execute if score *random_effect deathswap.setting matches 0 run execute as @a[scores={deathswap.ui_page=104}] run function deathswap:ui/page/change {ui_page:100}

#reset arena setting

execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] unless items entity @s inventory.26 *[custom_data={ui:1b}] run function deathswap:setting/random_effect/default

#time
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] unless items entity @s inventory.4 *[custom_data={ui:1b},count=5] run function deathswap:setting/random_effect/time_add {time:5}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] unless items entity @s inventory.13 *[custom_data={ui:1b}] run function deathswap:ui/page/update
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] unless items entity @s inventory.22 *[custom_data={ui:1b},count=5] run function deathswap:setting/random_effect/time_minus {time:5}
