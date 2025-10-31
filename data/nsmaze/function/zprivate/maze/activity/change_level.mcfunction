# $(min) $(max)
$scoreboard players set #activity_max game.v $(max)00
$scoreboard players set #activity_min game.v $(min)00

execute if score #activity_min game.v matches 500.. run tag @e[tag=nsmaze.light] add flickering