#play/swap/warm

#tellraw
execute if score *swap_countdown deathswap.timer = *swap_warn deathswap.setting if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},[{"text": "Swap in "},{"score": {"name": "*swap_countdown","objective": "deathswap.timer"}},{"text": "s!"}]]
execute if score *swap_countdown deathswap.timer = *swap_warn deathswap.setting if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},[{"score": {"name": "*swap_countdown","objective": "deathswap.timer"}},{"text": "秒後交換！"}]]

#subtitle
execute if score *swap_countdown deathswap.timer <= *swap_warn deathswap.setting run title @a title ""
execute if score *swap_countdown deathswap.timer <= *swap_warn deathswap.setting if score *language deathswap.setting matches 1 run title @a subtitle [{"text": "Swap in ","color":"gray"},{"score": {"name": "*swap_countdown","objective": "deathswap.timer"}},{"text": "s"}]
execute if score *swap_countdown deathswap.timer <= *swap_warn deathswap.setting if score *language deathswap.setting matches 2 run title @a subtitle [{"score": {"name": "*swap_countdown","objective": "deathswap.timer"},"color":"gray"},{"text": "秒後交換"}]

#sound
execute if score *swap_countdown deathswap.timer <= *swap_warn deathswap.setting run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~
