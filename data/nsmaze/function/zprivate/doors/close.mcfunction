execute if block ~1 ~ ~ #doors[open=true,half=lower] run setblock ~1 ~-2 ~ redstone_torch
execute if block ~1 ~ ~ #doors[open=true,half=lower] run setblock ~1 ~-2 ~ air
execute if block ~-1 ~ ~ #doors[open=true,half=lower] run setblock ~-1 ~-2 ~ redstone_torch
execute if block ~-1 ~ ~ #doors[open=true,half=lower] run setblock ~-1 ~-2 ~ air
execute if block ~ ~ ~1 #doors[open=true,half=lower] run setblock ~ ~-2 ~1 redstone_torch
execute if block ~ ~ ~1 #doors[open=true,half=lower] run setblock ~ ~-2 ~1 air
execute if block ~ ~ ~-1 #doors[open=true,half=lower] run setblock ~ ~-2 ~-1 redstone_torch
execute if block ~ ~ ~-1 #doors[open=true,half=lower] run setblock ~ ~-2 ~-1 air


setblock ~ ~-2 ~ redstone_torch
setblock ~ ~-2 ~ air
scoreboard players reset @s door_autoclose
kill @s