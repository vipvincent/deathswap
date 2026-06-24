#--------------------------------------------------
#Death Swap
#data/deathswap/function/ui/inventory/page/admin_creative.mcfunction
#
#Made by vipvincent
#--------------------------------------------------

#admin_creative - admin creative

#switch_to_survival
function deathswap:ui/inventory/item_type/right_click {\
    id:"hotbar.switch_to_survival",slot:"hotbar.0",\
    item:"writable_book",count:1,\
    command:"gamemode survival",\
    name_en:{"text":"Switch to Setting Menu","color":"yellow","italic":false},\
    name_zhtw:{"text":"切換至設定介面","color":"yellow","italic":false},\
    lore_en:[],\
    lore_zhtw:[],\
    components:"enchantment_glint_override=true",\
} 

#---
#clean
function deathswap:ui/inventory/item_type/clean {slot:"inventory.0"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.1"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.2"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.3"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.4"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.5"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.6"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.7"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.8"}

function deathswap:ui/inventory/item_type/clean {slot:"inventory.9"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.10"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.11"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.12"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.13"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.14"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.15"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.16"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.17"}

function deathswap:ui/inventory/item_type/clean {slot:"inventory.18"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.19"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.20"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.21"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.22"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.23"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.24"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.25"}
function deathswap:ui/inventory/item_type/clean {slot:"inventory.26"}

#function deathswap:ui/inventory/item_type/clean {slot:"hotbar.0"}
function deathswap:ui/inventory/item_type/clean {slot:"hotbar.1"}
function deathswap:ui/inventory/item_type/clean {slot:"hotbar.2"}
function deathswap:ui/inventory/item_type/clean {slot:"hotbar.3"}
function deathswap:ui/inventory/item_type/clean {slot:"hotbar.4"}
function deathswap:ui/inventory/item_type/clean {slot:"hotbar.5"}
function deathswap:ui/inventory/item_type/clean {slot:"hotbar.6"}
function deathswap:ui/inventory/item_type/clean {slot:"hotbar.7"}
function deathswap:ui/inventory/item_type/clean {slot:"hotbar.8"}