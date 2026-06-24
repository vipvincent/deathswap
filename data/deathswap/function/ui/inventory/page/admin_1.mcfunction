#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/page/admin_1.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#admin_1 - setting page

#back
function deathswap:ui/inventory/item_type/normal {\
    id:"goto_page.home",slot:"inventory.8",\
    item:"barrier",count:1,\
    command:"function deathswap:ui/inventory/page_change {goto_page:0}",\
    name_en:{text:"Back",color:red,italic:false},\
    name_zhtw:{text:"返回",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
#reset setting
function deathswap:ui/inventory/item_type/normal {\
    id:"setting.default",slot:"inventory.26",\
    item:"nautilus_shell",count:1,\
    command:"function deathswap:setting/main/default",\
    name_en:{text:"Reset Settings",color:yellow,italic:false},\
    name_zhtw:{text:"重設設定",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 

#---
#difficulty
function deathswap:ui/inventory/item_type/list {\
    id:"setting.difficulty",slot:"inventory.0",\
    item_list:["player_head","zombie_head","piglin_head","wither_skeleton_skull"],\
    count_list:[1,1,1,1],\
    toggle:"false",\
    score_name:"*difficulty",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/difficulty",\
    name_list_en:[\
        {text:"Difficulty: Peaceful",color:yellow,italic:false},\
        {text:"Difficulty: Easy",color:yellow,italic:false},\
        {text:"Difficulty: Normal",color:yellow,italic:false},\
        {text:"Difficulty: Hard",color:yellow,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"難度：和平",color:yellow,italic:false},\
        {text:"難度：簡單",color:yellow,italic:false},\
        {text:"難度：普通",color:yellow,italic:false},\
        {text:"難度：困難",color:yellow,italic:false},\
    ],\
    lore_en:[{text:"Minecraft Difficulty",color:gray,italic:false}],\
    lore_zhtw:[{text:"Minecraft 遊戲難度",color:gray,italic:false}],\
    components:"\
        profile={name:\"MHF_Cow\"},tooltip_display={hidden_components:[profile]}\
    ",\
}
#time
function deathswap:ui/inventory/item_type/list {\
    id:"setting.time",slot:"inventory.9",\
    item_list:["clock","clock","clock","clock"],\
    count_list:[1,1,1,1],\
    toggle:"false",\
    score_name:"*time_set",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/time",\
    name_list_en:[\
        {text:"Time: Day",color:yellow,italic:false},\
        {text:"Time: Noon",color:yellow,italic:false},\
        {text:"Time: Night",color:yellow,italic:false},\
        {text:"Time: Midnight",color:yellow,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"時間：早上",color:yellow,italic:false},\
        {text:"時間：中午",color:yellow,italic:false},\
        {text:"時間：傍晚",color:yellow,italic:false},\
        {text:"時間：晚上",color:yellow,italic:false},\
    ],\
    lore_en:[{text:"Minecraft Time",color:gray,italic:false}],\
    lore_zhtw:[{text:"Minecraft 遊戲時間",color:gray,italic:false}],\
    components:"",\
}
#weather
function deathswap:ui/inventory/item_type/list {\
    id:"setting.weather",slot:"inventory.18",\
    item_list:["sunflower","tube_coral","lightning_rod"],\
    count_list:[1,1,1],\
    toggle:"false",\
    score_name:"*weather",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/weather",\
    name_list_en:[\
        {text:"Weather: Clear",color:yellow,italic:false},\
        {text:"Weather: Rain",color:yellow,italic:false},\
        {text:"Weather: Thunder",color:yellow,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"天氣：晴朗",color:yellow,italic:false},\
        {text:"天氣：下雨",color:yellow,italic:false},\
        {text:"天氣：雷雨",color:yellow,italic:false},\
    ],\
    lore_en:[{text:"Minecraft Weather",color:gray,italic:false}],\
    lore_zhtw:[{text:"Minecraft 遊戲天氣",color:gray,italic:false}],\
    components:"",\
}

#spawn_monsters
function deathswap:ui/inventory/item_type/list {\
    id:"setting.spawn_monsters",slot:"inventory.1",\
    item_list:["creeper_spawn_egg","creeper_spawn_egg"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*spawn_monsters",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/spawn_monsters",\
    name_list_en:[\
        {text:"Monsters Spawn: Disabled",color:red,italic:false},\
        {text:"Monsters Spawn: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"怪物生成：關閉",color:red,italic:false},\
        {text:"怪物生成：開啟",color:green,italic:false},\
    ],\
    lore_en:[{text:"Whether monsters can spawn naturally",color:gray,italic:false}],\
    lore_zhtw:[{text:"是否生成怪物，部分怪物除外",color:gray,italic:false}],\
    components:"",\
}
#time_cycle
function deathswap:ui/inventory/item_type/list {\
    id:"setting.time_cycle",slot:"inventory.10",\
    item_list:["daylight_detector","daylight_detector"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*time_cycle",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/time_cycle",\
    name_list_en:[\
        {text:"Day/Night Cycle: Disabled",color:red,italic:false},\
        {text:"Day/Night Cycle: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"晝夜循環：關閉",color:red,italic:false},\
        {text:"晝夜循環：開啟",color:green,italic:false},\
    ],\
    lore_en:[{text:"Whether the daylight cycle and moon phases progress",color:gray,italic:false}],\
    lore_zhtw:[{text:"是否進行晝夜更替和月相變化",color:gray,italic:false}],\
    components:"",\
}
#weather_cycle
function deathswap:ui/inventory/item_type/list {\
    id:"setting.weather_cycle",slot:"inventory.19",\
    item_list:["wind_charge","wind_charge"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*weather_cycle",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/weather_cycle",\
    name_list_en:[\
        {text:"Weather Cycle: Disabled",color:red,italic:false},\
        {text:"Weather Cycle: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"天氣變化：關閉",color:red,italic:false},\
        {text:"天氣變化：開啟",color:green,italic:false},\
    ],\
    lore_en:[{text:"Whether the weather can change naturally",color:gray,italic:false}],\
    lore_zhtw:[{text:"天氣是否變化",color:gray,italic:false}],\
    components:"",\
}

#natural_regeneration
function deathswap:ui/inventory/item_type/list {\
    id:"setting.natural_regeneration",slot:"inventory.2",\
    item_list:["apple","apple"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*natural_regeneration",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/natural_regeneration",\
    name_list_en:[\
        {text:"Natural Regeneration: Disabled",color:red,italic:false},\
        {text:"Natural Regeneration: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"自然回血：關閉",color:red,italic:false},\
        {text:"自然回血：開啟",color:green,italic:false},\
    ],\
    lore_en:[{text:"Whether the player can regenerate health naturally if their hunger is full enough",color:gray,italic:false}],\
    lore_zhtw:[{text:"玩家是否能在飢餓值足夠時自然恢復生命值",color:gray,italic:false}],\
    components:"",\
}
#max_health
function deathswap:ui/inventory/item_type/score {\
    id:"setting.max_health",slot:"inventory.3",\
    item:"redstone",count_use_score:"true",\
    toggle:"false",\
    score_name:"*max_health",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/max_health",\
    unit_en:" point",unit_zhtw:"點",\
    name_disabled_en:{},\
    name_disabled_zhtw:{},\
    name_en:[{text:"Max Health : ",color:yellow,italic:false}],\
    name_zhtw:[{text:"最大血量：",color:yellow,italic:false}],\
    lore_en:[{text:"Adjust the player max health , 1 heart is equal to 2 points",color:gray,italic:false},{text:"20 points is the default value for Minecraft",color:gray,italic:false}],\
    lore_zhtw:[{text:"調整玩家的最大血量，1顆心等於2點",color:gray,italic:false},{text:"20點為Minecraft預設值",color:gray,italic:false}],\
    components:"",\
}

#tool
function deathswap:ui/inventory/item_type/list {\
    id:"setting.tool",slot:"inventory.11",\
    item_list:[\
        "wooden_pickaxe",\
        "wooden_pickaxe",\
        "stone_pickaxe",\
        "copper_pickaxe",\
        "iron_pickaxe",\
        "golden_pickaxe",\
        "diamond_pickaxe",\
        "netherite_pickaxe",\
    ],\
    count_list:[1,1,1,1,1,1,1,1],\
    toggle:"true",\
    score_name:"*tool",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/tool",\
    name_list_en:[\
        {text:"Start Tool: Disable",color:red,italic:false},\
        {text:"Start Tool: Wooden Tools",color:green,italic:false},\
        {text:"Start Tool: Stone Tools",color:green,italic:false},\
        {text:"Start Tool: Copper Tools",color:green,italic:false},\
        {text:"Start Tool: Iron Tools",color:green,italic:false},\
        {text:"Start Tool: Golden Tools",color:green,italic:false},\
        {text:"Start Tool: Diamond Tools",color:green,italic:false},\
        {text:"Start Tool: Netherite Tools",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"起始工具：關閉",color:red,italic:false},\
        {text:"起始工具：木製工具",color:green,italic:false},\
        {text:"起始工具：石製工具",color:green,italic:false},\
        {text:"起始工具：銅製工具",color:green,italic:false},\
        {text:"起始工具：鐵製工具",color:green,italic:false},\
        {text:"起始工具：金製工具",color:green,italic:false},\
        {text:"起始工具：鑽石工具",color:green,italic:false},\
        {text:"起始工具：獄髓工具",color:green,italic:false},\
    ],\
    lore_en:[{text:"The initial tools given to players at the start of the game",color:gray,italic:false}],\
    lore_zhtw:[{text:"遊戲開始後給予玩家的初始工具",color:gray,italic:false}],\
    components:"",\
}
#armor
function deathswap:ui/inventory/item_type/list {\
    id:"setting.armor",slot:"inventory.12",\
    item_list:[\
        "leather_chestplate",\
        "leather_chestplate",\
        "copper_chestplate",\
        "chainmail_chestplate",\
        "iron_chestplate",\
        "golden_chestplate",\
        "diamond_chestplate",\
        "netherite_chestplate",\
    ],\
    count_list:[1,1,1,1,1,1,1,1],\
    toggle:"true",\
    score_name:"*armor",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/armor",\
    name_list_en:[\
        {text:"Start Armor: Disable",color:red,italic:false},\
        {text:"Start Armor: Leather Armor",color:green,italic:false},\
        {text:"Start Armor: Copper Armor",color:green,italic:false},\
        {text:"Start Armor: Chainmail Armor",color:green,italic:false},\
        {text:"Start Armor: Iron Armor",color:green,italic:false},\
        {text:"Start Armor: Golden Armor",color:green,italic:false},\
        {text:"Start Armor: Diamond Armor",color:green,italic:false},\
        {text:"Start Armor: Netherite Armor",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"起始裝備：關閉",color:red,italic:false},\
        {text:"起始裝備：皮革裝備",color:green,italic:false},\
        {text:"起始裝備：銅製裝備",color:green,italic:false},\
        {text:"起始裝備：鎖鏈裝備",color:green,italic:false},\
        {text:"起始裝備：鐵製裝備",color:green,italic:false},\
        {text:"起始裝備：黃金裝備",color:green,italic:false},\
        {text:"起始裝備：鑽石裝備",color:green,italic:false},\
        {text:"起始裝備：獄髓裝備",color:green,italic:false},\
    ],\
    lore_en:[{text:"The initial armor given to players at the start of the game",color:gray,italic:false}],\
    lore_zhtw:[{text:"遊戲開始後給予玩家的初始裝備",color:gray,italic:false}],\
    components:"",\
}

#team_collisionrule
execute if score *mode deathswap.setting matches 0 run function deathswap:ui/inventory/item_type/normal {\
    id:"error.solo",slot:"inventory.20",\
    item:"barrier",count:1,\
    command:"function deathswap:lib/return/not_support_solo",\
    name_en:{text:"Solo Battle does not support this setting!",color:red,italic:false},\
    name_zhtw:{text:"個人戰不支援此設定",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 
execute if score *mode deathswap.setting matches 1 run function deathswap:ui/inventory/item_type/list {\
    id:"setting.team_collisionrule",slot:"inventory.20",\
    item_list:["lead","lead"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*team_collisionrule",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/team_collisionrule",\
    name_list_en:[\
        {text:"Team Collision: Disabled",color:red,italic:false},\
        {text:"Team Collision: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"隊伍推擠：關閉",color:red,italic:false},\
        {text:"隊伍推擠：開啟",color:green,italic:false},\
    ],\
    lore_en:[{text:"Whether the same team pushes each other",color:gray,italic:false}],\
    lore_zhtw:[{text:"相同隊伍是否要互相推擠",color:gray,italic:false}],\
    components:"",\
}
#team friendlyFire
execute if score *mode deathswap.setting matches 0 run function deathswap:ui/inventory/item_type/normal {\
    id:"error.solo",slot:"inventory.21",\
    item:"barrier",count:1,\
    command:"function deathswap:lib/return/not_support_solo",\
    name_en:{text:"Solo Battle does not support this setting!",color:red,italic:false},\
    name_zhtw:{text:"個人戰不支援此設定",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
} 
execute if score *mode deathswap.setting matches 1 run function deathswap:ui/inventory/item_type/list {\
    id:"setting.team_friendlyfire",slot:"inventory.21",\
    item_list:["pufferfish","pufferfish"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*team_friendlyfire",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/team_friendlyfire",\
    name_list_en:[\
        {text:"Team Friendly Fire: Disabled",color:red,italic:false},\
        {text:"Team Friendly Fire: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"同隊互傷：關閉",color:red,italic:false},\
        {text:"同隊互傷：開啟",color:green,italic:false},\
    ],\
    lore_en:[{text:"Whether the same team hurts each other",color:gray,italic:false}],\
    lore_zhtw:[{text:"相同隊伍是否要互相傷害",color:gray,italic:false}],\
    components:"",\
}

#swap_bossbar
function deathswap:ui/inventory/item_type/list {\
    id:"setting.swap_bossbar",slot:"inventory.4",\
    item_list:["paper","paper"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*swap_bossbar",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/swap_bossbar",\
    name_list_en:[\
        {text:"Swap Countdown: Spectators",color:red,italic:false},\
        {text:"Swap Countdown: Everyone",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"交換倒數進度條：旁觀者",color:red,italic:false},\
        {text:"交換倒數進度條：所有人",color:green,italic:false},\
    ],\
    lore_en:[{text:"Whether to display the Swap Countdown",color:gray,italic:false}],\
    lore_zhtw:[{text:"是否顯示交換倒數",color:gray,italic:false}],\
    components:"",\
}
#swap_warn
function deathswap:ui/inventory/item_type/score {\
    id:"setting.swap_warn",slot:"inventory.13",\
    item:"note_block",count_use_score:"true",\
    toggle:"true",\
    score_name:"*swap_warn",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/swap_warn",\
    unit_en:"s",unit_zhtw:"秒",\
    name_disabled_en:{text:"Swap Warn: Disabled",color:red,italic:false},\
    name_disabled_zhtw:{text:"交換警告：關閉",color:red,italic:false},\
    name_en:{text:"Swap Warn: ",color:green,italic:false},\
    name_zhtw:{text:"交換警告：",color:green,italic:false},\
    lore_en:[{text:"Give a countdown warning before the swap",color:gray,italic:false}],\
    lore_zhtw:[{text:"交換前給於倒數警告",color:gray,italic:false}],\
    components:"",\
}
#swap_invincible
function deathswap:ui/inventory/item_type/score {\
    id:"setting.swap_invincible",slot:"inventory.22",\
    item:"ender_eye",count_use_score:"true",\
    toggle:"true",\
    score_name:"*swap_invincible",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/swap_invincible",\
    unit_en:"s",unit_zhtw:"秒",\
    name_disabled_en:{text:"Swap Invincibility: Disabled",color:red,italic:false},\
    name_disabled_zhtw:{text:"交換無敵：關閉",color:red,italic:false},\
    name_en:{text:"Swap Invincibility: ",color:green,italic:false},\
    name_zhtw:{text:"交換無敵：",color:green,italic:false},\
    lore_en:[{text:"Give resistance during swap",color:gray,italic:false}],\
    lore_zhtw:[{text:"交換時給予抗性",color:gray,italic:false}],\
    components:"",\
}

#saturation
function deathswap:ui/inventory/item_type/list {\
    id:"setting.saturation",slot:"inventory.5",\
    item_list:["honey_bottle","honey_bottle"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*saturation",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/saturation",\
    name_list_en:[\
        {text:"Saturation Effect: Disable",color:red,italic:false},\
        {text:"Saturation Effect: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"飽食效果：關閉",color:red,italic:false},\
        {text:"飽食效果：開啟",color:green,italic:false},\
    ],\
    lore_en:[{text:"Whether to give players Saturation Effect",color:gray,italic:false}],\
    lore_zhtw:[{text:"是否給予玩家飽食效果",color:gray,italic:false}],\
    components:"",\
}
#night_vision
function deathswap:ui/inventory/item_type/list {\
    id:"setting.night_vision",slot:"inventory.14",\
    item_list:["potion","potion"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*night_vision",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/night_vision",\
    name_list_en:[\
        {text:"Night Vision Effect: Disable",color:red,italic:false},\
        {text:"Night Vision Effect: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"夜視效果：關閉",color:red,italic:false},\
        {text:"夜視效果：開啟",color:green,italic:false},\
    ],\
    lore_en:[{text:"Whether to give players Night Vision Effect",color:gray,italic:false}],\
    lore_zhtw:[{text:"是否給予玩家夜視效果",color:gray,italic:false}],\
    components:"\
        potion_contents={potion:night_vision},\
        tooltip_display={hidden_components:[potion_contents]}\
    ",\
}
#glowing
function deathswap:ui/inventory/item_type/list {\
    id:"setting.glowing",slot:"inventory.23",\
    item_list:["potion","potion"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*glowing",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/glowing",\
    name_list_en:[\
        {text:"Glowing Effect: Disable",color:red,italic:false},\
        {text:"Glowing Effect: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"發光效果：關閉",color:red,italic:false},\
        {text:"發光效果：開啟",color:green,italic:false},\
    ],\
    lore_en:[{text:"Whether to give players Glowing Effect",color:gray,italic:false}],\
    lore_zhtw:[{text:"是否給予玩家發光效果",color:gray,italic:false}],\
    components:"\
        potion_contents={custom_color:16777215},\
        tooltip_display={hidden_components:[potion_contents]}\
    ",\
}

#furnace
function deathswap:ui/inventory/item_type/list {\
    id:"setting.furnace",slot:"inventory.6",\
    item_list:["raw_iron","iron_ingot"],\
    count_list:[1,1],\
    toggle:"true",\
    score_name:"*auto_furnace",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/auto_furnace",\
    name_list_en:[\
        {text:"Items without burning: Disable",color:red,italic:false},\
        {text:"Items without burning: Enabled",color:green,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"物品免燒：關閉",color:red,italic:false},\
        {text:"物品免燒：開啟",color:green,italic:false},\
    ],\
    lore_en:[{text:"The minerals and food will cook automatically",color:gray,italic:false}],\
    lore_zhtw:[{text:"礦物和食物將會自動燒好",color:gray,italic:false}],\
    components:"",\
}
#start_pos
function deathswap:ui/inventory/item_type/list {\
    id:"setting.start_pos",slot:"inventory.15",\
    item_list:["campfire","campfire"],\
    count_list:[1,1],\
    toggle:"false",\
    score_name:"*start_pos",score_objectives:"deathswap.setting",\
    command:"function deathswap:setting/main/start_pos",\
    name_list_en:[\
        {text:"Game Start Point: Random",color:yellow,italic:false},\
        {text:"Game Start Point: Lobby",color:yellow,italic:false},\
    ],\
    name_list_zhtw:[\
        {text:"遊戲開始點：隨機",color:yellow,italic:false},\
        {text:"遊戲開始點：大廳",color:yellow,italic:false},\
    ],\
    lore_en:[{text:"The birthplace at the beginning of the game",color:gray,italic:false}],\
    lore_zhtw:[{text:"遊戲一開始的出生地",color:gray,italic:false}],\
    components:"",\
}

#---
#placeholder
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.0"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.1"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.2"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.3"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.4"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.5"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.6"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.7"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.8"}

#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.9"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.10"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.11"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.12"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.13"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.14"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.15"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.16"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.17"}

#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.18"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.19"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.20"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.21"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.22"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.23"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.24"}
function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.25"}
#function deathswap:ui/inventory/item_type/placeholder {slot:"inventory.26"}