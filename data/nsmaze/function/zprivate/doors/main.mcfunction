# tag: door.can_autoclose
execute as @a at @s if block ~ ~ ~ #doors[open=true,half=lower] unless entity @n[type=marker,tag=door.can_autoclose,distance=..2] align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["door.can_autoclose"]}
execute as @e[type=marker,tag=door.can_autoclose] at @s if block ~ ~ ~ #doors[open=true,half=lower] unless entity @p[distance=..3] run scoreboard players add @s door_autoclose 1
execute as @e[type=marker,tag=door.can_autoclose] at @s if score @s door_autoclose = .TIMER door_autoclose run function nsmaze:zprivate/doors/close
execute as @e[type=marker,tag=door.can_autoclose] at @s if block ~ ~ ~ #doors[open=false,half=lower] run kill @s