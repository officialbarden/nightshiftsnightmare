# $(seconds)

$scoreboard players set #seconds flicker $(seconds)
scoreboard players set #ticks flicker 20
scoreboard players operation #ticks flicker *= #seconds flicker

execute as @a[team=inside] at @s run tag @n[tag=nsmaze.light,limit=10] add flickering
