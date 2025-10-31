stopsound @a * nightshifts:sfx.metal_door.close
stopsound @a * nightshifts:sfx.metal_door.open


execute if entity @s[tag=nsmaze.door.closed] run playsound nightshifts:sfx.metal_door.open master @a ~ ~ ~ 0.4 1 1
execute if entity @s[tag=nsmaze.door.closed] run return run tag @s remove nsmaze.door.closed

execute if entity @s[tag=!nsmaze.door.closed] run playsound nightshifts:sfx.metal_door.open master @a ~ ~ ~ 0.4 1 1
execute if entity @s[tag=!nsmaze.door.closed] run return run tag @s add nsmaze.door.closed
