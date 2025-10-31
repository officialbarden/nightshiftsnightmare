#> If maindhand is holding any item:
execute on target if items entity @s weapon.mainhand * run return run tellraw @s {"text":"Hand Full!","color": "red"}

#> Pickup
execute on target unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand from entity @n[tag=nsmaze.spawned_item.model] container.0
execute on target run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 2 1
item replace entity @n[tag=nsmaze.spawned_item.model] container.0 with air
data remove entity @s interaction