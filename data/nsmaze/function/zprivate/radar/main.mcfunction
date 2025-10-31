execute as @e[tag=radar] at @s if score @s radar.id = @p radar.id at @p rotated as @p positioned ^ ^ ^0.1 run ride @s mount @p
scoreboard players add @s radar 10
execute as @e[tag=radar] at @s if score @s radar.id = @p radar.id store result storage ns:storage temp.SCALE float 0.1 run scoreboard players get @p radar
execute as @e[tag=radar] at @s if score @s radar.id = @p radar.id run function nsmaze:zprivate/radar/macro with storage ns:storage temp


execute if score @s radar matches 1000 run tag @s remove radaring
execute if score @s radar matches 1000 run scoreboard players reset @s radar.id
execute as @e[tag=radar] unless score @s radar.id = @p radar.id run kill @s

