#special_gameplay/arena

execute if score *arena deathswap.setting matches 0 run execute as @a[scores={deathswap.ui_page=103}] run function deathswap:ui/page/change {ui_page:100}

#reset arena setting
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] unless items entity @s inventory.26 *[custom_data={ui:1b}] run function deathswap:setting/arena/default

#arena.start
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] unless items entity @s inventory.3 *[custom_data={ui:1b}] run function deathswap:setting/arena/start_add {start:5}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] unless items entity @s inventory.12 *[custom_data={ui:1b}] run function deathswap:ui/page/update
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] unless items entity @s inventory.21 *[custom_data={ui:1b}] run function deathswap:setting/arena/start_minus {start:5}

#arena.border
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] unless items entity @s inventory.4 *[custom_data={ui:1b}] run function deathswap:setting/arena/border_add {border:100}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] unless items entity @s inventory.13 *[custom_data={ui:1b}] run function deathswap:ui/page/update
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] unless items entity @s inventory.22 *[custom_data={ui:1b}] run function deathswap:setting/arena/border_minus {border:100}

#arena.shrink
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] unless items entity @s inventory.14 *[custom_data={ui:1b}] run function deathswap:setting/arena/shrink
