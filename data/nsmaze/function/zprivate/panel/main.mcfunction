
scoreboard players add @a[tag=panel.viewing] panel.timer 1
execute as @a[tag=panel.viewing] at @s run gamemode spectator @s
execute as @a[tag=panel.viewing] at @s run gamemode spectator @s
execute as @a[tag=panel.viewing] at @s run spectate @n[type=item_display,tag=camera.panel] @s

execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 70 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50001]
execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 170 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50011]


execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 180 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50002]
execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 300 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50011]

execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 310 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50003]
execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 410 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50011]

execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 420 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50004]
execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 530 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50011]

execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 550 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50005]
execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 630 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50011]

execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 650 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50006]
execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 720 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50011]

execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 740 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50007]
execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 820 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50011]

execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 840 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50008]
execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 930 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50011]

execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 950 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50009]
execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 1045 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50011]

execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 1060 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50010]
execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 1110 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50011]

execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 1130 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50001]
execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 1230 run data modify entity @n[tag=IntroPanel,type=item_display] item.components."minecraft:custom_model_data".floats set value [50011]

execute as @a[tag=panel.viewing] at @s if score @s panel.timer matches 1260 run function nsmaze:zprivate/panel/stop