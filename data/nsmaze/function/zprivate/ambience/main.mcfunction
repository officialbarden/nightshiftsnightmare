scoreboard players remove .OUTSIDE ambience 1
scoreboard players remove .INSIDE ambience 1
scoreboard players remove .LIGHT ambience 1
scoreboard players remove .ELEVATOR ambience 1

execute if score .OUTSIDE ambience matches ..0 as @a[tag=outside,tag=!no_ambience] at @s run playsound nightshifts:sfx.extras.crickets record @s ~ ~ ~ 0.5 1 1
execute if score .INSIDE ambience matches ..0 as @a[tag=inside,tag=!no_ambience] at @s run playsound nightshifts:sfx.nsmaze.ambience record @s ~ ~ ~ 0.5 1 1
#execute if score .LIGHT ambience matches ..0 as @a at @s run playsound nightshifts:sfx.extras.led record @a ~ ~ ~ 0.1 1 1


execute if score .ELEVATOR ambience matches ..0 as @e[tag=elevator_1] at @s run playsound nightshifts:sfx.extras.elevator.ambience record @a[distance=..10] ~ ~ ~ 1 1 1
execute if score .ELEVATOR ambience matches ..0 as @e[tag=elevator_2] at @s run playsound nightshifts:sfx.extras.elevator.ambience record @a[distance=..10] ~ ~ ~ 1 1 1
execute if score .ELEVATOR ambience matches ..0 as @e[tag=elevator_1.bunker] at @s run playsound nightshifts:sfx.extras.elevator.ambience record @a[distance=..10] ~ ~ ~ 1 1 1
execute if score .ELEVATOR ambience matches ..0 as @e[tag=elevator_2.bunker] at @s run playsound nightshifts:sfx.extras.elevator.ambience record @a[distance=..10] ~ ~ ~ 1 1 1


execute if score .OUTSIDE ambience matches ..0 run scoreboard players set .OUTSIDE ambience 120
execute if score .INSIDE ambience matches ..0 run scoreboard players set .INSIDE ambience 540
execute if score .LIGHT ambience matches ..0 run scoreboard players set .LIGHT ambience 1
execute if score .ELEVATOR ambience matches ..0 run scoreboard players set .ELEVATOR ambience 60

execute as @a[predicate=nsmaze:in_bunker] at @s if biome ~ ~ ~ nsmaze:nightmare run tag @s add inside
execute as @a at @s if biome ~ ~ ~ nsmaze:nightmare run tag @s remove outside

execute as @a at @s unless biome ~ ~ ~ nsmaze:nightmare run tag @s remove inside
execute as @a at @s unless biome ~ ~ ~ nsmaze:nightmare run tag @s add outside
