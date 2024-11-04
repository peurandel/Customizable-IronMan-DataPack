data modify storage prd:this ui.mask set from storage prd:this ui.current
execute on passengers run function mk61:orbit.table/menu/get_mask with entity @s data.page
data modify storage prd:this ui.current set from storage prd:this ui.mask

execute if score .type prd.ui matches 1 run function mk61:orbit.table/minecart/load_page