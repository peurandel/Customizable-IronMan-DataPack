#execute if function mk61:beacon.table/page/change
execute unless score @s prd.ironman.beacon.editor.page = @s prd.ironman.beacon.editor.page run return run tellraw @a[tag=prd.op] {"text":"[PRD][IronMan][Mk61][ERROR] 슈트 편집기 페이지 값 누락"}
execute store result storage prd:this page int 1 run scoreboard players get @s prd.ironman.beacon.editor.page
function mk61:beacon.table/page/main with storage prd:this
