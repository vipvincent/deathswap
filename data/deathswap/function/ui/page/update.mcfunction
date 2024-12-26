#inventory
#  0  1  2  3  4  5  6  7  8
#  9 10 11 12 13 14 15 16 17
# 18 19 20 21 22 23 24 25 26
#hotbar
#  0  1  2  3  4  5  6  7  8 

#fail
execute unless score game deathswap.status matches 0 run return fail

#armor
function deathswap:ui/page/armor_display

#lang
execute if score language deathswap.setting matches 1 run function #deathswap:ui_page/en
execute if score language deathswap.setting matches 2 run function #deathswap:ui_page/tw