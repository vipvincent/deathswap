#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/main.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#admin
execute as @a[tag=admin,tag=creative] run function deathswap:ui/inventory/page/admin_creative
execute as @a[tag=admin,tag=!creative] run function deathswap:ui/inventory/page/admin_hotbar
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] run function deathswap:ui/inventory/page/admin_0
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=1}] run function deathswap:ui/inventory/page/admin_1
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=2}] run function deathswap:ui/inventory/page/admin_2
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=100}] run function deathswap:ui/inventory/page/admin_100
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=101}] run function deathswap:ui/inventory/page/admin_101
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=102}] run function deathswap:ui/inventory/page/admin_102
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=103}] run function deathswap:ui/inventory/page/admin_103
execute as @a[tag=admin,tag=!creative,scores={deathswap.ui_page=104}] run function deathswap:ui/inventory/page/admin_104

#notadmin
execute as @a[tag=notadmin] run function deathswap:ui/inventory/page/notadmin

#team_choose
execute as @a[tag=!creative] run function deathswap:ui/inventory/page/team_choose

#armor_display
execute as @a[tag=!creative] run function deathswap:ui/inventory/page/armor_display

#---
#clear ui
execute as @a if items entity @s player.cursor *[custom_data~{ui:1b}] run item replace entity @s player.cursor with air
execute as @a if items entity @s player.crafting.0 *[custom_data~{ui:1b}] run item replace entity @s player.crafting.0 with air
execute as @a if items entity @s player.crafting.1 *[custom_data~{ui:1b}] run item replace entity @s player.crafting.1 with air
execute as @a if items entity @s player.crafting.2 *[custom_data~{ui:1b}] run item replace entity @s player.crafting.2 with air
execute as @a if items entity @s player.crafting.3 *[custom_data~{ui:1b}] run item replace entity @s player.crafting.3 with air
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ui:1b}}}}]

#reset ui_page
execute as @a[tag=admin] unless score @s deathswap.ui_page matches -2147483648..2147483647 run scoreboard players set @s deathswap.ui_page 0
scoreboard players reset @a[tag=notadmin] deathswap.ui_page

#reset right click
scoreboard players reset @a deathswap.warped_right_click
