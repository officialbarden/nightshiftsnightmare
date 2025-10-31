tag @s remove go_up

#> If underground: play animation
execute as @s[tag=elevator_2] if score elevator_2 elevator.state matches 2 run return run function nsmaze:zprivate/elevator/anims/door_close
execute as @s[tag=elevator_1] if score elevator_1 elevator.state matches 2 run return run function nsmaze:zprivate/elevator/anims/door_close

#> if overground:
execute as @s[tag=elevator_2.bunker] if score elevator_2 elevator.state matches 2 run return run function nsmaze:zprivate/elevator/anims/arriving
execute as @s[tag=elevator_1.bunker] if score elevator_1 elevator.state matches 2 run return run function nsmaze:zprivate/elevator/anims/arriving
execute as @s[tag=elevator_2.bunker] if score elevator_2 elevator.state matches 1 run return run function nsmaze:zprivate/elevator/anims/door_open
execute as @s[tag=elevator_1.bunker] if score elevator_1 elevator.state matches 1 run return run function nsmaze:zprivate/elevator/anims/door_open

