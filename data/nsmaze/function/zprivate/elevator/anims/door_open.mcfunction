execute as @s[tag=elevator_1] at @s run tag @e[tag=elevator_1.door] add open
execute as @e[tag=elevator_1.door,tag=open] at @s if block ~ ~0.2 ~ barrier run return run tp @s ~ ~0.1 ~
execute as @e[tag=elevator_1.door,tag=open] at @s unless block ~ ~0.2 ~ barrier at @s run fill ^ ^-3 ^-1 ^ ^ ^ air replace barrier
execute as @s at @e[tag=elevator_1.door,tag=open] unless block ~ ~0.2 ~ barrier at @s run tag @s remove go_up
execute as @s at @e[tag=elevator_1.door,tag=open] unless block ~ ~0.2 ~ barrier run scoreboard players set elevator_1 elevator.state 2
execute as @s at @e[tag=elevator_1.door,tag=open] unless block ~ ~0.2 ~ barrier at @s run tag @e[tag=elevator_1.door] remove open




execute as @s[tag=elevator_2] at @s run tag @e[tag=elevator_2.door] add open
execute as @e[tag=elevator_2.door,tag=open] at @s if block ~ ~0.2 ~ barrier run return run tp @s ~ ~0.1 ~
execute as @e[tag=elevator_2.door,tag=open] at @s unless block ~ ~0.2 ~ barrier at @s run fill ^ ^-3 ^-1 ^ ^ ^ air replace barrier
execute as @s at @e[tag=elevator_2.door,tag=open] unless block ~ ~0.2 ~ barrier at @s run tag @s remove go_up
execute as @s at @e[tag=elevator_2.door,tag=open] unless block ~ ~0.2 ~ barrier run scoreboard players set elevator_2 elevator.state 2
execute as @s at @e[tag=elevator_2.door,tag=open] unless block ~ ~0.2 ~ barrier at @s run tag @e[tag=elevator_2.door] remove open


execute as @s[tag=elevator_1.bunker] at @s run tag @e[tag=elevator_1.bunker_door] add open
execute as @e[tag=elevator_1.bunker_door,tag=open] at @s if block ~ ~0.2 ~ barrier run return run tp @s ~ ~0.1 ~
execute as @e[tag=elevator_1.bunker_door,tag=open] at @s unless block ~ ~0.2 ~ barrier at @s run fill ^ ^-3 ^-1 ^ ^ ^1 air replace barrier
execute as @s at @e[tag=elevator_1.bunker_door,tag=open] unless block ~ ~0.2 ~ barrier at @s run tag @s remove go_up
execute as @s at @e[tag=elevator_1.bunker_door,tag=open] unless block ~ ~0.2 ~ barrier run scoreboard players set elevator_1 elevator.state 1
execute as @s at @e[tag=elevator_1.bunker_door,tag=open] unless block ~ ~0.2 ~ barrier at @s run tag @e[tag=elevator_1.bunker_door] remove open




execute as @s[tag=elevator_2.bunker] at @s run tag @e[tag=elevator_2.bunker_door] add open
execute as @e[tag=elevator_2.bunker_door,tag=open] at @s if block ~ ~0.2 ~ barrier run return run tp @s ~ ~0.1 ~
execute as @e[tag=elevator_2.bunker_door,tag=open] at @s unless block ~ ~0.2 ~ barrier at @s run fill ^ ^-3 ^-1 ^ ^ ^1 air replace barrier
execute as @s at @e[tag=elevator_2.bunker_door,tag=open] unless block ~ ~0.2 ~ barrier at @s run tag @s remove go_up
execute as @s at @e[tag=elevator_2.bunker_door,tag=open] unless block ~ ~0.2 ~ barrier run scoreboard players set elevator_2 elevator.state 1
execute as @s at @e[tag=elevator_2.bunker_door,tag=open] unless block ~ ~0.2 ~ barrier at @s run tag @e[tag=elevator_2.bunker_door] remove open


