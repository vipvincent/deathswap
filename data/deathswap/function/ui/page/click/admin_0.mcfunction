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
