#notadmin
execute as @a[tag=notadmin] unless items entity @s inventory.13 *[custom_data={ui:1b}] run function deathswap:ui/click_admin

execute if score team_choose deathswap.setting matches 1 as @a[tag=notadmin] unless items entity @s weapon.offhand warped_fungus_on_a_stick[custom_data={ui:1b}] run function deathswap:ui/page/update
execute if score team_choose deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s weapon.offhand *[custom_data={ui:1b}] run item replace entity @s weapon.offhand with air