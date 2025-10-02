#play/gmchange/resume

scoreboard players set gmchange_wait deathswap.timer -1

#title
title @a title ""
execute if score language deathswap.setting matches 1 if score gmchange deathswap.status matches 0 run title @a subtitle [{"text":"§eGame Mode Change Resumed: "},{"text":"§aSurvival"}]
execute if score language deathswap.setting matches 1 if score gmchange deathswap.status matches 1 run title @a subtitle [{"text":"§eGame Mode Change Resumed: "},{"text":"§cCreative"}]
execute if score language deathswap.setting matches 2 if score gmchange deathswap.status matches 0 run title @a subtitle [{"text":"§e遊戲模式切換恢復："},{"text":"§a生存模式"}]
execute if score language deathswap.setting matches 2 if score gmchange deathswap.status matches 1 run title @a subtitle [{"text":"§e遊戲模式切換恢復："},{"text":"§c創造模式"}]

#sound
execute if score gmchange deathswap.status matches 0 as @a at @s run playsound block.note_block.guitar master @s ~ ~ ~
execute if score gmchange deathswap.status matches 1 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~