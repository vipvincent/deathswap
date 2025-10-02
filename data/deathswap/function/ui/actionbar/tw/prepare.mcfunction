#actionbar/tw/prepare
execute if score team_choose deathswap.setting matches 0 as @a[team=] run title @s actionbar [{"text": "§7尚未加入隊伍"},{"text":"  §6>> 死亡交換 <<  "},{"text": "§d請等待管理員"}]
execute if score team_choose deathswap.setting matches 1 as @a[team=] run title @s actionbar [{"text": "§7尚未加入隊伍"},{"text":"  §6>> 死亡交換 <<  "},{"text": "§d請選擇隊伍　"}]
execute as @a[team=solo] run title @s actionbar [{"text": "§2已加入遊戲隊伍"},{"text":"  §6>> 死亡交換 <<  "},{"text": "§d請等待開始　　"}]
execute as @a[team=red] run title @s actionbar [{"text": "§c已加入紅隊"},{"text":"  §6>> 死亡交換 <<  "},{"text": "§d請等待開始"}]
execute as @a[team=blue] run title @s actionbar [{"text": "§9已加入藍隊"},{"text":"  §6>> 死亡交換 <<  "},{"text": "§d請等待開始"}]
execute as @a[team=yellow] run title @s actionbar [{"text": "§e已加入黃隊"},{"text":"  §6>> 死亡交換 <<  "},{"text": "§d請等待開始"}]
execute as @a[team=green] run title @s actionbar [{"text": "§a已加入綠隊"},{"text":"  §6>> 死亡交換 <<  "},{"text": "§d請等待開始"}]
execute as @a[team=spectator] run title @s actionbar [{"text": "§7已加入旁觀"},{"text":"  §6>> 死亡交換 <<  "},{"text": "§d請等待開始"}]