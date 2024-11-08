#execute if function mk61:beacon.table/page/change
# Error Exception codes
execute unless score @s prd.ironman.beacon.editor.page = @s prd.ironman.beacon.editor.page run return run tellraw @a[tag=prd.op] {"text":"[PRD][IronMan][Mk61][ERROR] 슈트 편집기 페이지 값 누락"}

# get page
function mk61:beacon.table/ui/main