#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/placeholder.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#create_base_item
$item replace entity @s $(slot) with stick[\
    custom_data={ui:1b,ui_id:"air"},\
    item_model="air",\
    max_stack_size=1,\
    tooltip_display={hide_tooltip:true},\
]

#click
execute if items entity @s player.cursor *[custom_data~{ui_id:"placeholder"}] run item replace entity @s player.cursor with air