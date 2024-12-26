#only one
execute if score killer.quantity deathswap.setting matches 0 run tag @a[tag=player,sort=random,limit=1] add killer

#one per team
execute if score killer.quantity deathswap.setting matches 1 run tag @a[team=red,tag=player,sort=random,limit=1] add killer 
execute if score killer.quantity deathswap.setting matches 1 run tag @a[team=blue,tag=player,sort=random,limit=1] add killer 
execute if score killer.quantity deathswap.setting matches 1 run tag @a[team=yellow,tag=player,sort=random,limit=1] add killer 
execute if score killer.quantity deathswap.setting matches 1 run tag @a[team=green,tag=player,sort=random,limit=1] add killer 

#text
execute if score language deathswap.setting matches 1 run title @a[tag=killer] title {"text": "§4You are a killer"}
execute if score language deathswap.setting matches 2 run title @a[tag=killer] title {"text": "§4你是殺手"}
execute if score language deathswap.setting matches 1 run title @a[tag=killer] subtitle {"text": "§4Kill everyone you can"}
execute if score language deathswap.setting matches 2 run title @a[tag=killer] subtitle {"text": "§4盡可能殺光所有人吧"}
execute if score language deathswap.setting matches 1 run tellraw @a[tag=killer] [{"text": "§6Death Swap§7 | §r"},{"text": "§fYou are a §4§lkiller§r§f! Kill everyone you can!"}]
execute if score language deathswap.setting matches 2 run tellraw @a[tag=killer] [{"text": "§6死亡交換§7 | §r"},{"text": "§f你是§4§l殺手§r§f！盡可能殺光所有人吧！"}]
execute if score language deathswap.setting matches 1 run tellraw @a[tag=!killer] [{"text": "§6Death Swap§7 | §r"},{"text": "§fThere is a §4§lkiller§r§f in this game, please be careful!"}]
execute if score language deathswap.setting matches 2 run tellraw @a[tag=!killer] [{"text": "§6死亡交換§7 | §r"},{"text": "§f本場遊戲上有§4§l殺手§r§f，請務必留意！"}]

execute as @a[tag=killer] at @s run playsound entity.skeleton.death master @s ~ ~ ~ 1 1 1
execute as @a[tag=!killer] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1

#item
execute if score killer deathswap.setting matches 1 if score killer.weapon deathswap.setting matches 1 run give @a[tag=killer] wooden_sword
execute if score killer deathswap.setting matches 1 if score killer.weapon deathswap.setting matches 2 run give @a[tag=killer] stone_sword
execute if score killer deathswap.setting matches 1 if score killer.weapon deathswap.setting matches 3 run give @a[tag=killer] iron_sword
execute if score killer deathswap.setting matches 1 if score killer.weapon deathswap.setting matches 4 run give @a[tag=killer] golden_sword
execute if score killer deathswap.setting matches 1 if score killer.weapon deathswap.setting matches 5 run give @a[tag=killer] diamond_sword
execute if score killer deathswap.setting matches 1 if score killer.weapon deathswap.setting matches 6 run give @a[tag=killer] netherite_sword