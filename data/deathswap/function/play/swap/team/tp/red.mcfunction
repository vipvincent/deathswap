#--------------------------------------------------
#Death Swap
#data/deathswap/function/play/swap/team/tp/red.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

# if find no tag of already_tp. than clear all already_tp tag
execute unless entity @e[tag=red_target,tag=!already_tp] run tag @e[tag=red_target,tag=already_tp] remove already_tp

# random_target tag add will_tp
tag @e[tag=red_target,tag=!already_tp,sort=random,limit=1] add will_tp

# tp @s to target(will_tp)
tp @s @e[tag=will_tp,limit=1]

# will_tp tag add already_tp
tag @e[tag=will_tp] add already_tp

# will_tp tag remove will_tp
tag @e[tag=will_tp] remove will_tp