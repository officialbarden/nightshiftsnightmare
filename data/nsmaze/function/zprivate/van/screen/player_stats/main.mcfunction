execute if data storage ns:storage VAN_PLAYER_STATS.INSIDE[0] as @e[tag=van_screen.player_stats.ui,tag=!set] at @s run function nsmaze:zprivate/van/screen/player_stats/set with storage ns:storage VAN_PLAYER_STATS.INSIDE[0]
execute as @e[tag=van_screen.player_stats.ui,tag=username_store] at @s run function nsmaze:zprivate/van/screen/player_stats/stats_update with entity @s data

execute as @e[tag=van_screen.player_stats.ui,tag=next_button,type=interaction] at @s if data entity @s interaction run function nsmaze:zprivate/van/screen/player_stats/next
execute as @e[tag=van_screen.player_stats.ui,tag=back_button,type=interaction] at @s if data entity @s interaction run function nsmaze:zprivate/van/screen/player_stats/back

execute unless entity @a[team=inside] run item replace entity @e[tag=van_screen.player_stats.ui,tag=player_head] container.0 with player_head[minecraft:profile={id:[I;2132406115,-1534243685,-2023144825,-1905145546],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGE5OWIwNWI5YTFkYjRkMjliNWU2NzNkNzdhZTU0YTc3ZWFiNjY4MTg1ODYwMzVjOGEyMDA1YWViODEwNjAyYSJ9fX0="}]}]
execute unless entity @a[team=inside] run data modify entity @e[limit=1,tag=van_screen.player_stats.ui,tag=player_username] text set value {text:"<no_username>"}
execute unless entity @a[team=inside] run data modify entity @e[limit=1,tag=van_screen.player_stats.ui,tag=player_sanity] text set value {text:"sanity: NaN"}
execute unless entity @a[team=inside] run data modify entity @e[limit=1,tag=van_screen.player_stats.ui,tag=player_o2] text set value {text:"O2: NaN"}
