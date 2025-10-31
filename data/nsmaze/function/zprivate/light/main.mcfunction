# nsmaze.light => MARKER TAG FOR LIGHT COORDINATES (THESE ARE LIGHT SOURCES IN THE MAZE)
#   nsmaze.copper_bulb
#   nsmaze.sea_lantern

execute unless entity @e[tag=nsmaze.light] run return fail

execute if score #ticks flicker matches 0.. run scoreboard players remove #ticks flicker 1
execute if score #ticks flicker matches ..-1 run tag @e[tag=nsmaze.light] remove flickering
execute if score #ticks flicker matches ..-1 run scoreboard players reset #ticks flicker

#execute if score blackout light.state matches 1 run effect give @a[team=inside] blindness 2 255 true
execute if score blackout light.state matches 1 as @e[tag=aj.fusebox.root] if score @s fusebox_state matches 1 run function nsmaze:zprivate/light/fix
effect clear @a[team=outside] blindness

execute as @e[tag=nsmaze.light] unless score @s light matches -2147483648..2147483647 run scoreboard players set @s light 0
execute as @e[tag=nsmaze.light] unless score @s light.state matches -2147483648..2147483647 run scoreboard players set @s light.state 1
execute as @e[tag=nsmaze.light] at @s if score @s light.state matches 1 run playsound nightshifts:sfx.extras.led master @a[distance=..7] ~ ~ ~ 0.1 1 1


execute as @e[tag=nsmaze.light,tag=nsmaze.copper_bulb] at @s if score @s light.state matches 1 run setblock ~ ~ ~ waxed_exposed_copper_bulb[lit=true]
execute as @e[tag=nsmaze.light,tag=nsmaze.copper_bulb] at @s if score @s light.state matches 2 run setblock ~ ~ ~ waxed_exposed_copper_bulb[lit=false]

execute as @e[tag=nsmaze.light,tag=nsmaze.sea_lantern] at @s if score @s light.state matches 1 run setblock ~ ~ ~ light[level=8]
execute as @e[tag=nsmaze.light,tag=nsmaze.sea_lantern] at @s if score @s light.state matches 2 run setblock ~ ~ ~ air

#> @e[tag=nsmaze.light,tag=flickering] will make the light flicker
execute as @e[tag=nsmaze.light,tag=flickering] store result storage ns:storage temp.macro.MIN int 1 run scoreboard players get .MINIMA light
execute as @e[tag=nsmaze.light,tag=flickering] store result storage ns:storage temp.macro.MAX int 1 run scoreboard players get .MAXIMA light
execute as @e[tag=nsmaze.light,tag=flickering] run function nsmaze:zprivate/light/flicker with storage ns:storage temp.macro
