data remove storage ns:storage temp.macro.VHS_TIME_STRING
execute store result storage ns:storage temp.macro.VHS_TIME_STRING.ticks int 1 run scoreboard players get @s vhs_time.ticks
execute store result storage ns:storage temp.macro.VHS_TIME_STRING.seconds int 1 run scoreboard players get @s vhs_time.seconds
execute store result storage ns:storage temp.macro.VHS_TIME_STRING.minutes int 1 run scoreboard players get @s vhs_time.minutes
function nsmaze:zprivate/vhs_time/string with storage ns:storage temp.macro.VHS_TIME_STRING


scoreboard players add @s[team=inside] vhs_time.ticks 1

execute if score @s[team=inside] vhs_time.ticks matches 20.. run scoreboard players add @s[team=inside] vhs_time.seconds 1
execute if score @s[team=inside] vhs_time.ticks matches 20.. run scoreboard players set @s[team=inside] vhs_time.ticks 0
execute if score @s[team=inside] vhs_time.seconds matches 60.. run scoreboard players add @s[team=inside] vhs_time.minutes 1
execute if score @s[team=inside] vhs_time.seconds matches 60.. run scoreboard players set @s[team=inside] vhs_time.seconds 0



