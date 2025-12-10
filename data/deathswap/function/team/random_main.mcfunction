#team/random_main
function deathswap:ui/page/update
#check
$execute unless score *player_count deathswap.status matches $(random).. if score *language deathswap.setting matches 1 run tellraw @s [{"text": "§cThere are not enough people to divide into teams!"}]
$execute unless score *player_count deathswap.status matches $(random).. if score *language deathswap.setting matches 2 run tellraw @s [{"text": "§c人數不足，無法分隊！"}]
$execute unless score *player_count deathswap.status matches $(random).. at @s run playsound entity.villager.no master @s ~ ~ ~
$execute unless score *player_count deathswap.status matches $(random).. run return run function deathswap:ui/page/update

function deathswap:team/reset_team_non-spectator
$function deathswap:team/random_$(random)
function deathswap:ui/page/update

#中文
execute if entity @a[team=red] if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§cRed Team: "},{"selector":"@a[team=red]"}]
execute if entity @a[team=blue] if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§9Blue Team: "},{"selector":"@a[team=blue]"}]
execute if entity @a[team=yellow] if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§eYellow Team: "},{"selector":"@a[team=yellow]"}]
execute if entity @a[team=green] if score *language deathswap.setting matches 1 run tellraw @a [{"text": "§6Death Swap§7 | §r"},{"text": "§aGreen Team: "},{"selector":"@a[team=green]"}]

#en
execute if entity @a[team=red] if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§c紅隊："},{"selector":"@a[team=red]"}]
execute if entity @a[team=blue] if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§9藍隊："},{"selector":"@a[team=blue]"}]
execute if entity @a[team=yellow] if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§e黃隊："},{"selector":"@a[team=yellow]"}]
execute if entity @a[team=green] if score *language deathswap.setting matches 2 run tellraw @a [{"text": "§6死亡交換§7 | §r"},{"text": "§a綠隊："},{"selector":"@a[team=green]"}]