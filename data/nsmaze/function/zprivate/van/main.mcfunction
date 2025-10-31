#> Tags
#   van_power = Bunker Power Display:
#   van_time = Time Display:

execute as @e[tag=van_time] run data modify entity @s text set value [{"score":{"name":"hour","objective":"game.v"}},{"text":"AM"}]
execute as @e[tag=van_power] run data modify entity @s text set value [{"score":{"name":"power","objective":"game.v"}},{"text":"%"}]

function nsmaze:zprivate/van/screen/main
