#ui/page/update

#inventory
#  0  1  2  3  4  5  6  7  8
#  9 10 11 12 13 14 15 16 17
# 18 19 20 21 22 23 24 25 26
#hotbar
#  0  1  2  3  4  5  6  7  8 

# page
# admin_0   - admin home
# admin_1   - admin setting
# admin_2   - admin team setting
# admin_100 - admin special gameplay/main
# admin_101 - admin special gameplay/gmchange
# admin_102 - admin special gameplay/killer
# admin_103 - admin special gameplay/arena
# admin_104 - admin special gameplay/random_effect

#fail
execute unless score game deathswap.status matches 0 run return fail

#admin_air
function deathswap:ui/page/admin_air

#armor
function deathswap:ui/page/armor_display

#lang
execute if score language deathswap.setting matches 1 run function #deathswap:ui/page/en
execute if score language deathswap.setting matches 2 run function #deathswap:ui/page/tw