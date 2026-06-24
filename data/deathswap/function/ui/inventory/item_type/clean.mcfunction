#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/item_type/clean.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#clean
$execute if items entity @s $(slot) *[custom_data~{ui:1b}] run item replace entity @s $(slot) with air