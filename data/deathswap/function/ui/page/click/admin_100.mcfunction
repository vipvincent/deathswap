#special_gameplay

#gmchange
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] unless items entity @s inventory.11 *[custom_data={ui:1b}] run function deathswap:setting/gmchange/switch
execute if score gmchange deathswap.setting matches 1 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] unless items entity @s inventory.20 *[custom_data={ui:1b}] run function deathswap:ui/page/change {ui_page:101}

#killer
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] unless items entity @s inventory.12 *[custom_data={ui:1b}] run function deathswap:setting/killer/switch
execute if score mode deathswap.setting matches 2 if score killer deathswap.setting matches 1 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] unless items entity @s inventory.21 *[custom_data={ui:1b}] run function deathswap:ui/page/change {ui_page:102}

#arena
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] unless items entity @s inventory.13 *[custom_data={ui:1b}] run function deathswap:setting/arena/switch
execute if score arena deathswap.setting matches 1 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] unless items entity @s inventory.22 *[custom_data={ui:1b}] run function deathswap:ui/page/change {ui_page:103}

#random_effect
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] unless items entity @s inventory.14 *[custom_data={ui:1b}] run function deathswap:setting/random_effect/switch
execute if score random_effect deathswap.setting matches 1 as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] unless items entity @s inventory.23 *[custom_data={ui:1b}] run function deathswap:ui/page/change {ui_page:104}
