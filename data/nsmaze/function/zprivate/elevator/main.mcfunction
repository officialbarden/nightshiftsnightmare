#> Teams
team add inside ""
team modify inside prefix "[Inside] "
team modify inside friendlyFire false
team modify inside color dark_red
team modify inside collisionRule never
team modify inside deathMessageVisibility never 
team modify inside seeFriendlyInvisibles false
team modify inside nametagVisibility never

team add outside ""
team modify outside prefix "[Outside] "
team modify outside friendlyFire false
team modify outside color dark_green
team modify outside collisionRule never
team modify outside deathMessageVisibility never 
team modify outside seeFriendlyInvisibles false
team modify outside nametagVisibility never



#> Elevator 2 (OVERGROUND)
    #> GO UP
        execute if score elevator_2 elevator.anim matches 300 if block 39 56 54 #minecraft:buttons[powered=true] as @e[tag=elevator_2] at @s if score elevator_2 elevator.state matches 1 run function nsmaze:zprivate/elevator/change_state {tag:"elevator_2",instruction:"go_up"}
        execute if score elevator_1 elevator.anim matches 300 if block -5 56 88 #minecraft:buttons[powered=true] as @e[tag=elevator_1] at @s if score elevator_1 elevator.state matches 1 run function nsmaze:zprivate/elevator/change_state {tag:"elevator_1",instruction:"go_up"}
        execute if score elevator_2 elevator.anim matches 300 as @e[tag=elevator_2.bunker_interaction] at @s on target if entity @s as @e[tag=elevator_2.bunker] at @s if score elevator_2 elevator.state matches 1 run function nsmaze:zprivate/elevator/change_state {tag:"elevator_2",instruction:"go_up"}
        execute if score elevator_1 elevator.anim matches 300 as @e[tag=elevator_1.bunker_interaction] at @s on target if entity @s as @e[tag=elevator_1.bunker] at @s if score elevator_1 elevator.state matches 1 run function nsmaze:zprivate/elevator/change_state {tag:"elevator_1",instruction:"go_up"}


    #> GO DOWN 
        execute if score elevator_2 elevator.anim matches 300 as @e[tag=elevator_2.button] at @s on target if entity @s as @e[tag=elevator_2] at @s if score elevator_2 elevator.state matches 2 run function nsmaze:zprivate/elevator/change_state {tag:"elevator_2",instruction:"go_down"}
        execute if score elevator_1 elevator.anim matches 300 as @e[tag=elevator_1.button] at @s on target if entity @s as @e[tag=elevator_1] at @s if score elevator_1 elevator.state matches 2 run function nsmaze:zprivate/elevator/change_state {tag:"elevator_1",instruction:"go_down"}
        execute if score elevator_2 elevator.anim matches 300 as @e[tag=elevator_2.bunker_button] at @s if block ~ ~ ~ #minecraft:buttons[powered=true] as @e[tag=elevator_2.bunker] at @s if score elevator_2 elevator.state matches 2 run function nsmaze:zprivate/elevator/change_state {tag:"elevator_2",instruction:"go_down"}
        execute if score elevator_1 elevator.anim matches 300 as @e[tag=elevator_1.bunker_button] at @s if block ~ ~ ~ #minecraft:buttons[powered=true] as @e[tag=elevator_1.bunker] at @s if score elevator_1 elevator.state matches 2 run function nsmaze:zprivate/elevator/change_state {tag:"elevator_1",instruction:"go_down"}

execute as @e[tag=elevator_2] if score elevator_2 elevator.anim matches 150.. unless score elevator_2 elevator.anim matches 300.. run scoreboard players add elevator_2 elevator.anim 1


execute as @e[tag=go_up] at @s run function nsmaze:zprivate/elevator/go_up
execute as @e[tag=go_down] at @s run function nsmaze:zprivate/elevator/go_down

#execute as @e[type=interaction] run data remove entity @s interaction

execute as @e[tag=elevator_2.bunker_interaction,type=interaction] run data modify entity @s response set value true

execute as @e[tag=elevator_1.bunker_door] run data modify entity @s teleport_duration set value 5
execute as @e[tag=elevator_2.bunker_door] run data modify entity @s teleport_duration set value 5
