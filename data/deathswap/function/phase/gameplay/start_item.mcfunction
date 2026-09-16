#--------------------------------------------------
#Death Swap
#data/deathswap/function/phase/gameplay/start_item.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#tool
#1 wood
execute if score *tool deathswap.setting matches 1 run give @a[tag=player] wooden_sword
execute if score *tool deathswap.setting matches 1 run give @a[tag=player] wooden_axe
execute if score *tool deathswap.setting matches 1 run give @a[tag=player] wooden_pickaxe
execute if score *tool deathswap.setting matches 1 run give @a[tag=player] wooden_shovel
#2 stone
execute if score *tool deathswap.setting matches 2 run give @a[tag=player] stone_sword
execute if score *tool deathswap.setting matches 2 run give @a[tag=player] stone_axe
execute if score *tool deathswap.setting matches 2 run give @a[tag=player] stone_pickaxe
execute if score *tool deathswap.setting matches 2 run give @a[tag=player] stone_shovel
#4 copper
execute if score *tool deathswap.setting matches 3 run give @a[tag=player] copper_sword
execute if score *tool deathswap.setting matches 3 run give @a[tag=player] copper_axe
execute if score *tool deathswap.setting matches 3 run give @a[tag=player] copper_pickaxe
execute if score *tool deathswap.setting matches 3 run give @a[tag=player] copper_shovel
#4 iron
execute if score *tool deathswap.setting matches 4 run give @a[tag=player] iron_sword
execute if score *tool deathswap.setting matches 4 run give @a[tag=player] iron_axe
execute if score *tool deathswap.setting matches 4 run give @a[tag=player] iron_pickaxe
execute if score *tool deathswap.setting matches 4 run give @a[tag=player] iron_shovel
#5 golden
execute if score *tool deathswap.setting matches 5 run give @a[tag=player] golden_sword
execute if score *tool deathswap.setting matches 5 run give @a[tag=player] golden_axe
execute if score *tool deathswap.setting matches 5 run give @a[tag=player] golden_pickaxe
execute if score *tool deathswap.setting matches 5 run give @a[tag=player] golden_shovel
#6 diamond
execute if score *tool deathswap.setting matches 6 run give @a[tag=player] diamond_sword
execute if score *tool deathswap.setting matches 6 run give @a[tag=player] diamond_axe
execute if score *tool deathswap.setting matches 6 run give @a[tag=player] diamond_pickaxe
execute if score *tool deathswap.setting matches 6 run give @a[tag=player] diamond_shovel
#7 netherite
execute if score *tool deathswap.setting matches 7 run give @a[tag=player] netherite_sword
execute if score *tool deathswap.setting matches 7 run give @a[tag=player] netherite_axe
execute if score *tool deathswap.setting matches 7 run give @a[tag=player] netherite_pickaxe
execute if score *tool deathswap.setting matches 7 run give @a[tag=player] netherite_shovel

#armor
#1 leather
execute if score *armor deathswap.setting matches 1 run item replace entity @a[tag=player] armor.head with leather_helmet
execute if score *armor deathswap.setting matches 1 run item replace entity @a[tag=player] armor.chest with leather_chestplate
execute if score *armor deathswap.setting matches 1 run item replace entity @a[tag=player] armor.legs with leather_leggings
execute if score *armor deathswap.setting matches 1 run item replace entity @a[tag=player] armor.feet with leather_boots

#2 copprt
execute if score *armor deathswap.setting matches 2 run item replace entity @a[tag=player] armor.head with copper_helmet
execute if score *armor deathswap.setting matches 2 run item replace entity @a[tag=player] armor.chest with copper_chestplate
execute if score *armor deathswap.setting matches 2 run item replace entity @a[tag=player] armor.legs with copper_leggings
execute if score *armor deathswap.setting matches 2 run item replace entity @a[tag=player] armor.feet with copper_boots

#3 chainmail
execute if score *armor deathswap.setting matches 3 run item replace entity @a[tag=player] armor.head with chainmail_helmet
execute if score *armor deathswap.setting matches 3 run item replace entity @a[tag=player] armor.chest with chainmail_chestplate
execute if score *armor deathswap.setting matches 3 run item replace entity @a[tag=player] armor.legs with chainmail_leggings
execute if score *armor deathswap.setting matches 3 run item replace entity @a[tag=player] armor.feet with chainmail_boots

#4 iron
execute if score *armor deathswap.setting matches 4 run item replace entity @a[tag=player] armor.head with iron_helmet
execute if score *armor deathswap.setting matches 4 run item replace entity @a[tag=player] armor.chest with iron_chestplate
execute if score *armor deathswap.setting matches 4 run item replace entity @a[tag=player] armor.legs with iron_leggings
execute if score *armor deathswap.setting matches 4 run item replace entity @a[tag=player] armor.feet with iron_boots

#5 gold
execute if score *armor deathswap.setting matches 5 run item replace entity @a[tag=player] armor.head with golden_helmet
execute if score *armor deathswap.setting matches 5 run item replace entity @a[tag=player] armor.chest with golden_chestplate
execute if score *armor deathswap.setting matches 5 run item replace entity @a[tag=player] armor.legs with golden_leggings
execute if score *armor deathswap.setting matches 5 run item replace entity @a[tag=player] armor.feet with golden_boots

#6 diamond
execute if score *armor deathswap.setting matches 6 run item replace entity @a[tag=player] armor.head with diamond_helmet
execute if score *armor deathswap.setting matches 6 run item replace entity @a[tag=player] armor.chest with diamond_chestplate
execute if score *armor deathswap.setting matches 6 run item replace entity @a[tag=player] armor.legs with diamond_leggings
execute if score *armor deathswap.setting matches 5 run item replace entity @a[tag=player] armor.feet with diamond_boots

#7 netherite
execute if score *armor deathswap.setting matches 7 run item replace entity @a[tag=player] armor.head with netherite_helmet
execute if score *armor deathswap.setting matches 7 run item replace entity @a[tag=player] armor.chest with netherite_chestplate
execute if score *armor deathswap.setting matches 7 run item replace entity @a[tag=player] armor.legs with netherite_leggings
execute if score *armor deathswap.setting matches 7 run item replace entity @a[tag=player] armor.feet with netherite_boots

#leather color
execute if score *armor deathswap.setting matches 1 as @a[tag=player,team=red] run function deathswap:lib/armor/leather_color {dyed_color:"11546150"}
execute if score *armor deathswap.setting matches 1 as @a[tag=player,team=blue] run function deathswap:lib/armor/leather_color {dyed_color:"3949748"}
execute if score *armor deathswap.setting matches 1 as @a[tag=player,team=green] run function deathswap:lib/armor/leather_color {dyed_color:"8439583"}
execute if score *armor deathswap.setting matches 1 as @a[tag=player,team=yellow] run function deathswap:lib/armor/leather_color {dyed_color:"16701501"}
execute if score *armor deathswap.setting matches 1 as @a[tag=player,team=spectator] run function deathswap:lib/armor/leather_color {dyed_color:"10329495"}

#template
execute if score *armor deathswap.setting matches 1.. as @a[tag=player,team=red] run function deathswap:lib/armor/template {material:"redstone"}
execute if score *armor deathswap.setting matches 1.. as @a[tag=player,team=blue] run function deathswap:lib/armor/template {material:"lapis"}
execute if score *armor deathswap.setting matches 1.. as @a[tag=player,team=green] run function deathswap:lib/armor/template {material:"emerald"}
execute if score *armor deathswap.setting matches 1.. as @a[tag=player,team=yellow] run function deathswap:lib/armor/template {material:"gold"}
execute if score *armor deathswap.setting matches 1.. as @a[tag=player,team=spectator] run function deathswap:lib/armor/template {material:"iron"}
