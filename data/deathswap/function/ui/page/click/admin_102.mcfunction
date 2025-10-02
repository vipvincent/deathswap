#special_gameplay/killer

execute if score mode deathswap.setting matches 1 run execute as @a[scores={deathswap.ui_page=102}] run function deathswap:ui/page/change {ui_page:100}
execute if score killer deathswap.setting matches 0 run execute as @a[scores={deathswap.ui_page=102}] run function deathswap:ui/page/change {ui_page:100}

#reset killer setting
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] unless items entity @s inventory.26 *[custom_data={ui:1b}] run function deathswap:setting/killer/default

#killer.quantity
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] unless items entity @s inventory.13 *[custom_data={ui:1b}] run function deathswap:setting/killer/quantity

#killer.identity
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] unless items entity @s inventory.12 *[custom_data={ui:1b}] run function deathswap:setting/killer/identity

#killer.weapon
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] unless items entity @s inventory.14 *[custom_data={ui:1b}] run function deathswap:setting/killer/weapon
