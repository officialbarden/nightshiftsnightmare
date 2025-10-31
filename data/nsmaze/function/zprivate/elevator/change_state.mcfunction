# $(tag)

$tag @e[tag=$(tag)] remove go_up
$tag @e[tag=$(tag).bunker] remove go_up
$tag @e[tag=$(tag)] remove go_down
$tag @e[tag=$(tag).bunker] remove go_down


$tag @e[tag=$(tag)] add $(instruction)
$tag @e[tag=$(tag).bunker] add $(instruction)

$scoreboard players reset $(tag) elevator.anim
playsound minecraft:block.note_block.chime master @p ~ ~ ~ 1 0 1

