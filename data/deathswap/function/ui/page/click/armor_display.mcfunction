#off
execute if score armor deathswap.setting matches 0 as @a[tag=admin,tag=!creative] run item replace entity @s armor.head with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name="",equippable={slot:"head",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 0 as @a[tag=admin,tag=!creative] run item replace entity @s armor.chest with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name="",equippable={slot:"chest",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 0 as @a[tag=admin,tag=!creative] run item replace entity @s armor.legs with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name="",equippable={slot:"legs",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 0 as @a[tag=admin,tag=!creative] run item replace entity @s armor.feet with stick[custom_data={ui:1b},max_stack_size=1,tooltip_display={hide_tooltip:true},item_model="air",item_name="",equippable={slot:"feet",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]

execute if score armor deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s armor.head *[custom_data={ui:1b}] run item replace entity @s armor.head with air
execute if score armor deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s armor.chest *[custom_data={ui:1b}] run item replace entity @s armor.chest with air
execute if score armor deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s armor.legs *[custom_data={ui:1b}] run item replace entity @s armor.legs with air
execute if score armor deathswap.setting matches 0 as @a[tag=notadmin] if items entity @s armor.feet *[custom_data={ui:1b}] run item replace entity @s armor.feet with air

#on
execute if score armor deathswap.setting matches 1.. as @a[tag=!creative] unless items entity @s armor.head *[custom_data={ui:1b}] run function deathswap:ui/page/update
execute if score armor deathswap.setting matches 1.. as @a[tag=!creative] unless items entity @s armor.chest *[custom_data={ui:1b}] run function deathswap:ui/page/update
execute if score armor deathswap.setting matches 1.. as @a[tag=!creative] unless items entity @s armor.legs *[custom_data={ui:1b}] run function deathswap:ui/page/update
execute if score armor deathswap.setting matches 1.. as @a[tag=!creative] unless items entity @s armor.feet *[custom_data={ui:1b}] run function deathswap:ui/page/update