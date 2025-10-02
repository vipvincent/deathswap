#actionbar/tw/solo

#solo data actionbar.right - 5+2
data modify storage deathswap:status actionbar.right set value []
data modify storage deathswap:status actionbar.right append value {"text":"剩餘","color":green}
data modify storage deathswap:status actionbar.right append value {"score":{"name":"solo_count","objective":"deathswap.count"}}
data modify storage deathswap:status actionbar.right append value {"text":"位玩家"}

#solo - player
title @a[team=solo,tag=player,tag=!killer] actionbar [\
{"text":"　　§2存活　  "},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true}\
]

#solo - eliminated
title @a[team=solo,tag=eliminated,tag=!killer] actionbar [\
{"text":"　　§d淘汰　  "},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true}\
]

#solo - killer - player
title @a[team=solo,tag=player,tag=killer] actionbar [\
{"text":" §4殺手 §7| §2存活"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true}\
]

#solo - killer - eliminated
title @a[team=solo,tag=eliminated,tag=killer] actionbar [\
{"text":" §4殺手 §7| §d淘汰"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true}\
]

#spectator - solo use
title @a[team=spectator] actionbar [\
{"text":"　　§7旁觀　  "},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true}\
]