#> Spawn fusebox AJ
function animated_java:fusebox/summon {args:{}}
summon interaction ~ ~ ~ {Tags:["fusebox_interaction"]}

scoreboard objectives add fusebox_state dummy
#> Fusebox STATE:
# 1 = Fixed/Normal
# 2 = Broken

execute as @n[tag=aj.fusebox.root] run scoreboard players set @s fusebox_state 1
tag @s add spawned