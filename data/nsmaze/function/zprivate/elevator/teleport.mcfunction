tag @s remove inside
tag @s remove outside

title @s times 0t 1s 10t
title @s title {"text":"\uE000"}

$tag @s add $(tag)
$execute rotated as @s at @e[tag=elevator_$(elevator)] run tp @s ~ ~1 ~ ~ ~
$execute rotated as @s at @e[tag=elevator_$(elevator)] run tp @e[tag=nsmaze.spawned_item.model,distance=..5] ~ ~1 ~ ~ ~

#$say $(elevator)

team join inside @s[tag=inside]
team join outside @s[tag=outside]
advancement grant @s[tag=inside] only nsadv:game/enter_bunker

#> VAN PLAYER_STATS:
execute as @s run data modify storage ns:storage temp.macro.player_stat.username set from entity @s bukkit.lastKnownName
execute as @s[tag=inside] run function nsmaze:zprivate/van/screen/player_stats/add_player with storage ns:storage temp.macro.player_stat
execute as @s[tag=outside] run function nsmaze:zprivate/van/screen/player_stats/remove_player with storage ns:storage temp.macro.player_stat
