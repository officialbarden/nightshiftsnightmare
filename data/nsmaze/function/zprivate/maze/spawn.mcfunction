#> If players in maze: Dont Generate
execute if entity @a[team=inside] run return run tellraw @a {"text":"Couldn't Regenerate when Players are exploring the Maze!","color": "red"}

#> Reset
kill @e[predicate=nsmaze:in_bunker,type=!player]
execute store result storage ns:storage temp.macro.old_ID int 1 run scoreboard players get ID maze.id
execute in nsmaze:nightmare run function nsmaze:zprivate/maze/remove_maze with storage ns:storage temp.macro




##> Set ID
scoreboard objectives add maze.id dummy
scoreboard players add ID maze.id 1
#scoreboard players set ID maze.id 0
execute store result storage ns:storage temp.macro.ID int 1 run scoreboard players get ID maze.id
execute in nsmaze:nightmare run function nsmaze:zprivate/maze/macro with storage ns:storage temp.macro

#execute store result score maze_1.X maze.coords run data get entity @e[tag=elevator_1.bunker,limit=1] Pos[0]
#execute store result score maze_1.Y maze.coords run data get entity @e[tag=elevator_1.bunker,limit=1] Pos[0]
#execute store result score maze_1.Z maze.coords run data get entity @e[tag=elevator_1.bunker,limit=1] Pos[0]

#execute store result score maze_2.X maze.coords run data get entity @e[tag=elevator_2.bunker,limit=1] Pos[0]
#execute store result score maze_2.Y maze.coords run data get entity @e[tag=elevator_2.bunker,limit=1] Pos[0]
#execute store result score maze_2.Z maze.coords run data get entity @e[tag=elevator_2.bunker,limit=1] Pos[0]



#execute in nsmaze:nightmare run tp @s @e[tag=elevator_2.bunker,limit=1]
