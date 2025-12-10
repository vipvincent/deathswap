#display sidebar

#display name
execute if score *language deathswap.setting matches 1 run scoreboard objectives modify deathswap.display_sidebar displayname [{"text":"Death Swap ","color":"gold"},{"storage":"deathswap:storage_main","nbt":"version","color":"yellow"}]
execute if score *language deathswap.setting matches 2 run scoreboard objectives modify deathswap.display_sidebar displayname [{"text":"死亡交換 ","color":"gold"},{"storage":"deathswap:storage_main","nbt":"version","color":"yellow"}]

#header
scoreboard players set *blank_header deathswap.display_sidebar 2147483647
scoreboard players display name *blank_header deathswap.display_sidebar ""

scoreboard players set *title deathswap.display_sidebar 2147483646
execute if score *language deathswap.setting matches 1 run scoreboard players display name *title deathswap.display_sidebar {"text":"§eWin Scores:"}
execute if score *language deathswap.setting matches 2 run scoreboard players display name *title deathswap.display_sidebar {"text":"§e獲勝分數："}

#footer
scoreboard players set *blank_footer deathswap.display_sidebar -2147483645
scoreboard players display name *blank_footer deathswap.display_sidebar ""

#scoreboard players set *version deathswap.display_sidebar -2147483646
#scoreboard players display name *version deathswap.display_sidebar [{"text":"Death Swap ","color":"gold"},{"storage":"deathswap:storage_main","nbt":"version","color":"yellow"}]

scoreboard players set *credits deathswap.display_sidebar -2147483647
scoreboard players display name *credits deathswap.display_sidebar {"text":"Made by vipvincent","color":"aqua"}



#display
scoreboard objectives modify deathswap.display_sidebar numberformat blank

#win_score
execute as @a run scoreboard players operation @s deathswap.display_sidebar = @s deathswap.win_score
execute as @a run scoreboard players display name @s deathswap.display_sidebar ["",{"score":{"name":"@s","objective":"deathswap.win_score"},"color":"gold"}," §7- ",{"selector":"@s"},]


