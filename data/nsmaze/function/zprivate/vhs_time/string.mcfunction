data modify storage ns:storage temp.macro.VHS_TIME_LIST set value ["","",""]

$data modify storage ns:storage temp.macro.VHS_TIME_LIST[0] set value "$(minutes)"
$data modify storage ns:storage temp.macro.VHS_TIME_LIST[1] set value "$(seconds)"
$data modify storage ns:storage temp.macro.VHS_TIME_LIST[2] set value "$(ticks)"

$execute if score @s vhs_time.minutes matches 0..9 run data modify storage ns:storage temp.macro.VHS_TIME_LIST[0] set value "0$(minutes)"
$execute if score @s vhs_time.seconds matches 0..9 run data modify storage ns:storage temp.macro.VHS_TIME_LIST[1] set value "0$(seconds)"
$execute if score @s vhs_time.ticks matches 0..9 run data modify storage ns:storage temp.macro.VHS_TIME_LIST[2] set value "0$(ticks)"

data modify storage ns:storage temp.macro.VHS_TIME_LIST_ELEMENTS.0 set from storage ns:storage temp.macro.VHS_TIME_LIST[0]
data modify storage ns:storage temp.macro.VHS_TIME_LIST_ELEMENTS.1 set from storage ns:storage temp.macro.VHS_TIME_LIST[1]
data modify storage ns:storage temp.macro.VHS_TIME_LIST_ELEMENTS.2 set from storage ns:storage temp.macro.VHS_TIME_LIST[2]


function nsmaze:zprivate/vhs_time/string2 with storage ns:storage temp.macro.VHS_TIME_LIST_ELEMENTS
data remove storage ns:storage temp.macro.VHS_TIME_LIST
data remove storage ns:storage temp.macro.VHS_TIME_LIST_ELEMENTS

