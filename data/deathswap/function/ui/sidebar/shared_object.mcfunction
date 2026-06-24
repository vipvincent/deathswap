#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/sidebar/shared_object.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#sidebar/shared_object

#header
$execute if score *language deathswap.setting matches 1 run scoreboard objectives modify $(score_objectives) displayname [\
    {text:"Death Swap ",color:gold},\
    {storage:"vipvincent:install_manager",nbt:"deathswap.install_version",color:yellow,interpret:true}\
]
$execute if score *language deathswap.setting matches 2 run scoreboard objectives modify $(score_objectives) displayname [\
    {text:"死亡交換 ",color:gold},\
    {storage:"vipvincent:install_manager",nbt:"deathswap.install_version",color:yellow,interpret:true}\
]

#footer
$scoreboard players set *credits $(score_objectives) -2147483647
$scoreboard players display numberformat *credits $(score_objectives) blank
$scoreboard players display name *credits $(score_objectives) {"text":"Made by vipvincent","color":"aqua"}

#blank
$scoreboard players set *header_blank $(score_objectives) 2147483647
$scoreboard players display numberformat *header_blank $(score_objectives) blank
$scoreboard players display name *header_blank $(score_objectives) ""

$scoreboard players set *footer_blank $(score_objectives) -2147483646
$scoreboard players display numberformat *footer_blank $(score_objectives) blank
$scoreboard players display name *footer_blank $(score_objectives) ""
