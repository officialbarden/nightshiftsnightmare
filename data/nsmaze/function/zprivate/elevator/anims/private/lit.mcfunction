$data modify entity @e[tag=$(tag).light,limit=1] block_state.Properties.lit set value "true"
$execute as @e[tag=$(tag).light,limit=1] at @s run playsound minecraft:block.note_block.pling master @a[distance=..25] ~ ~ ~ 1 0 1
$data modify entity @e[tag=$(tag).bunker_light,limit=1] block_state.Properties.lit set value "true"
$execute as @e[tag=$(tag).bunker_light,limit=1] at @s run playsound minecraft:block.note_block.pling master @a[distance=..25] ~ ~ ~ 1 0 1
