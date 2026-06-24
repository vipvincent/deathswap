#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/list.mcfunction
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
$function deathswap:ui/inventory/item_type/data/item_list {item_list:$(item_list)}
$function deathswap:ui/inventory/item_type/data/count_list {count_list:$(count_list)}
$function deathswap:ui/inventory/item_type/data/name_list {name_list_en:$(name_list_en),name_list_zhtw:$(name_list_zhtw)}
$function deathswap:ui/inventory/item_type/data/lore {lore_en:$(lore_en),lore_zhtw:$(lore_zhtw)}
$function deathswap:ui/inventory/item_type/data/score {score_name:"$(score_name)",score_objectives:"$(score_objectives)"}
$function deathswap:ui/inventory/item_type/data/toggle {toggle:"$(toggle)"}

#list to 
function deathswap:ui/inventory/item_type/data/item_list_to_item with storage deathswap:temp inventory
function deathswap:ui/inventory/item_type/data/name_list_to_name with storage deathswap:temp inventory
function deathswap:ui/inventory/item_type/data/count_list_to_count with storage deathswap:temp inventory

#---
#item_modifer - item_model
function deathswap:ui/inventory/item_type/item_modifer/item_model with storage deathswap:temp inventory

#item_modifer - name
function deathswap:ui/inventory/item_type/item_modifer/name with storage deathswap:temp inventory

#item_modifer - count
function deathswap:ui/inventory/item_type/item_modifer/count with storage deathswap:temp inventory

#item_modifer - lore
function deathswap:ui/inventory/item_type/item_modifer/lore with storage deathswap:temp inventory

## toggle true
#item_modifer - enchantment_glint
$execute if data storage deathswap:temp {inventory:{toggle:"true"}} if score $(score_name) $(score_objectives) matches 1.. run item modify entity @s $(slot) deathswap:enchantment_glint

#---
#data temp - remove
function deathswap:ui/inventory/item_type/data/remove

#---
#click
$execute at @s if items entity @s player.cursor *[custom_data~{ui_id:"$(id)"}] run $(command)
$execute at @s if items entity @s player.cursor *[custom_data~{ui_id:"$(id)"}] run item replace entity @s player.cursor with air
