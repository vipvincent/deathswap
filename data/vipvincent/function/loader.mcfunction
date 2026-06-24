#--------------------------------------------------
#vipvincnet Loader
#data/vipvincent/function/loader.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#v1.5 - 1.21.5+
tellraw @a "-----------------------------------------------------"
tellraw @a [\
    {"translate":"vipvincent.loader.made","color":"aqua","fallback":"<Made by vipvincent>"}," ",\
    {"text":"[YouTube]","color":"red","click_event":{"action":"open_url","url":"https://www.youtube.com/@vipvincentgame"}}," ",\
    {"text":"[Discord]","color":"blue","click_event":{"action":"open_url","url":"https://discord.gg/3BKAydVfDk"}}\
]
tellraw @a ""
tellraw @a {"translate":"vipvincent.loader.success","color":"green","fallback":"Successfully Loaded 已成功載入："}
function #vipvincent:loader
tellraw @a ""
tellraw @a "-----------------------------------------------------"
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~