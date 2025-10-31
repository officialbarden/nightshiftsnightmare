execute as @s[tag=elevator_1] at @s run tag @e[tag=elevator_1.door] add close
execute as @e[tag=elevator_1.door,tag=close] at @s if block ~ ~-0.2 ~ air run return run tp @s ~ ~-0.1 ~
execute as @e[tag=elevator_1.door,tag=close] at @s unless block ~ ~-0.2 ~ air at @s run fill ^ ^2 ^-1 ^ ^ ^ barrier
#execute as @e[tag=elevator_1.door,tag=close] at @s unless block ~ ~-0.2 ~ air run scoreboard players set elevator_1 elevator.state 1
execute as @e[tag=elevator_1.door,tag=close] at @s unless block ~ ~-0.2 ~ air run tag @s remove close



execute as @s[tag=elevator_2] at @s run tag @e[tag=elevator_2.door] add close
execute as @e[tag=elevator_2.door,tag=close] at @s if block ~ ~-0.2 ~ air run return run tp @s ~ ~-0.1 ~
execute as @e[tag=elevator_2.door,tag=close] at @s unless block ~ ~-0.2 ~ air at @s run fill ^ ^2 ^-1 ^ ^ ^ barrier
#execute as @e[tag=elevator_2.door,tag=close] at @s unless block ~ ~-0.2 ~ air run scoreboard players set elevator_2 elevator.state 1
execute as @e[tag=elevator_2.door,tag=close] at @s unless block ~ ~-0.2 ~ air run tag @s remove close


execute as @s[tag=elevator_1.bunker] at @s run tag @e[tag=elevator_1.bunker_door] add close
execute as @e[tag=elevator_1.bunker_door,tag=close] at @s if block ~ ~-0.2 ~ air run return run tp @s ~ ~-0.1 ~
execute as @e[tag=elevator_1.bunker_door,tag=close] at @s unless block ~ ~-0.2 ~ air at @s run fill ^ ^2 ^1 ^ ^ ^ barrier
#execute as @e[tag=elevator_1.bunker_door,tag=close] at @s unless block ~ ~-0.2 ~ air run scoreboard players set elevator_1 elevator.state 2
execute as @e[tag=elevator_1.bunker_door,tag=close] at @s unless block ~ ~-0.2 ~ air run tag @s remove close



execute as @s[tag=elevator_2.bunker] at @s run tag @e[tag=elevator_2.bunker_door] add close
execute as @e[tag=elevator_2.bunker_door,tag=close] at @s if block ~ ~-0.2 ~ air run return run tp @s ~ ~-0.1 ~
execute as @e[tag=elevator_2.bunker_door,tag=close] at @s unless block ~ ~-0.2 ~ air at @s run fill ^ ^2 ^1 ^ ^ ^ barrier
#execute as @e[tag=elevator_2.bunker_door,tag=close] at @s unless block ~ ~-0.2 ~ air run scoreboard players set elevator_2 elevator.state 2
execute as @e[tag=elevator_2.bunker_door,tag=close] at @s unless block ~ ~-0.2 ~ air run tag @s remove close
