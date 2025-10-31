execute if score @s light matches 1.. run return run scoreboard players remove @s light 1

execute if score @s light matches 0 run function nsmaze:zprivate/light/change_state
$execute if score @s light matches 0 store result score @s light run random value $(MIN)..$(MAX)
