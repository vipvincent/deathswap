#notadmin
item replace entity @a[tag=notadmin] inventory.13 with command_block[custom_data={ui:1b},item_name='{"text":"Tip"}',lore=['"§eIf you are op player"','"§eplease enter /tag @s add admin"','"§eto obtain admin rights"']]

#left head notadmin
execute if score team_choose deathswap.setting matches 1 run item replace entity @a[tag=notadmin] weapon.offhand with warped_fungus_on_a_stick[custom_data={ui:1b},hide_tooltip={},item_model="written_book",enchantment_glint_override=true,item_name='""']