#play/gmchange/resume

scoreboard players set *gmchange.pause deathswap.timer -1

execute if score *gmchange deathswap.status matches 0 run gamemode survival @a[tag=player]
execute if score *gmchange deathswap.status matches 1 run gamemode creative @a[tag=player]

#title
title @a title ""
execute if score *language deathswap.setting matches 1 if score *gmchange deathswap.status matches 0 run title @a subtitle [{"text":"§eGamemode Change Resumed: "},{"text":"§aSurvival"}]
execute if score *language deathswap.setting matches 1 if score *gmchange deathswap.status matches 1 run title @a subtitle [{"text":"§eGamemode Change Resumed: "},{"text":"§cCreative"}]
execute if score *language deathswap.setting matches 2 if score *gmchange deathswap.status matches 0 run title @a subtitle [{"text":"§e遊戲模式切換恢復："},{"text":"§a生存模式"}]
execute if score *language deathswap.setting matches 2 if score *gmchange deathswap.status matches 1 run title @a subtitle [{"text":"§e遊戲模式切換恢復："},{"text":"§c創造模式"}]

#sound
execute if score *gmchange deathswap.status matches 0 as @a at @s run playsound block.note_block.hat master @s ~ ~ ~
execute if score *gmchange deathswap.status matches 1 as @a at @s run playsound block.note_block.guitar master @s ~ ~ ~