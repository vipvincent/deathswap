#actionbar en
execute if score language deathswap.setting matches 1 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=red,tag=!killer] run title @s actionbar [{"text": "     §cRed     "},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§bs <<  "},{"text": "§2Will not swap"}]
execute if score language deathswap.setting matches 1 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=blue,tag=!killer] run title @s actionbar [{"text": "     §9Blue    "},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§bs <<  "},{"text": "§2Will not swap"}]
execute if score language deathswap.setting matches 1 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=yellow,tag=!killer] run title @s actionbar [{"text": "    §eYellow   "},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§bs <<  "},{"text": "§2Will not swap"}]
execute if score language deathswap.setting matches 1 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=green,tag=!killer] run title @s actionbar [{"text": "    §aGreen    "},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§bs <<  "},{"text": "§2Will not swap"}]
execute if score language deathswap.setting matches 1 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=spectator] run title @s actionbar [{"text": "  §7Spectator  "},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§bs <<  "},{"text": "§2Will not swap"}]

execute if score language deathswap.setting matches 1 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=red,tag=!killer] run title @s actionbar [{"text": "     §cRed    "},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§bs <<  "},{"text": "§4Swap anytime"}]
execute if score language deathswap.setting matches 1 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=blue,tag=!killer] run title @s actionbar [{"text": "    §9Blue    "},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§bs <<  "},{"text": "§4Swap anytime"}]
execute if score language deathswap.setting matches 1 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=yellow,tag=!killer] run title @s actionbar [{"text": "   §eYellow   "},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§bs <<  "},{"text": "§4Swap anytime"}]
execute if score language deathswap.setting matches 1 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=green,tag=!killer] run title @s actionbar [{"text": "    §aGreen   "},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§bs <<  "},{"text": "§4Swap anytime"}]
execute if score language deathswap.setting matches 1 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=spectator] run title @s actionbar [{"text": "  §7Spectator "},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§bs <<  "},{"text": "§4Swap anytime"}]

#actionbar 中文
execute if score language deathswap.setting matches 2 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=red,tag=!killer] run title @s actionbar [{"text": "　§c紅隊　"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§b秒 <<  "},{"text": "§2不會交換"}]
execute if score language deathswap.setting matches 2 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=blue,tag=!killer] run title @s actionbar [{"text": "　§9藍隊　"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§b秒 <<  "},{"text": "§2不會交換"}]
execute if score language deathswap.setting matches 2 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=yellow,tag=!killer] run title @s actionbar [{"text": "　§e黃隊　"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§b秒 <<  "},{"text": "§2不會交換"}]
execute if score language deathswap.setting matches 2 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=green,tag=!killer] run title @s actionbar [{"text": "　§a綠隊　"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§b秒 <<  "},{"text": "§2不會交換"}]
execute if score language deathswap.setting matches 2 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=spectator] run title @s actionbar [{"text": "　§7旁觀　"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§b秒 <<  "},{"text": "§2不會交換"}]

execute if score language deathswap.setting matches 2 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=red,tag=!killer] run title @s actionbar [{"text": "　§c紅隊　"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§b秒 <<  "},{"text": "§4隨時交換"}]
execute if score language deathswap.setting matches 2 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=blue,tag=!killer] run title @s actionbar [{"text": "　§9藍隊　"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§b秒 <<  "},{"text": "§4隨時交換"}]
execute if score language deathswap.setting matches 2 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=yellow,tag=!killer] run title @s actionbar [{"text": "　§e黃隊　"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§b秒 <<  "},{"text": "§4隨時交換"}]
execute if score language deathswap.setting matches 2 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=green,tag=!killer] run title @s actionbar [{"text": "　§a綠隊　"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§b秒 <<  "},{"text": "§4隨時交換"}]
execute if score language deathswap.setting matches 2 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=spectator] run title @s actionbar [{"text": "　§7旁觀　"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§b秒 <<  "},{"text": "§4隨時交換"}]

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#killer actionbar en
execute if score language deathswap.setting matches 1 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=red,tag=killer] run title @s actionbar [{"text": "  §4Killer§7/§cRed "},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§bs <<  "},{"text": "§2Will not swap"}]
execute if score language deathswap.setting matches 1 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=blue,tag=killer] run title @s actionbar [{"text": " §4Killer§7/§9Blue "},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§bs <<  "},{"text": "§2Will not swap"}]
execute if score language deathswap.setting matches 1 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=yellow,tag=killer] run title @s actionbar [{"text": "§4Killer§7/§eYellow"},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§bs <<  "},{"text": "§2Will not swap"}]
execute if score language deathswap.setting matches 1 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=green,tag=killer] run title @s actionbar [{"text": " §4Killer§7/§aGreen"},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§bs <<  "},{"text": "§2Will not swap"}]

execute if score language deathswap.setting matches 1 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=red,tag=killer] run title @s actionbar [{"text": " §4Killer§7/§cRed "},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§bs <<  "},{"text": "§4Swap anytime"}]
execute if score language deathswap.setting matches 1 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=blue,tag=killer] run title @s actionbar [{"text": " §4Killer§7/§9Blue"},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§bs <<  "},{"text": "§4Swap anytime"}]
execute if score language deathswap.setting matches 1 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=yellow,tag=killer] run title @s actionbar [{"text": "§4Killer§7/§eYellow"},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§bs <<  "},{"text": "§4Swap anytime "}]
execute if score language deathswap.setting matches 1 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=green,tag=killer] run title @s actionbar [{"text": "§4Killer§7/§aGreen"},{"text": "  §b>> Round Time: "},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§bs <<  "},{"text": "§4Swap anytime"}]

#killer actionbar 中文
execute if score language deathswap.setting matches 2 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=red,tag=killer] run title @s actionbar [{"text": "§4殺手§7/§c紅隊"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§b秒 <<  "},{"text": "§2不會交換 "}]
execute if score language deathswap.setting matches 2 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=blue,tag=killer] run title @s actionbar [{"text": "§4殺手§7/§9藍隊"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§b秒 <<  "},{"text": "§2不會交換 "}]
execute if score language deathswap.setting matches 2 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=yellow,tag=killer] run title @s actionbar [{"text": "§4殺手§7/§e黃隊"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§b秒 <<  "},{"text": "§2不會交換 "}]
execute if score language deathswap.setting matches 2 if score round_time deathswap.timer <= safetime deathswap.timer as @a[team=green,tag=killer] run title @s actionbar [{"text": "§4殺手§7/§a綠隊"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color":"aqua"},{"text": "§b秒 <<  "},{"text": "§2不會交換 "}]

execute if score language deathswap.setting matches 2 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=red,tag=killer] run title @s actionbar [{"text": "§4殺手§7/§c紅隊"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§b秒 <<  "},{"text": "§4隨時交換 "}]
execute if score language deathswap.setting matches 2 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=blue,tag=killer] run title @s actionbar [{"text": "§4殺手§7/§9藍隊"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§b秒 <<  "},{"text": "§4隨時交換 "}]
execute if score language deathswap.setting matches 2 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=yellow,tag=killer] run title @s actionbar [{"text": "§4殺手§7/§e黃隊"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§b秒 <<  "},{"text": "§4隨時交換 "}]
execute if score language deathswap.setting matches 2 if score round_time deathswap.timer > safetime deathswap.timer as @a[team=green,tag=killer] run title @s actionbar [{"text": "§4殺手§7/§a綠隊"},{"text": "  §b>> 回合時間："},{"score":{"name":"round_time","objective":"deathswap.timer"},"color": "aqua"},{"text": "§b秒 <<  "},{"text": "§4隨時交換 "}]