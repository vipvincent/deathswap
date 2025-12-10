#actionbat/en/prepare
execute if score *team_choose deathswap.setting matches 0 as @a[team=] run title @s actionbar [{"text": "  §7Not yet in the Team"},{"text":"  §6>> Death Swap <<  "},{"text": "§dPlease Wait for Admin"}]
execute if score *team_choose deathswap.setting matches 1 as @a[team=] run title @s actionbar [{"text": "   §7Not yet in the Team"},{"text":"  §6>> Death Swap <<  "},{"text": "§dPlease Select the Team"}]

execute as @a[team=solo] run title @s actionbar [{"text": " §2Joined the Game Team"},{"text":"  §6>> Death Swap <<  "},{"text": "§dPlease Wait for Start"}]
execute as @a[team=red] run title @s actionbar [{"text": "  §cJoined the Red Team"},{"text":"  §6>> Death Swap <<  "},{"text": "§dPlease Wait for Start"}]
execute as @a[team=blue] run title @s actionbar [{"text": " §9Joined the Blue Team"},{"text":"  §6>> Death Swap <<  "},{"text": "§dPlease Wait for Start"}]
execute as @a[team=yellow] run title @s actionbar [{"text": "§eJoined the Yellow Team"},{"text":"  §6>> Death Swap <<  "},{"text": "§dPlease Wait for Start "}]
execute as @a[team=green] run title @s actionbar [{"text": "§aJoined the Green Team"},{"text":"  §6>> Death Swap <<  "},{"text": "§dPlease Wait for Start"}]
execute as @a[team=spectator] run title @s actionbar [{"text": " §7Joined the Spectator"},{"text":"  §6>> Death Swap <<  "},{"text": "§dPlease Wait for Start"}]
