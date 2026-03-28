#advancement/main/lose

#return
execute unless entity @s[advancements={deathswap:main/criteria/lose=true}] run return fail

#adv
execute if score *language deathswap.setting matches 1 run advancement grant @s[tag=!killer] only deathswap:main/en/lose
execute if score *language deathswap.setting matches 2 run advancement grant @s[tag=!killer] only deathswap:main/tw/lose

execute if score *language deathswap.setting matches 1 run advancement grant @s[tag=killer] only deathswap:main/en/killer_lose
execute if score *language deathswap.setting matches 2 run advancement grant @s[tag=killer] only deathswap:main/tw/killer_lose