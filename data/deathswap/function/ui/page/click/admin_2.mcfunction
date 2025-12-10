#team_setting

execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] unless items entity @s inventory.20 *[custom_data={ui:1b}] run function deathswap:setting/team_collisionrule
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] unless items entity @s inventory.21 *[custom_data={ui:1b}] run function deathswap:setting/team_friendlyfire

#mode
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] if score *mode deathswap.setting matches 1 unless items entity @s inventory.22 *[custom_data={ui:1b}] run function deathswap:setting/mode
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] if score *mode deathswap.setting matches 2 unless items entity @s inventory.22 *[custom_data={ui:1b},count=4] run function deathswap:setting/mode

#all_join_solo
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] if score *mode deathswap.setting matches 1 unless items entity @s inventory.13 *[custom_data={ui:1b}] run function deathswap:team/all_join_solo

#random team
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] if score *mode deathswap.setting matches 2 unless items entity @s inventory.12 *[custom_data={ui:1b},count=2] run function deathswap:team/random_main {random:2}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] if score *mode deathswap.setting matches 2 unless items entity @s inventory.13 *[custom_data={ui:1b},count=3] run function deathswap:team/random_main {random:3}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] if score *mode deathswap.setting matches 2 unless items entity @s inventory.14 *[custom_data={ui:1b},count=4] run function deathswap:team/random_main {random:4}

#choose_team
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] unless items entity @s inventory.23 *[custom_data={ui:1b}] run function deathswap:team/choose_team

#reset_team
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] unless items entity @s inventory.24 *[custom_data={ui:1b}] run function deathswap:team/reset_team
