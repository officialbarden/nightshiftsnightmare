title @s times 0t 20t 10t
title @s title {"text":"\uE000"}

tag @s remove panel.viewing
kill @e[distance=..5,tag=IntroPanel]
kill @e[tag=camera.panel,distance=..5]
stopsound @s * nightshifts:sfx.extras.intro

tp @s 0.5 62 1.5 0 0
gamemode adventure @s
scoreboard players reset @s ztc
scoreboard players enable @s ztc

function nsmaze:helmet