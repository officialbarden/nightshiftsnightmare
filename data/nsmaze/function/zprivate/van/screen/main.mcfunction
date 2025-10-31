execute as @e[tag=van_screen.bunker_stats] at @s if data entity @s interaction run function nsmaze:zprivate/van/screen/bunker_stats/init
execute as @e[tag=van_screen.player_stats] at @s if data entity @s interaction run function nsmaze:zprivate/van/screen/player_stats/init
execute as @e[tag=van_screen.quota] at @s if data entity @s interaction run function nsmaze:zprivate/van/screen/quota/init

function nsmaze:zprivate/van/screen/player_stats/main

execute as @e[tag=van_screen.bunker_stats] run data remove entity @s interaction
execute as @e[tag=van_screen.player_stats] run data remove entity @s interaction
execute as @e[tag=van_screen.quota] run data remove entity @s interaction
