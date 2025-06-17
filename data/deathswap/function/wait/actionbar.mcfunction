#wait_actionbar

#en
execute if score language deathswap.setting matches 1 as @a[team=red,tag=!killer] run title @s actionbar [{"text": "§cRed"}]
execute if score language deathswap.setting matches 1 as @a[team=blue,tag=!killer] run title @s actionbar [{"text": "§9Blue"}]
execute if score language deathswap.setting matches 1 as @a[team=yellow,tag=!killer] run title @s actionbar [{"text": "§eYellow"}]
execute if score language deathswap.setting matches 1 as @a[team=green,tag=!killer] run title @s actionbar [{"text": "§aGreen"}]
execute if score language deathswap.setting matches 1 as @a[team=spectator] run title @s actionbar [{"text": "§7Spectator"}]
#for killer
execute if score language deathswap.setting matches 1 as @a[team=red,tag=killer] run title @s actionbar [{"text": "§4Killer§7/§cRed"}]
execute if score language deathswap.setting matches 1 as @a[team=blue,tag=killer] run title @s actionbar [{"text": "§4Killer§7/§9Blue"}]
execute if score language deathswap.setting matches 1 as @a[team=yellow,tag=killer] run title @s actionbar [{"text": "§4Killer§7/§eYellow"}]
execute if score language deathswap.setting matches 1 as @a[team=green,tag=killer] run title @s actionbar [{"text": "§4Killer§7/§aGreen"}]

#中文
execute if score language deathswap.setting matches 2 as @a[team=red,tag=!killer] run title @s actionbar [{"text": "§c紅隊"}]
execute if score language deathswap.setting matches 2 as @a[team=blue,tag=!killer] run title @s actionbar [{"text": "§9藍隊"}]
execute if score language deathswap.setting matches 2 as @a[team=yellow,tag=!killer] run title @s actionbar [{"text": "§e黃隊"}]
execute if score language deathswap.setting matches 2 as @a[team=green,tag=!killer] run title @s actionbar [{"text": "§a綠隊"}]
execute if score language deathswap.setting matches 2 as @a[team=spectator] run title @s actionbar [{"text": "§7旁觀"}]
#for killer
execute if score language deathswap.setting matches 2 as @a[team=red,tag=killer] run title @s actionbar [{"text": "§4殺手§7/§c紅隊"}]
execute if score language deathswap.setting matches 2 as @a[team=blue,tag=killer] run title @s actionbar [{"text": "§4殺手§7/§9藍隊"}]
execute if score language deathswap.setting matches 2 as @a[team=yellow,tag=killer] run title @s actionbar [{"text": "§4殺手§7/§e黃隊"}]
execute if score language deathswap.setting matches 2 as @a[team=green,tag=killer] run title @s actionbar [{"text": "§4殺手§7/§a綠隊"}]
