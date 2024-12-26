#tool
#1 wood
execute if score tool deathswap.setting matches 1 run give @a[tag=player] wooden_sword
execute if score tool deathswap.setting matches 1 run give @a[tag=player] wooden_axe
execute if score tool deathswap.setting matches 1 run give @a[tag=player] wooden_pickaxe
execute if score tool deathswap.setting matches 1 run give @a[tag=player] wooden_shovel
execute if score tool deathswap.setting matches 1 run give @a[tag=player] wooden_hoe
#2 stone
execute if score tool deathswap.setting matches 2 run give @a[tag=player] stone_sword
execute if score tool deathswap.setting matches 2 run give @a[tag=player] stone_axe
execute if score tool deathswap.setting matches 2 run give @a[tag=player] stone_pickaxe
execute if score tool deathswap.setting matches 2 run give @a[tag=player] stone_shovel
execute if score tool deathswap.setting matches 2 run give @a[tag=player] stone_hoe
#3 iron
execute if score tool deathswap.setting matches 3 run give @a[tag=player] iron_sword
execute if score tool deathswap.setting matches 3 run give @a[tag=player] iron_axe
execute if score tool deathswap.setting matches 3 run give @a[tag=player] iron_pickaxe
execute if score tool deathswap.setting matches 3 run give @a[tag=player] iron_shovel
execute if score tool deathswap.setting matches 3 run give @a[tag=player] iron_hoe
#4 golden
execute if score tool deathswap.setting matches 4 run give @a[tag=player] golden_sword
execute if score tool deathswap.setting matches 4 run give @a[tag=player] golden_axe
execute if score tool deathswap.setting matches 4 run give @a[tag=player] golden_pickaxe
execute if score tool deathswap.setting matches 4 run give @a[tag=player] golden_shovel
execute if score tool deathswap.setting matches 4 run give @a[tag=player] golden_hoe
#5 diamond
execute if score tool deathswap.setting matches 5 run give @a[tag=player] diamond_sword
execute if score tool deathswap.setting matches 5 run give @a[tag=player] diamond_axe
execute if score tool deathswap.setting matches 5 run give @a[tag=player] diamond_pickaxe
execute if score tool deathswap.setting matches 5 run give @a[tag=player] diamond_shovel
execute if score tool deathswap.setting matches 5 run give @a[tag=player] diamond_hoe
#6 netherite
execute if score tool deathswap.setting matches 6 run give @a[tag=player] netherite_sword
execute if score tool deathswap.setting matches 6 run give @a[tag=player] netherite_axe
execute if score tool deathswap.setting matches 6 run give @a[tag=player] netherite_pickaxe
execute if score tool deathswap.setting matches 6 run give @a[tag=player] netherite_shovel
execute if score tool deathswap.setting matches 6 run give @a[tag=player] netherite_hoe

#armor
#1 leather
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player] armor.head with leather_helmet
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player] armor.chest with leather_chestplate
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player] armor.legs with leather_leggings
execute if score armor deathswap.setting matches 1 run item replace entity @a[tag=player] armor.feet with leather_boots

#color
execute if score armor deathswap.setting matches 1 as @a[tag=player] run item modify entity @s armor.head deathswap:leather_color
execute if score armor deathswap.setting matches 1 as @a[tag=player] run item modify entity @s armor.chest deathswap:leather_color
execute if score armor deathswap.setting matches 1 as @a[tag=player] run item modify entity @s armor.legs deathswap:leather_color
execute if score armor deathswap.setting matches 1 as @a[tag=player] run item modify entity @s armor.feet deathswap:leather_color

#2 chainmail
execute if score armor deathswap.setting matches 2 run item replace entity @a[tag=player] armor.head with chainmail_helmet
execute if score armor deathswap.setting matches 2 run item replace entity @a[tag=player] armor.chest with chainmail_chestplate
execute if score armor deathswap.setting matches 2 run item replace entity @a[tag=player] armor.legs with chainmail_leggings
execute if score armor deathswap.setting matches 2 run item replace entity @a[tag=player] armor.feet with chainmail_boots

#3 iron
execute if score armor deathswap.setting matches 3 run item replace entity @a[tag=player] armor.head with iron_helmet
execute if score armor deathswap.setting matches 3 run item replace entity @a[tag=player] armor.chest with iron_chestplate
execute if score armor deathswap.setting matches 3 run item replace entity @a[tag=player] armor.legs with iron_leggings
execute if score armor deathswap.setting matches 3 run item replace entity @a[tag=player] armor.feet with iron_boots

#4 gold
execute if score armor deathswap.setting matches 4 run item replace entity @a[tag=player] armor.head with golden_helmet
execute if score armor deathswap.setting matches 4 run item replace entity @a[tag=player] armor.chest with golden_chestplate
execute if score armor deathswap.setting matches 4 run item replace entity @a[tag=player] armor.legs with golden_leggings
execute if score armor deathswap.setting matches 4 run item replace entity @a[tag=player] armor.feet with golden_boots

#5 diamond
execute if score armor deathswap.setting matches 5 run item replace entity @a[tag=player] armor.head with diamond_helmet
execute if score armor deathswap.setting matches 5 run item replace entity @a[tag=player] armor.chest with diamond_chestplate
execute if score armor deathswap.setting matches 5 run item replace entity @a[tag=player] armor.legs with diamond_leggings
execute if score armor deathswap.setting matches 5 run item replace entity @a[tag=player] armor.feet with diamond_boots

#6 netherite
execute if score armor deathswap.setting matches 6 run item replace entity @a[tag=player] armor.head with netherite_helmet
execute if score armor deathswap.setting matches 6 run item replace entity @a[tag=player] armor.chest with netherite_chestplate
execute if score armor deathswap.setting matches 6 run item replace entity @a[tag=player] armor.legs with netherite_leggings
execute if score armor deathswap.setting matches 6 run item replace entity @a[tag=player] armor.feet with netherite_boots

#template
execute if score armor deathswap.setting matches 1.. as @a[tag=player] run item modify entity @s armor.head deathswap:template
execute if score armor deathswap.setting matches 1.. as @a[tag=player] run item modify entity @s armor.chest deathswap:template
execute if score armor deathswap.setting matches 1.. as @a[tag=player] run item modify entity @s armor.legs deathswap:template
execute if score armor deathswap.setting matches 1.. as @a[tag=player] run item modify entity @s armor.feet deathswap:template