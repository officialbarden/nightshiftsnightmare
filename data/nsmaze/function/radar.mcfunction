tag @s add radaring
scoreboard players reset @s radar
scoreboard players reset @s radar.id
execute as @e[tag=radar] unless score @s radar.id = @p radar.id run kill @s

#scoreboard players operation @s radar = .TIMER radar

#> Summon
execute anchored eyes positioned ^ ^ ^ run summon minecraft:item_display ~ ~ ~ {Tags:["radar","new"],item: {components: {"minecraft:custom_model_data": {floats:[40004]},}, count: 1, id: "minecraft:popped_chorus_fruit"}, view_range: 0.05f,transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]},interpolation_duration:10}
playsound nightshifts:sfx.radar


#> ID system
scoreboard players operation @s radar.id = .global radar.id
scoreboard players operation @e[tag=radar,tag=new] radar.id = .global radar.id
scoreboard players add .global radar.id 1
tag @e[tag=radar] remove new
