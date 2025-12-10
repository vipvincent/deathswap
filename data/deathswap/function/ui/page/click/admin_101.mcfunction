#special_gameplay/gmchange

execute if score *gmchange deathswap.setting matches 0 run execute as @a[scores={deathswap.ui_page=101}] run function deathswap:ui/page/change {ui_page:100}

#reset gmchange setting
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] unless items entity @s inventory.26 *[custom_data={ui:1b}] run function deathswap:setting/gmchange/default

#gmchange.survival_time
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] unless items entity @s inventory.11 *[custom_data={ui:1b},count=5] run function deathswap:setting/gmchange/survival_minus {survival:5}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] unless items entity @s inventory.12 *[custom_data={ui:1b}] run function deathswap:setting/gmchange/survival_minus {survival:1}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] unless items entity @s inventory.13 *[custom_data={ui:1b}] run function deathswap:ui/page/update
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] unless items entity @s inventory.14 *[custom_data={ui:1b}] run function deathswap:setting/gmchange/survival_add {survival:1}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] unless items entity @s inventory.15 *[custom_data={ui:1b},count=5] run function deathswap:setting/gmchange/survival_add {survival:5}

#gmchange.creative_time
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] unless items entity @s inventory.20 *[custom_data={ui:1b},count=5] run function deathswap:setting/gmchange/creative_minus {creative:5}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] unless items entity @s inventory.21 *[custom_data={ui:1b}] run function deathswap:setting/gmchange/creative_minus {creative:1}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] unless items entity @s inventory.22 *[custom_data={ui:1b}] run function deathswap:ui/page/update
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] unless items entity @s inventory.23 *[custom_data={ui:1b}] run function deathswap:setting/gmchange/creative_add {creative:1}
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] unless items entity @s inventory.24 *[custom_data={ui:1b},count=5] run function deathswap:setting/gmchange/creative_add {creative:5}
