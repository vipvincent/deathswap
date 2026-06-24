#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/page_change.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

$scoreboard players set @s deathswap.ui_page $(goto_page)
execute as @s at @s run playsound ui.button.click master @s ~ ~ ~
