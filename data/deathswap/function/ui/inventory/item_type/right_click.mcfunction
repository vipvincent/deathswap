#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/right_click.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#create_item
$execute if score *language deathswap.setting matches 1 run item replace entity @s $(slot) with warped_fungus_on_a_stick[\
    custom_data={ui:1b,ui_id:"$(id)"},\
    item_model="$(item)",\
    custom_name=[$(name_en),[" (",{"keybind":"key.use"},")"]],\
    lore=$(lore_en),\
    $(components) \
] $(count)
$execute if score *language deathswap.setting matches 2 run item replace entity @s $(slot) with warped_fungus_on_a_stick[\
    custom_data={ui:1b,ui_id:"$(id)"},\
    item_model="$(item)",\
    custom_name=[$(name_zhtw),[" (",{"keybind":"key.use"},")"]],\
    lore=$(lore_zhtw),\
    $(components) \
] $(count)

#---
#click
$execute at @s if items entity @s player.cursor *[custom_data~{ui_id:"$(id)"}] run $(command)
$execute at @s if items entity @s player.cursor *[custom_data~{ui_id:"$(id)"}] run item replace entity @s player.cursor with air

#right_click
$execute at @s if entity @s[scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand *[custom_data~{ui_id:"$(id)"}] run $(command)
$execute at @s if entity @s[scores={deathswap.warped_right_click=1}] if items entity @s weapon.mainhand *[custom_data~{ui_id:"$(id)"}] run scoreboard players reset @s deathswap.warped_right_click


