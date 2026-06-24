#--------------------------------------------------
#Death Swap
#data/deathswap/function/advancement/update.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#revoke
advancement revoke @a from deathswap:main/en/root
advancement revoke @a from deathswap:main/tw/root

advancement revoke @a from deathswap:hidden/en/root
advancement revoke @a from deathswap:hidden/tw/root

#grant
function deathswap:advancement/root
execute as @a run function #deathswap:advancement/main
execute as @a run function #deathswap:advancement/hidden