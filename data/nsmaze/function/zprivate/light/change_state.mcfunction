#> If on: turn off
execute if score @s light.state matches 1 run return run scoreboard players set @s light.state 2
#> If off: turn on
execute if score @s light.state matches 2 run return run scoreboard players set @s light.state 1
