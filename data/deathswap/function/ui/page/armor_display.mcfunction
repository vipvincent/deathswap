#1 leather
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=!creative] armor.head with leather_helmet[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"head",asset_id:"leather",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=!creative] armor.chest with leather_chestplate[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"chest",asset_id:"leather",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=!creative] armor.legs with leather_leggings[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"legs",asset_id:"leather",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=!creative] armor.feet with leather_boots[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"feet",asset_id:"leather",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]

#color
execute if score armor deathswap.setting matches 1 as @a[tag=!creative] run item modify entity @s armor.head deathswap:leather_color
execute if score armor deathswap.setting matches 1 as @a[tag=!creative] run item modify entity @s armor.chest deathswap:leather_color
execute if score armor deathswap.setting matches 1 as @a[tag=!creative] run item modify entity @s armor.legs deathswap:leather_color
execute if score armor deathswap.setting matches 1 as @a[tag=!creative] run item modify entity @s armor.feet deathswap:leather_color

#2 chainmail
execute if score armor deathswap.setting matches 2 run item replace entity @a[tag=!creative] armor.head with chainmail_helmet[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"head",asset_id:"chainmail",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 2 run item replace entity @a[tag=!creative] armor.chest with chainmail_chestplate[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"chest",asset_id:"chainmail",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 2 run item replace entity @a[tag=!creative] armor.legs with chainmail_leggings[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"legs",asset_id:"chainmail",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 2 run item replace entity @a[tag=!creative] armor.feet with chainmail_boots[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"feet",asset_id:"chainmail",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]

#3 iron
execute if score armor deathswap.setting matches 3 run item replace entity @a[tag=!creative] armor.head with iron_helmet[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"head",asset_id:"iron",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 3 run item replace entity @a[tag=!creative] armor.chest with iron_chestplate[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"chest",asset_id:"iron",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 3 run item replace entity @a[tag=!creative] armor.legs with iron_leggings[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"legs",asset_id:"iron",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 3 run item replace entity @a[tag=!creative] armor.feet with iron_boots[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"feet",asset_id:"iron",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]

#4 golden
execute if score armor deathswap.setting matches 4 run item replace entity @a[tag=!creative] armor.head with golden_helmet[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"head",asset_id:"gold",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 4 run item replace entity @a[tag=!creative] armor.chest with golden_chestplate[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"chest",asset_id:"gold",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 4 run item replace entity @a[tag=!creative] armor.legs with golden_leggings[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"legs",asset_id:"gold",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 4 run item replace entity @a[tag=!creative] armor.feet with golden_boots[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"feet",asset_id:"gold",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]

#5 diamond
execute if score armor deathswap.setting matches 5 run item replace entity @a[tag=!creative] armor.head with diamond_helmet[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"head",asset_id:"diamond",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 5 run item replace entity @a[tag=!creative] armor.chest with diamond_chestplate[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"chest",asset_id:"diamond",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 5 run item replace entity @a[tag=!creative] armor.legs with diamond_leggings[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"legs",asset_id:"diamond",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 5 run item replace entity @a[tag=!creative] armor.feet with diamond_boots[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"feet",asset_id:"diamond",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]

#6 netherite
execute if score armor deathswap.setting matches 6 run item replace entity @a[tag=!creative] armor.head with netherite_helmet[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"head",asset_id:"netherite",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 6 run item replace entity @a[tag=!creative] armor.chest with netherite_chestplate[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"chest",asset_id:"netherite",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 6 run item replace entity @a[tag=!creative] armor.legs with netherite_leggings[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"legs",asset_id:"netherite",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score armor deathswap.setting matches 6 run item replace entity @a[tag=!creative] armor.feet with netherite_boots[custom_data={ui:1b},hide_tooltip={},unbreakable={},equippable={slot:"feet",asset_id:"netherite",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]

#template
execute if score armor deathswap.setting matches 1.. as @a[tag=!creative] run item modify entity @s armor.head deathswap:template
execute if score armor deathswap.setting matches 1.. as @a[tag=!creative] run item modify entity @s armor.chest deathswap:template
execute if score armor deathswap.setting matches 1.. as @a[tag=!creative] run item modify entity @s armor.legs deathswap:template
execute if score armor deathswap.setting matches 1.. as @a[tag=!creative] run item modify entity @s armor.feet deathswap:template