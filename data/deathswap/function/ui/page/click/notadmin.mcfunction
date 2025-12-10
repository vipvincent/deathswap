#notadmin

#score calculation
execute as @a[tag=notadmin] unless items entity @s inventory.12 *[custom_data={ui:1b}] run function deathswap:ui/score_calculation

#info
execute as @a[tag=notadmin] unless items entity @s inventory.13 *[custom_data={ui:1b}] run function deathswap:ui/info

#tip
execute as @a[tag=notadmin] unless items entity @s inventory.14 *[custom_data={ui:1b}] run function deathswap:ui/click_admin
