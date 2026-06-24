#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/page/team_choose.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

## team choose Enabled
#spectator
execute if score *team_choose deathswap.setting matches 1 as @s[team=!spectator] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.spectator",slot:"hotbar.4",\
    item:"light_gray_dye",count:1,\
    command:"function deathswap:team/join/spectator",\
    name_en:{text:"Join Spectator",color:gray,italic:false},\
    name_zhtw:{text:"加入旁觀",color:gray,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
execute if score *team_choose deathswap.setting matches 1 as @s[team=spectator] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.spectator",slot:"hotbar.4",\
    item:"light_gray_dye",count:1,\
    command:"function deathswap:team/join/spectator",\
    name_en:{text:"Joined Spectator",color:gray,italic:false},\
    name_zhtw:{text:"已加入旁觀",color:gray,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        enchantment_glint_override=true,\
    ",\
}

#---
#solo
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 0 as @s[team=!solo] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.solo",slot:"hotbar.2",\
    item:"green_dye",count:1,\
    command:"function deathswap:team/join/solo",\
    name_en:{text:"Join Game Team",color:green,italic:false},\
    name_zhtw:{text:"加入遊戲隊伍",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 0 as @s[team=solo] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.solo",slot:"hotbar.2",\
    item:"green_dye",count:1,\
    command:"function deathswap:team/join/solo",\
    name_en:{text:"Joined Game Team",color:green,italic:false},\
    name_zhtw:{text:"已加入遊戲隊伍",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        enchantment_glint_override=true,\
    ",\
}

execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 0 as @s[team=!solo] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.solo",slot:"hotbar.3",\
    item:"green_dye",count:1,\
    command:"function deathswap:team/join/solo",\
    name_en:{text:"Join Game Team",color:green,italic:false},\
    name_zhtw:{text:"加入遊戲隊伍",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 0 as @s[team=solo] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.solo",slot:"hotbar.3",\
    item:"green_dye",count:1,\
    command:"function deathswap:team/join/solo",\
    name_en:{text:"Joined Game Team",color:green,italic:false},\
    name_zhtw:{text:"已加入遊戲隊伍",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        enchantment_glint_override=true,\
    ",\
}

execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 0 as @s[team=!solo] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.solo",slot:"hotbar.5",\
    item:"green_dye",count:1,\
    command:"function deathswap:team/join/solo",\
    name_en:{text:"Join Game Team",color:green,italic:false},\
    name_zhtw:{text:"加入遊戲隊伍",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 0 as @s[team=solo] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.solo",slot:"hotbar.5",\
    item:"green_dye",count:1,\
    command:"function deathswap:team/join/solo",\
    name_en:{text:"Joined Game Team",color:green,italic:false},\
    name_zhtw:{text:"已加入遊戲隊伍",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        enchantment_glint_override=true,\
    ",\
}

execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 0 as @s[team=!solo] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.solo",slot:"hotbar.6",\
    item:"green_dye",count:1,\
    command:"function deathswap:team/join/solo",\
    name_en:{text:"Join Game Team",color:green,italic:false},\
    name_zhtw:{text:"加入遊戲隊伍",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 0 as @s[team=solo] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.solo",slot:"hotbar.6",\
    item:"green_dye",count:1,\
    command:"function deathswap:team/join/solo",\
    name_en:{text:"Joined Game Team",color:green,italic:false},\
    name_zhtw:{text:"已加入遊戲隊伍",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        enchantment_glint_override=true,\
    ",\
}

#---
#red
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 as @s[team=!red] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.red",slot:"hotbar.2",\
    item:"red_dye",count:1,\
    command:"function deathswap:team/join/red",\
    name_en:{text:"Join Team Red",color:red,italic:false},\
    name_zhtw:{text:"加入紅隊",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 as @s[team=red] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.red",slot:"hotbar.2",\
    item:"red_dye",count:1,\
    command:"function deathswap:team/join/red",\
    name_en:{text:"Joined Team Red",color:red,italic:false},\
    name_zhtw:{text:"已加入紅隊",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        enchantment_glint_override=true,\
    ",\
}
#blue
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 as @s[team=!blue] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.blue",slot:"hotbar.3",\
    item:"light_blue_dye",count:1,\
    command:"function deathswap:team/join/blue",\
    name_en:{text:"Join Team Blue",color:blue,italic:false},\
    name_zhtw:{text:"加入藍隊",color:blue,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 as @s[team=blue] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.blue",slot:"hotbar.3",\
    item:"light_blue_dye",count:1,\
    command:"function deathswap:team/join/blue",\
    name_en:{text:"Joined Team Blue",color:blue,italic:false},\
    name_zhtw:{text:"已加入藍隊",color:blue,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        enchantment_glint_override=true,\
    ",\
}
#green
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 as @s[team=!green] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.green",slot:"hotbar.5",\
    item:"lime_dye",count:1,\
    command:"function deathswap:team/join/green",\
    name_en:{text:"Join Team Green",color:green,italic:false},\
    name_zhtw:{text:"加入綠隊",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 as @s[team=green] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.green",slot:"hotbar.5",\
    item:"lime_dye",count:1,\
    command:"function deathswap:team/join/green",\
    name_en:{text:"Joined Team Green",color:green,italic:false},\
    name_zhtw:{text:"已加入綠隊",color:green,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        enchantment_glint_override=true,\
    ",\
}
#yellow
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 as @s[team=!yellow] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.yellow",slot:"hotbar.6",\
    item:"yellow_dye",count:1,\
    command:"function deathswap:team/join/yellow",\
    name_en:{text:"Join Team Yellow",color:yellow,italic:false},\
    name_zhtw:{text:"加入黃隊",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
execute if score *team_choose deathswap.setting matches 1 if score *mode deathswap.setting matches 1 as @s[team=yellow] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.yellow",slot:"hotbar.6",\
    item:"yellow_dye",count:1,\
    command:"function deathswap:team/join/yellow",\
    name_en:{text:"Joined Team Yellow",color:yellow,italic:false},\
    name_zhtw:{text:"已加入黃隊",color:yellow,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"\
        enchantment_glint_override=true,\
    ",\
}

#---
## team choose Disabled
execute if score *team_choose deathswap.setting matches 0 as @s[tag=admin] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.chooese_disabled",slot:"hotbar.2",\
    item:"barrier",count:1,\
    command:"function deathswap:lib/return/team_choose_disabled",\
    name_en:{text:"Team Selection has been disabled!",color:red,italic:false},\
    name_zhtw:{text:"自由選隊尚未啟用",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
execute if score *team_choose deathswap.setting matches 0 as @s[tag=admin] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.chooese_disabled",slot:"hotbar.3",\
    item:"barrier",count:1,\
    command:"function deathswap:lib/return/team_choose_disabled",\
    name_en:{text:"Team Selection has been disabled!",color:red,italic:false},\
    name_zhtw:{text:"自由選隊尚未啟用",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
execute if score *team_choose deathswap.setting matches 0 as @s[tag=admin] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.chooese_disabled",slot:"hotbar.4",\
    item:"barrier",count:1,\
    command:"function deathswap:lib/return/team_choose_disabled",\
    name_en:{text:"Team Selection has been disabled!",color:red,italic:false},\
    name_zhtw:{text:"自由選隊尚未啟用",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
execute if score *team_choose deathswap.setting matches 0 as @s[tag=admin] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.chooese_disabled",slot:"hotbar.5",\
    item:"barrier",count:1,\
    command:"function deathswap:lib/return/team_choose_disabled",\
    name_en:{text:"Team Selection has been disabled!",color:red,italic:false},\
    name_zhtw:{text:"自由選隊尚未啟用",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}
execute if score *team_choose deathswap.setting matches 0 as @s[tag=admin] run function deathswap:ui/inventory/item_type/right_click {\
    id:"team.chooese_disabled",slot:"hotbar.6",\
    item:"barrier",count:1,\
    command:"function deathswap:lib/return/team_choose_disabled",\
    name_en:{text:"Team Selection has been disabled!",color:red,italic:false},\
    name_zhtw:{text:"自由選隊尚未啟用",color:red,italic:false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"",\
}

execute if score *team_choose deathswap.setting matches 0 as @s[tag=notadmin] run function deathswap:ui/inventory/item_type/clean {slot:"hotbar.2"}
execute if score *team_choose deathswap.setting matches 0 as @s[tag=notadmin] run function deathswap:ui/inventory/item_type/clean {slot:"hotbar.3"}
execute if score *team_choose deathswap.setting matches 0 as @s[tag=notadmin] run function deathswap:ui/inventory/item_type/clean {slot:"hotbar.4"}
execute if score *team_choose deathswap.setting matches 0 as @s[tag=notadmin] run function deathswap:ui/inventory/item_type/clean {slot:"hotbar.5"}
execute if score *team_choose deathswap.setting matches 0 as @s[tag=notadmin] run function deathswap:ui/inventory/item_type/clean {slot:"hotbar.6"}
