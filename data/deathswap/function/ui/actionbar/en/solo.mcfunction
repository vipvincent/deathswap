#actionbar/en/solo

#solo data actionbar.right - 20
data modify storage deathswap:storage_main actionbar.right set value []
data modify storage deathswap:storage_main actionbar.right append value {"score":{"name":"*solo_count","objective":"deathswap.status"},"color":green}
data modify storage deathswap:storage_main actionbar.right append value {"text":" players remaining"}

#solo - player
title @a[team=solo,tag=player,tag=!killer] actionbar [\
{"text":"             §2Survive"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true}\
]

#solo - eliminated
title @a[team=solo,tag=eliminated,tag=!killer] actionbar [\
{"text":"          §dEliminated"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true}\
]

#solo - killer - player
#title @a[team=solo,tag=player,tag=killer] actionbar [\
#{"text":"    §4§lKiller§r §7| §2Survive"},\
#{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
#{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true}\
#]

#solo - killer - eliminated
#title @a[team=solo,tag=eliminated,tag=killer] actionbar [\
#{"text":" §4§lKiller§r §7| §dEliminated"},\
#{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
#{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true}\
#]

#spectator - solo use
title @a[team=spectator] actionbar [\
{"text":"           §7Spectator"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true}\
]