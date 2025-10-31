execute store result storage ns:storage temp.macro.compass_pos.elevator_1.x int 1 run scoreboard players get maze_1.X maze.coords
execute store result storage ns:storage temp.macro.compass_pos.elevator_1.y int 1 run scoreboard players get maze_1.Y maze.coords
execute store result storage ns:storage temp.macro.compass_pos.elevator_1.z int 1 run scoreboard players get maze_1.Z maze.coords

execute store result storage ns:storage temp.macro.compass_pos.elevator_2.x int 1 run scoreboard players get maze_2.X maze.coords
execute store result storage ns:storage temp.macro.compass_pos.elevator_2.y int 1 run scoreboard players get maze_2.Y maze.coords
execute store result storage ns:storage temp.macro.compass_pos.elevator_2.z int 1 run scoreboard players get maze_2.Z maze.coords

execute as @s[tag=through.elevator_1.bunker] at @s run return run function nsmaze:zprivate/helmet/features/compass/item_replace with storage ns:storage temp.macro.compass_pos.elevator_1
execute as @s[tag=through.elevator_2.bunker] at @s run return run function nsmaze:zprivate/helmet/features/compass/item_replace with storage ns:storage temp.macro.compass_pos.elevator_2
