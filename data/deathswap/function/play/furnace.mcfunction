#mineral
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_iron"}}] run data modify entity @s Item.id set value "minecraft:iron_ingot"
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_copper"}}] run data modify entity @s Item.id set value "minecraft:copper_ingot"
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_gold"}}] run data modify entity @s Item.id set value "minecraft:gold_ingot"
execute as @e[type=item,nbt={Item:{id:"minecraft:ancient_debris"}}] run data modify entity @s Item.id set value "minecraft:netherite_scrap"

#1.21.4
execute as @e[type=item,nbt={Item:{id:"minecraft:resin_clump"}}] run data modify entity @s Item.id set value "minecraft:resin_brick"

#food
execute as @e[type=item,nbt={Item:{id:"minecraft:potato"}}] run data modify entity @s Item.id set value "minecraft:baked_potato"
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp"}}] run data modify entity @s Item.id set value "minecraft:dried_kelp"
execute as @e[type=item,nbt={Item:{id:"minecraft:beef"}}] run data modify entity @s Item.id set value "minecraft:cooked_beef"
execute as @e[type=item,nbt={Item:{id:"minecraft:porkchop"}}] run data modify entity @s Item.id set value "minecraft:cooked_porkchop"
execute as @e[type=item,nbt={Item:{id:"minecraft:mutton"}}] run data modify entity @s Item.id set value "minecraft:cooked_mutton"
execute as @e[type=item,nbt={Item:{id:"minecraft:chicken"}}] run data modify entity @s Item.id set value "minecraft:cooked_chicken"
execute as @e[type=item,nbt={Item:{id:"minecraft:rabbit"}}] run data modify entity @s Item.id set value "minecraft:cooked_rabbit"
execute as @e[type=item,nbt={Item:{id:"minecraft:cod"}}] run data modify entity @s Item.id set value "minecraft:cooked_cod"
execute as @e[type=item,nbt={Item:{id:"minecraft:salmon"}}] run data modify entity @s Item.id set value "minecraft:cooked_salmon"