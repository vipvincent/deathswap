#actionbar/en/end
execute if score end deathswap.status matches -1 run title @a actionbar {"text": "§dNo one Wins§7 | §bThanks for Playing~"}
execute if score end deathswap.status matches 0 run title @a actionbar [{"selector":"@a[tag=win]","color": "gold"},{"text":" §6Wins§7 | §bThanks for Playing~"}]
execute if score end deathswap.status matches 1 run title @a actionbar {"text": "§cRed Team Wins§7 | §bThanks for Playing~"}
execute if score end deathswap.status matches 2 run title @a actionbar {"text": "§9Blue Team Wins§7 | §bThanks for Playing~"}
execute if score end deathswap.status matches 3 run title @a actionbar {"text": "§eYellow Team Wins§7 | §bThanks for Playing~"}
execute if score end deathswap.status matches 4 run title @a actionbar {"text": "§aGreen Team Wins§7 | §bThanks for Playing~"}
execute if score end deathswap.status matches 5 run title @a actionbar [{"text": "§4Killer "},{"selector":"@a[tag=win]","color": "dark_red"},{"text":" §4Wins§7 | §bThanks for Playing~"}]
