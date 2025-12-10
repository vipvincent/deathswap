#notadmin

#score calculation
item replace entity @a[tag=notadmin] inventory.12 with ghast_tear[custom_data={ui:1b},custom_name={"text":"§eScore Calculation Rules"}]

#info
item replace entity @a[tag=notadmin] inventory.13 with player_head[custom_data={ui:1b},custom_name={"text":"§eAbout Death Swap"},profile={name:vipvincent},tooltip_display={hidden_components:["profile"]}]

#tip
item replace entity @a[tag=notadmin] inventory.14 with command_block[custom_data={ui:1b},custom_name={"text":"Setting Menu?","italic":false},lore=['§eAccessing the setting menu requires admin rights','§eIf you are op player, please switch to Creative','§eor enter "/tag @s add admin" to obtain admin']]
