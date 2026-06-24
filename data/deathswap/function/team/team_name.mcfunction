#--------------------------------------------------
#Death Swap
#data/deathswap/function/team/team_name.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#en
execute if score *language deathswap.setting matches 1 run team modify red displayName {"text":"Team Red","color": "red"}
execute if score *language deathswap.setting matches 1 run team modify blue displayName {"text":"Team Blue","color": "blue"}
execute if score *language deathswap.setting matches 1 run team modify green displayName {"text":"Team Green","color": "green"}
execute if score *language deathswap.setting matches 1 run team modify yellow displayName {"text":"Team Yellow","color": "yellow"}

execute if score *language deathswap.setting matches 1 run team modify solo displayName {"text":"Game Team","color": "green"}
execute if score *language deathswap.setting matches 1 run team modify spectator displayName {"text":"Spectator","color": "gray"}

#zhtw
execute if score *language deathswap.setting matches 2 run team modify red displayName {"text":"紅隊","color": "red"}
execute if score *language deathswap.setting matches 2 run team modify blue displayName {"text":"藍隊","color": "blue"}
execute if score *language deathswap.setting matches 2 run team modify green displayName {"text":"綠隊","color": "green"}
execute if score *language deathswap.setting matches 2 run team modify yellow displayName {"text":"黃隊","color": "yellow"}

execute if score *language deathswap.setting matches 2 run team modify solo displayName {"text":"遊戲隊伍","color": "green"}
execute if score *language deathswap.setting matches 2 run team modify spectator displayName {"text":"旁觀","color": "gray"}