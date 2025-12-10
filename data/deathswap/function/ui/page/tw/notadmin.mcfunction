#notadmin

#score calculation
item replace entity @a[tag=notadmin] inventory.12 with ghast_tear[custom_data={ui:1b},custom_name={"text":"§e分數計算規則"}]

#info
item replace entity @a[tag=notadmin] inventory.13 with player_head[custom_data={ui:1b},custom_name={"text":"§e關於死亡交換"},profile={id:[I;1983474114,-1925689616,-1271176063,-244653484]},tooltip_display={hidden_components:["profile"]}]

#tip
item replace entity @a[tag=notadmin] inventory.14 with command_block[custom_data={ui:1b},custom_name={"text":"設定介面？","italic":false},lore=['§e進入設定介面需要管理員權限','§e如果你是OP玩家，請切換至創造模式','§e或輸入"/tag @s add admin"來獲得管理員權限']]
