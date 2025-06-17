#back

#back home
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1..100}] unless items entity @s inventory.8 *[custom_data={ui:1b}] run function deathswap:ui/page/change {ui_page:0}
#back special
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101..}] unless items entity @s inventory.8 *[custom_data={ui:1b}] run function deathswap:ui/page/change {ui_page:100}