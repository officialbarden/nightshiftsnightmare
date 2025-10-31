data remove storage ns:storage temp.macro.activity_level
$execute store result storage ns:storage temp.macro.activity_level float 0.01 run random value $(MIN)..$(MAX)

execute store result score activity game.v run data get storage ns:storage temp.macro.activity_level 100
data modify storage ns:storage temp.macro.activity_level set string storage ns:storage temp.macro.activity_level 0 -1
function nsmaze:zprivate/maze/activity/update with storage ns:storage temp.macro