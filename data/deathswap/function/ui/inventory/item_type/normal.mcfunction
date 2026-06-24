#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/normal.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#create_base_item
$item replace entity @s $(slot) with paper[\
    custom_data={ui:1b,ui_id:"$(id)"},$(components) \
]

#---
#data temp
$function deathswap:ui/inventory/item_type/data/slot {slot:"$(slot)"}
$function deathswap:ui/inventory/item_type/data/item {item:$(item)}
$function deathswap:ui/inventory/item_type/data/count {count:$(count)}
$function deathswap:ui/inventory/item_type/data/name {name_en:$(name_en),name_zhtw:$(name_zhtw)}
$function deathswap:ui/inventory/item_type/data/lore {lore_en:$(lore_en),lore_zhtw:$(lore_zhtw)}

#---
#item_modifer - item_model
function deathswap:ui/inventory/item_type/item_modifer/item_model with storage deathswap:temp inventory

#item_modifer - count
function deathswap:ui/inventory/item_type/item_modifer/count with storage deathswap:temp inventory

#item_modifer - name
function deathswap:ui/inventory/item_type/item_modifer/name with storage deathswap:temp inventory

#item_modifer - lore
function deathswap:ui/inventory/item_type/item_modifer/lore with storage deathswap:temp inventory

#---
#data temp - remove
function deathswap:ui/inventory/item_type/data/remove

#---
#click
$execute at @s if items entity @s player.cursor *[custom_data~{ui_id:"$(id)"}] run $(command)
$execute at @s if items entity @s player.cursor *[custom_data~{ui_id:"$(id)"}] run item replace entity @s player.cursor with air
