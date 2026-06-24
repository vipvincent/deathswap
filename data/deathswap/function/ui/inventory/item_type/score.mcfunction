#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/score.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#create_base_item
$item replace entity @s $(slot) with paper[\
    custom_data={ui:1b,ui_id:"$(id)"},max_stack_size=99,$(components) \
]

#---
#data temp
$function deathswap:ui/inventory/item_type/data/slot {slot:"$(slot)"}
$function deathswap:ui/inventory/item_type/data/item {item:$(item)}
$function deathswap:ui/inventory/item_type/data/count_use_score {count_use_score:"$(count_use_score)"}
$function deathswap:ui/inventory/item_type/data/unit {unit_en:"$(unit_en)",unit_zhtw:"$(unit_zhtw)"}
$function deathswap:ui/inventory/item_type/data/name_disabled {name_disabled_en:$(name_disabled_en),name_disabled_zhtw:$(name_disabled_zhtw)}
$function deathswap:ui/inventory/item_type/data/name {name_en:$(name_en),name_zhtw:$(name_zhtw)}
$function deathswap:ui/inventory/item_type/data/lore {lore_en:$(lore_en),lore_zhtw:$(lore_zhtw)}
$function deathswap:ui/inventory/item_type/data/score {score_name:"$(score_name)",score_objectives:"$(score_objectives)"}
$function deathswap:ui/inventory/item_type/data/toggle {toggle:"$(toggle)"}

function deathswap:ui/inventory/item_type/data/score_to_count

#---
#item_modifer - item_model
function deathswap:ui/inventory/item_type/item_modifer/item_model with storage deathswap:temp inventory

#item_modifer - lore
function deathswap:ui/inventory/item_type/item_modifer/lore with storage deathswap:temp inventory

## count_use_score true
#item_modifer - count
execute if data storage deathswap:temp {inventory:{count_use_score:"true"}} run \
    function deathswap:ui/inventory/item_type/item_modifer/count with storage deathswap:temp inventory

## toggle false
#item_modifer - name_score_unit
execute if data storage deathswap:temp {inventory:{toggle:"false"}} run \
    function deathswap:ui/inventory/item_type/item_modifer/name_score_unit with storage deathswap:temp inventory

## toggle true
#item_modifer - name_disabled
$execute if data storage deathswap:temp {inventory:{toggle:"true"}} if score $(score_name) $(score_objectives) matches 0 run \
    function deathswap:ui/inventory/item_type/item_modifer/name_disabled with storage deathswap:temp inventory

#item_modifer - name_score_unit
$execute if data storage deathswap:temp {inventory:{toggle:"true"}} if score $(score_name) $(score_objectives) matches 1.. run \
    function deathswap:ui/inventory/item_type/item_modifer/name_score_unit with storage deathswap:temp inventory

#item_modifer - enchantment_glint
$execute if data storage deathswap:temp {inventory:{toggle:"true"}} if score $(score_name) $(score_objectives) matches 1.. run item modify entity @s $(slot) deathswap:enchantment_glint

#---
#data temp - remove
function deathswap:ui/inventory/item_type/data/remove

#---
#click
$execute at @s if items entity @s player.cursor *[custom_data~{ui_id:"$(id)"}] run $(command)
$execute at @s if items entity @s player.cursor *[custom_data~{ui_id:"$(id)"}] run item replace entity @s player.cursor with air
