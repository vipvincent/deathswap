#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/page/armor_display.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#air
execute if score *armor deathswap.setting matches 0 run item replace entity @s armor.head with air
execute if score *armor deathswap.setting matches 0 run item replace entity @s armor.chest with air
execute if score *armor deathswap.setting matches 0 run item replace entity @s armor.legs with air
execute if score *armor deathswap.setting matches 0 run item replace entity @s armor.feet with air

#1 leather
execute if score *armor deathswap.setting matches 1 run item replace entity @s armor.head with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:leather_helmet",equippable={slot:"head",asset_id:"leather",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 1 run item replace entity @s armor.chest with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:leather_chestplate",equippable={slot:"chest",asset_id:"leather",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 1 run item replace entity @s armor.legs with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:leather_leggings",equippable={slot:"legs",asset_id:"leather",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 1 run item replace entity @s armor.feet with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:leather_boots",equippable={slot:"feet",asset_id:"leather",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]

#1 leather color
execute if score *armor deathswap.setting matches 1 as @s[team=red] run function deathswap:lib/armor/leather_color {dyed_color:"11546150"}
execute if score *armor deathswap.setting matches 1 as @s[team=blue] run function deathswap:lib/armor/leather_color {dyed_color:"3949748"}
execute if score *armor deathswap.setting matches 1 as @s[team=green] run function deathswap:lib/armor/leather_color {dyed_color:"8439583"}
execute if score *armor deathswap.setting matches 1 as @s[team=yellow] run function deathswap:lib/armor/leather_color {dyed_color:"16701501"}
execute if score *armor deathswap.setting matches 1 as @s[team=spectator] run function deathswap:lib/armor/leather_color {dyed_color:"10329495"}

#2 copper
execute if score *armor deathswap.setting matches 2 run item replace entity @s armor.head with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:copper_helmet",equippable={slot:"head",asset_id:"copper",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 2 run item replace entity @s armor.chest with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:copper_chestplate",equippable={slot:"chest",asset_id:"copper",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 2 run item replace entity @s armor.legs with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:copper_leggings",equippable={slot:"legs",asset_id:"copper",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 2 run item replace entity @s armor.feet with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:copper_boots",equippable={slot:"feet",asset_id:"copper",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]

#3 chainmail
execute if score *armor deathswap.setting matches 3 run item replace entity @s armor.head with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:chainmail_helmet" ,equippable={slot:"head",asset_id:"chainmail",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 3 run item replace entity @s armor.chest with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:chainmail_chestplate",equippable={slot:"chest",asset_id:"chainmail",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 3 run item replace entity @s armor.legs with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:chainmail_leggings",equippable={slot:"legs",asset_id:"chainmail",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 3 run item replace entity @s armor.feet with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:chainmail_boots",equippable={slot:"feet",asset_id:"chainmail",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]

#4 iron
execute if score *armor deathswap.setting matches 4 run item replace entity @s armor.head with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:iron_helmet",equippable={slot:"head",asset_id:"iron",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 4 run item replace entity @s armor.chest with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:iron_chestplate",equippable={slot:"chest",asset_id:"iron",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 4 run item replace entity @s armor.legs with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:iron_leggings",equippable={slot:"legs",asset_id:"iron",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 4 run item replace entity @s armor.feet with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:iron_boots",equippable={slot:"feet",asset_id:"iron",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]

#5 golden
execute if score *armor deathswap.setting matches 5 run item replace entity @s armor.head with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:golden_helmet",equippable={slot:"head",asset_id:"gold",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 5 run item replace entity @s armor.chest with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:golden_chestplate",equippable={slot:"chest",asset_id:"gold",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 5 run item replace entity @s armor.legs with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:golden_leggings",equippable={slot:"legs",asset_id:"gold",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 5 run item replace entity @s armor.feet with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:golden_boots",equippable={slot:"feet",asset_id:"gold",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]

#6 diamond
execute if score *armor deathswap.setting matches 6 run item replace entity @s armor.head with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:diamond_helmet",equippable={slot:"head",asset_id:"diamond",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 6 run item replace entity @s armor.chest with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:diamond_chestplate",equippable={slot:"chest",asset_id:"diamond",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 6 run item replace entity @s armor.legs with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:diamond_leggings",equippable={slot:"legs",asset_id:"diamond",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 6 run item replace entity @s armor.feet with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:diamond_boots",equippable={slot:"feet",asset_id:"diamond",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]

#7 netherite
execute if score *armor deathswap.setting matches 7 run item replace entity @s armor.head with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:netherite_helmet",equippable={slot:"head",asset_id:"netherite",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 7 run item replace entity @s armor.chest with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:netherite_chestplate",equippable={slot:"chest",asset_id:"netherite",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 7 run item replace entity @s armor.legs with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:netherite_leggings",equippable={slot:"legs",asset_id:"netherite",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]
execute if score *armor deathswap.setting matches 7 run item replace entity @s armor.feet with stick[custom_data={ui:1b},tooltip_display={hide_tooltip:true},unbreakable={},item_model="minecraft:netherite_boots",equippable={slot:"feet",asset_id:"netherite",equip_sound:{sound_id:item.armor.equip_generic,range:0}}]

#template
execute if score *armor deathswap.setting matches 1.. as @s[team=red] run function deathswap:lib/armor/template {material:"redstone"}
execute if score *armor deathswap.setting matches 1.. as @s[team=blue] run function deathswap:lib/armor/template {material:"lapis"}
execute if score *armor deathswap.setting matches 1.. as @s[team=green] run function deathswap:lib/armor/template {material:"emerald"}
execute if score *armor deathswap.setting matches 1.. as @s[team=yellow] run function deathswap:lib/armor/template {material:"gold"}
execute if score *armor deathswap.setting matches 1.. as @s[team=spectator] run function deathswap:lib/armor/template {material:"iron"}