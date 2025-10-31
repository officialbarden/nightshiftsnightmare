execute as @s[tag=nsmaze.door.closed] at @s run function nsmaze:zprivate/doors/playsound
execute as @n[tag=nsmaze.door_barrier,distance=..4] at @s rotated as @s run fill ^-1 ^-1 ^ ^1 ^1 ^ air
execute if block ~ ~0.1 ~ air run return run tp @s ~ ~0.1 ~
