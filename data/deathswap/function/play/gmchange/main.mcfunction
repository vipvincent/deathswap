#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/gmchange/main.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

# gmchange status
# 0 survival
# 1 creative

# gmchange bossbar
function deathswap:ui/bossbar/gmchange

# gmchange to creative
execute if score *gmchange.pause deathswap.timer matches ..0 if score *gmchange deathswap.status matches 0 if score *gmchange.time deathswap.timer matches 0 run function deathswap:play/gmchange/creative
# gmchange to survival
execute if score *gmchange.pause deathswap.timer matches ..0 if score *gmchange deathswap.status matches 1 if score *gmchange.time deathswap.timer matches 0 run function deathswap:play/gmchange/survival

#gmchagne resume
execute if score *gmchange.pause deathswap.timer matches 0 run function deathswap:play/gmchange/resume
