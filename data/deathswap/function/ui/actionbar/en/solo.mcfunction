#actionbar/en/solo

#solo data actionbar.right - 20
data modify storage deathswap:status actionbar.right set value []
data modify storage deathswap:status actionbar.right append value {"score":{"name":"solo_count","objective":"deathswap.count"},"color":green}
data modify storage deathswap:status actionbar.right append value {"text":" players remaining"}

#solo - player
title @a[team=solo,tag=player,tag=!killer] actionbar [\
{"text":"             §2Survive"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true}\
]

#solo - eliminated
title @a[team=solo,tag=eliminated,tag=!killer] actionbar [\
{"text":"          §dEliminated"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true}\
]

#solo - killer - player
title @a[team=solo,tag=player,tag=killer] actionbar [\
{"text":"    §4Killer §7| §2Survive"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true}\
]

#solo - killer - eliminated
title @a[team=solo,tag=eliminated,tag=killer] actionbar [\
{"text":" §4Killer §7| §dEliminated"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true}\
]

#spectator - solo use
title @a[team=spectator] actionbar [\
{"text":"           §7Spectator"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true}\
]