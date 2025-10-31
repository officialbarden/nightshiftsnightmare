title @s times 0t 20t 10t
title @s title {"text":"\uE000"}

tag @s remove inside
tag @s remove outside

item replace entity @s armor.head with carved_pumpkin

tag @s add panel.viewing

gamemode spectator @s
#spectate @n[tag=camera.panel] @s

execute store result storage ns:storage temp.macro.player_id int 1 run scoreboard players get @s player.id
execute at @s run function nsmaze:zprivate/panel/start2 with storage ns:storage temp.macro

execute as @e[tag=new.marker] at @s positioned ~-3 ~ ~-3 run clone 11 66 -7 5 61 -13 ~ ~ ~ replace

tag @e[tag=camera.panel] remove new.camera
tag @e remove new.marker
scoreboard players reset @s panel.timer
#tellraw @s {"text":"Press [Crouch] if unaligned.","bold":true,"color":"#5b5b5b"}
#tellraw @s {"text":"[SKIP SCENE]","bold":true,"color":"#5b5b5b","clickEvent":{"action":"run_command","value":"/trigger ztc set 101"}}

