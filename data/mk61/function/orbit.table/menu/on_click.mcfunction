function mk61:run_cmd with storage prd:this ui.in[0].components."minecraft:custom_data".ui_item

execute if score .type prd.ui matches 1 run function mk61:orbit.table/minecart/load_page
