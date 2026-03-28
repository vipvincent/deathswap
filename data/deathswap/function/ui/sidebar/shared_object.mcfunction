#sidebar/shared_object

execute if score *language deathswap.setting matches 1 run \
data modify storage deathswap:storage_main ui.sidebar.name set value ["",\
    {text:"Death Swap ",color:gold,bold:true},\
    {storage:"deathswap:storage_main",nbt:"install_version",color:yellow,interpret:true}\
]
execute if score *language deathswap.setting matches 2 run \
data modify storage deathswap:storage_main ui.sidebar.name set value ["",\
    {text:"死亡交換 ",color:gold,bold:true},\
    {storage:"deathswap:storage_main",nbt:"install_version",color:yellow,interpret:true}\
]

data modify storage deathswap:storage_main ui.sidebar.credits set value {"text":"Made by vipvincent","color":"aqua"}