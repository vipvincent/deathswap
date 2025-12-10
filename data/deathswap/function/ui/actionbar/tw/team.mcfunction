#actionbar/tw/team

#team data actionbar.right 4+11
data modify storage deathswap:storage_main actionbar.right set value []
data modify storage deathswap:storage_main actionbar.right append value {"text":"紅:","color":red}
data modify storage deathswap:storage_main actionbar.right append value {"score":{"name":"*red_count","objective":"deathswap.status"},"color":red}
data modify storage deathswap:storage_main actionbar.right append value " "
data modify storage deathswap:storage_main actionbar.right append value {"text":"藍:","color":blue}
data modify storage deathswap:storage_main actionbar.right append value {"score":{"name":"*blue_count","objective":"deathswap.status"},"color":blue}
data modify storage deathswap:storage_main actionbar.right append value " "
data modify storage deathswap:storage_main actionbar.right append value {"text":"黃:","color":yellow}
data modify storage deathswap:storage_main actionbar.right append value {"score":{"name":"*yellow_count","objective":"deathswap.status"},"color":yellow}
data modify storage deathswap:storage_main actionbar.right append value " "
data modify storage deathswap:storage_main actionbar.right append value {"text":"綠:","color":green}
data modify storage deathswap:storage_main actionbar.right append value {"score":{"name":"*green_count","objective":"deathswap.status"},"color":green}

#team - player 4+3
title @a[team=red,tag=player,tag=!killer] actionbar [\
{"text":"        §c紅隊 §7| §2存活"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true}\
]
title @a[team=blue,tag=player,tag=!killer] actionbar [\
{"text":"        §9藍隊 §7| §2存活"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true}\
]
title @a[team=yellow,tag=player,tag=!killer] actionbar [\
{"text":"        §e黃隊 §7| §2存活"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true}\
]
title @a[team=green,tag=player,tag=!killer] actionbar [\
{"text":"        §a綠隊 §7| §2存活"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true}\
]

#team - eliminated 4+3
title @a[team=red,tag=eliminated,tag=!killer] actionbar [\
{"text":"        §c紅隊 §7| §d淘汰"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true}\
]
title @a[team=blue,tag=eliminated,tag=!killer] actionbar [\
{"text":"        §9藍隊 §7| §d淘汰"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true}\
]
title @a[team=yellow,tag=eliminated,tag=!killer] actionbar [\
{"text":"        §e黃隊 §7| §d淘汰"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true}\
]
title @a[team=green,tag=eliminated,tag=!killer] actionbar [\
{"text":"        §a綠隊 §7| §d淘汰"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true}\
]

#team - killer - player 6+6 
title @a[team=red,tag=player,tag=killer] actionbar [\
{"text":"     §4§l殺手 §7| §c紅隊 §7| §2存活"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true},"　　"\
]
title @a[team=blue,tag=player,tag=killer] actionbar [\
{"text":"     §4§l殺手 §7| §9藍隊 §7| §2存活"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true},"　　"\
]
title @a[team=yellow,tag=player,tag=killer] actionbar [\
{"text":"     §4§l殺手 §7| §e黃隊 §7| §2存活"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true},"　　"\
]
title @a[team=green,tag=player,tag=killer] actionbar [\
{"text":"     §4§l殺手 §7| §a綠隊 §7| §2存活"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true},"　　"\
]

#team - killer - eliminated 6+6
title @a[team=red,tag=eliminated,tag=killer] actionbar [\
{"text":"     §4§l殺手§r §7| §c紅隊 §7| §d淘汰"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true},"　　"\
]
title @a[team=blue,tag=eliminated,tag=killer] actionbar [\
{"text":"     §4§l殺手§r §7| §9藍隊 §7| §d淘汰"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true},"　　"\
]
title @a[team=yellow,tag=eliminated,tag=killer] actionbar [\
{"text":"     §4§l殺手§r §7| §e黃隊 §7| §d淘汰"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true},"　　"\
]
title @a[team=green,tag=eliminated,tag=killer] actionbar [\
{"text":"     §4§l殺手§r §7| §a綠隊 §7| §d淘汰"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true},"　　"\
]

#spectator - team use 2
title @a[team=spectator] actionbar [\
{"text":"           　§7旁觀　"},\
{"storage":"deathswap:storage_main","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:storage_main","nbt":"actionbar.right","interpret":true}\
]
