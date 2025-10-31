$forceload add 100$(player_id)0 100$(player_id)0

#$tp @s 100$(player_id)0 200 100$(player_id)0 0 0

playsound nightshifts:sfx.extras.intro master @s ~ ~-1 ~ 1 1 1


$summon item_display 100$(player_id)0 200 100$(player_id)0 {Tags:["camera.panel","new.camera"]}
$summon marker 100$(player_id)0 200 100$(player_id)0 {Tags:["IntroPanel","new.marker"],Rotation:[0.0f,0.0f]}

forceload add 11 -7 5 -13

#> Spawn Item Display Entities
execute as @e[tag=new.marker] at @s positioned ^ ^2.5 ^2.4 run summon item_display ~ ~ ~ {Tags:["IntroPanel"],item: {components: {"minecraft:custom_model_data": {floats:[50011]}}, count: 1, id: "minecraft:popped_chorus_fruit"}}
execute as @e[tag=new.marker] at @s positioned ^ ^3 ^1.3 run tp @e[tag=camera.panel,tag=new.camera] ~ ~0.05 ~

tp @s @e[tag=camera.panel,tag=new.camera,limit=1]


#> Set Light
execute as @e[tag=new.marker] at @s positioned ^ ^1 ^2.4 run setblock ~ ~ ~ light[level=10]
