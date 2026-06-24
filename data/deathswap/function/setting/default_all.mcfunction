#--------------------------------------------------
#Death Swap
#data/deathswap/function/setting/default_all.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#default all
function deathswap:setting/main/default
function deathswap:setting/gmchange/default
function deathswap:setting/killer/default
function deathswap:setting/arena/default
function deathswap:setting/random_effect/default

#mode & team
scoreboard players set *mode deathswap.setting 0
scoreboard players set *team_choose deathswap.setting 0

#disable all special gameplay
scoreboard players set *killer deathswap.setting 0
scoreboard players set *gmchange deathswap.setting 0
scoreboard players set *arena deathswap.setting 0
scoreboard players set *random_effect deathswap.setting 0