#effect
$effect give @a[tag=player] $(effect) $(time) 0

#text
$execute if score language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§fRandom Effect: "},{"translate":"effect.minecraft.$(effect)"}]
$execute if score language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§f隨機效果："},{"translate":"effect.minecraft.$(effect)"}]

#sound
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~