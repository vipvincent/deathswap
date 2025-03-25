#notadmin
execute as @a[tag=notadmin] unless items entity @s inventory.13 *[custom_data={ui:1b}] run function deathswap:ui/click_admin
