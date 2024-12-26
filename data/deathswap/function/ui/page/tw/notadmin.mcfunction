#notadmin
item replace entity @a[tag=notadmin] inventory.13 with command_block[custom_data={ui:1b},item_name='{"text":"提示"}',lore=['"§e如果你是OP玩家"','"§e請輸入/tag @s add admin"','"§e來獲得管理員權限"']]

#left head notadmin
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=notadmin] weapon.offhand with warped_fungus_on_a_stick[custom_data={ui:1b},hide_tooltip={},item_model="written_book",enchantment_glint_override=true,item_name='""']