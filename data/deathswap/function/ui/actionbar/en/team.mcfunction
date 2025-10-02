#actionbar/tw/team

#team data actionbar.right 15
data modify storage deathswap:status actionbar.right set value []
data modify storage deathswap:status actionbar.right append value {"text":"R:","color":red}
data modify storage deathswap:status actionbar.right append value {"score":{"name":"red_count","objective":"deathswap.count"},"color":red}
data modify storage deathswap:status actionbar.right append value " "
data modify storage deathswap:status actionbar.right append value {"text":"B:","color":blue}
data modify storage deathswap:status actionbar.right append value {"score":{"name":"blue_count","objective":"deathswap.count"},"color":blue}
data modify storage deathswap:status actionbar.right append value " "
data modify storage deathswap:status actionbar.right append value {"text":"Y:","color":yellow}
data modify storage deathswap:status actionbar.right append value {"score":{"name":"yellow_count","objective":"deathswap.count"},"color":yellow}
data modify storage deathswap:status actionbar.right append value " "
data modify storage deathswap:status actionbar.right append value {"text":"G:","color":green}
data modify storage deathswap:status actionbar.right append value {"score":{"name":"green_count","objective":"deathswap.count"},"color":green}

#team - player
title @a[team=red,tag=player,tag=!killer] actionbar [\
{"text":"  §cRed §7| §2Survive"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true}\
]
title @a[team=blue,tag=player,tag=!killer] actionbar [\
{"text":" §9Blue §7| §2Survive"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true}\
]
title @a[team=yellow,tag=player,tag=!killer] actionbar [\
{"text":"§eYellow §7| §2Survive"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true}," "\
]
title @a[team=green,tag=player,tag=!killer] actionbar [\
{"text":"§aGreen §7| §2Survive"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true}\
]

#team - eliminated
title @a[team=red,tag=eliminated,tag=!killer] actionbar [\
{"text":"§cRed §7| §dEliminated"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true}," "\
]
title @a[team=blue,tag=eliminated,tag=!killer] actionbar [\
{"text":"    §9Blue §7| §dEliminated"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true},"  "\
]
title @a[team=yellow,tag=eliminated,tag=!killer] actionbar [\
{"text":"  §eYellow §7| §dEliminated"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true},"    "\
]
title @a[team=green,tag=eliminated,tag=!killer] actionbar [\
{"text":"   §aGreen §7| §dEliminated"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true},"   "\
]

#team - killer - player
title @a[team=red,tag=player,tag=killer] actionbar [\
{"text":"§4Killer §7| §cRed §7| §2Survive"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true},"       "\
]
title @a[team=blue,tag=player,tag=killer] actionbar [\
{"text":"§4Killer §7| §9Blue §7| §2Survive"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true},"        "\
]
title @a[team=yellow,tag=player,tag=killer] actionbar [\
{"text":"§4Killer §7| §eYellow §7| §2Survive"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true},"          "\
]
title @a[team=green,tag=player,tag=killer] actionbar [\
{"text":"§4Killer §7| §aGreen §7| §2Survive"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true},"         "\
]

#team - killer - eliminated
title @a[team=red,tag=eliminated,tag=killer] actionbar [\
{"text":"§4Killer §7| §cRed §7| §dEliminated"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true},"          "\
]
title @a[team=blue,tag=eliminated,tag=killer] actionbar [\
{"text":"§4Killer §7| §9Blue §7| §dEliminated"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true},"           "\
]
title @a[team=yellow,tag=eliminated,tag=killer] actionbar [\
{"text":"§4Killer §7| §eYellow §7| §dEliminated"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true},"           "\
]
title @a[team=green,tag=eliminated,tag=killer] actionbar [\
{"text":"§4Killer §7| §aGreen §7| §dEliminated"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true},"            "\
]

#spectator - team use
title @a[team=spectator] actionbar [\
{"text":"      §7Spectator"},\
{"storage":"deathswap:status","nbt":"actionbar.center","interpret":true},\
{"storage":"deathswap:status","nbt":"actionbar.right","interpret":true}\
]
