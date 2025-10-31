summon item_display ~ ~ ~ {Tags:["nsmaze.spawned_item.model","new_item"],Passengers:[{height:0.5f,width:0.5f,id:"interaction",Tags:["nsmaze.spawned_item.interaction"]}]}
data modify entity @n[tag=nsmaze.spawned_item.model,tag=new_item] transformation.scale set value [0.3f,0.3f,0.3f]
data modify entity @n[tag=nsmaze.spawned_item.model,tag=new_item] Rotation[1] set value 90f
execute store result entity @n[tag=nsmaze.spawned_item.model] Rotation[0] float 0.1 run random value 0..900

loot replace entity @e[tag=new_item,tag=nsmaze.spawned_item.model] container.0 loot nsmaze:items


tag @e remove new_item
kill @s