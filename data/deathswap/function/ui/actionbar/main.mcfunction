#actionbar/main

data remove storage deathswap:status actionbar

#en
execute if score language deathswap.setting matches 1 if score game deathswap.status matches 0 run return run function deathswap:ui/actionbar/en/prepare
execute if score language deathswap.setting matches 1 if score game deathswap.status matches 3 run return run function deathswap:ui/actionbar/en/end

execute if score language deathswap.setting matches 1 run function deathswap:ui/actionbar/en/center
execute if score language deathswap.setting matches 1 if score mode deathswap.setting matches 1 run function deathswap:ui/actionbar/en/solo
execute if score language deathswap.setting matches 1 if score mode deathswap.setting matches 2 run function deathswap:ui/actionbar/en/team

#tw
execute if score language deathswap.setting matches 2 if score game deathswap.status matches 0 run return run function deathswap:ui/actionbar/tw/prepare
execute if score language deathswap.setting matches 2 if score game deathswap.status matches 3 run return run function deathswap:ui/actionbar/tw/end

execute if score language deathswap.setting matches 2 run function deathswap:ui/actionbar/tw/center
execute if score language deathswap.setting matches 2 if score mode deathswap.setting matches 1 run function deathswap:ui/actionbar/tw/solo
execute if score language deathswap.setting matches 2 if score mode deathswap.setting matches 2 run function deathswap:ui/actionbar/tw/team

data remove storage deathswap:status actionbar