execute as @s[nbt={OnGround:false}] run return fail
$execute as @s[nbt={OnGround:true}] positioned ~ ~ ~ run summon item_display ~ ~ ~ {Tags:["nsmaze.spawned_item.model","new_item"],item:$(Item),Passengers:[{height:0.5f,width:0.5f,id:"interaction",Tags:["nsmaze.spawned_item.interaction"]}]}
data modify entity @n[tag=nsmaze.spawned_item.model,tag=new_item] transformation.scale set value [0.3f,0.3f,0.3f]
data modify entity @n[tag=nsmaze.spawned_item.model,tag=new_item] Rotation[1] set value 90f
execute store result entity @n[tag=nsmaze.spawned_item.model] Rotation[0] float 0.1 run random value 0..900

tag @e remove new_item
kill @s