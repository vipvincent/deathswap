#home

#setting
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.12 with trial_key[custom_data={ui:1b},custom_name={"text":"§e設定"}]
#team
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.13 with snowball[custom_data={ui:1b},custom_name={"text":"§e隊伍"}]
#special
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.14 with ominous_trial_key[custom_data={ui:1b},custom_name={"text":"§e特殊玩法"}]

#language
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.18 with player_head[custom_data={ui:1b},custom_name=[{"text": "🌏 ","color": "yellow","italic":false},{"translate":"options.language","color": "yellow"}],profile={id:[I;-1121419518,2067529689,-982738485,263170875],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThkYWExZTNlZDk0ZmYzZTMzZTFkNGM2ZTQzZjAyNGM0N2Q3OGE1N2JhNGQzOGU3NWU3YzkyNjQxMDYifX19"}]}]
#info
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.26 with player_head[custom_data={ui:1b},custom_name={"text":"§e關於死亡交換"},profile={name:vipvincent}]
#reset win scores
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.0 with nether_star[custom_data={ui:1b},custom_name={"text":"§e重製獲勝分數"},lore=['§7清除所有玩家的獲勝分數']]
#ui_win
item replace entity @a[tag=admin,tag=!creative,scores={deathswap.ui_page=0}] inventory.8 with ghast_tear[custom_data={ui:1b},custom_name={"text":"§e分數計算規則"}]