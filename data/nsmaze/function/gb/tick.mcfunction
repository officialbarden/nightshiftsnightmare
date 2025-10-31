#> TAGS:
# nsmaze.door_button => DOOR BUTTON
# nsmaze.door => DOOR
# nsmaze.door_barrier => BARRIER SPAWNING
# nsmaze.entryframe => USED TO BLOCK OFF HOLES UNFILLED BY GAME
# nsmaze.vent => VENT COORDINATES (THIS IS WHERE ANIMATRONICS SPAWN)
# nsmaze.light => MARKER TAG FOR LIGHT COORDINATES (THESE ARE LIGHT SOURCES IN THE MAZE)
#   nsmaze.copper_bulb
#   nsmaze.sea_lantern
# nsmaze.connection.check
# nsmaze.item => MARKER TAG FOR ITEM SPAWN COORDINATES

# AJ Spawn:
# fusebox.spawn
# fencegate.spawn

#execute as @a[gamemode=!creative] at @s run function nsmaze:zprivate/player/main
function nsmaze:zprivate/ambience/main

#> HELMET:
#function nsmaze:zprivate/helmet/main

#> Wall Closing:
#execute as @e[tag=nsmaze.entryframe] at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~-1 ~ rotated as @s positioned ^ ^ ^1 if block ~ ~ ~ #air at @s run function nsmaze:zprivate/enclose
#> animatronic spawn marker: /execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["nsmaze.vent"]}



#> Door 
#function nsmaze:zprivate/doors/main

#> Oxygen Meter
execute as @a[tag=nsmaze.oxygen] at @s run function nsmaze:zprivate/o2/main

#> Fusebox
execute as @e[type=marker,tag=fusebox_spawn,tag=!spawned] at @s run function nsmaze:zprivate/fusebox/spawn
function nsmaze:zprivate/fusebox/main

#> Light
function nsmaze:zprivate/light/main



#execute as @a[predicate=nsmaze:ui/interact] if entity @n[type=interaction,distance=..5,tag=interact] run function nsmaze:zprivate/ui/interact
execute as @a[tag=radaring] at @s if score @s radar.id = @e[tag=radar,limit=1] radar.id run function nsmaze:zprivate/radar/main

#> Create Player ID
execute as @a unless score @s player.id matches -2147483648..2147483647 run function nsmaze:zprivate/id/create

#> Panel Main
forceload add 9 -7
function nsmaze:zprivate/panel/main
execute as @e[tag=new.marker] at @s run forceload add ~ ~ ~ ~

#> Hole Blocking
execute as @e[tag=nsmaze.connection_check] at @s run function nsmaze:zprivate/maze/hole_blocking
#> Item Spawning:
execute as @e[tag=nsmaze.item] at @s run function nsmaze:zprivate/maze/item_spawn
#> Item Giving
execute as @e[tag=nsmaze.spawned_item.interaction,type=interaction] at @s on target if entity @s as @n[tag=nsmaze.spawned_item.interaction] run function nsmaze:zprivate/maze/give

kill @e[tag=nsmaze.spawned_item.model,nbt=!{item:{}}]
execute as @e[tag=nsmaze.spawned_item.interaction] at @s unless entity @n[tag=nsmaze.spawned_item.model,distance=..1] run kill @s
execute as @e[tag=nsmaze.spawned_item.model] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 normal @a

kill @e[type=item,nbt={Item:{id:"minecraft:yellow_stained_glass_pane"}}]
execute as @e[type=item] at @s run function nsmaze:zprivate/item/main with entity @s

function nsmaze:zprivate/doors/main
function nsmaze:zprivate/van/main
function nsmaze:zprivate/elevator/main


#execute as @a run function nsmaze:zprivate/hotbar
