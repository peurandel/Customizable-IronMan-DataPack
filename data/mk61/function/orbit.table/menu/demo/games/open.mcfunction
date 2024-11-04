function mk61:orbit.table/menu/demo/games/mask
data modify storage prd:this ui.current set from storage prd:this ui.mask
execute on passengers run data modify entity @s data.page.mask set value "function mk61:orbit.table/menu/demo/games/mask"