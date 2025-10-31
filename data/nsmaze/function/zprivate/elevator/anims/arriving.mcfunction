execute as @s[tag=elevator_1] run scoreboard players add elevator_1 elevator.anim 1

execute as @s[tag=elevator_1] if score elevator_1 elevator.anim matches 10 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_1"}
execute as @s[tag=elevator_1] if score elevator_1 elevator.anim matches 20 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_1"}
execute as @s[tag=elevator_1] if score elevator_1 elevator.anim matches 30 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_1"}
execute as @s[tag=elevator_1] if score elevator_1 elevator.anim matches 40 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_1"}
execute as @s[tag=elevator_1] if score elevator_1 elevator.anim matches 50 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_1"}
execute as @s[tag=elevator_1] if score elevator_1 elevator.anim matches 60 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_1"}
execute as @s[tag=elevator_1] if score elevator_1 elevator.anim matches 70 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_1"}
execute as @s[tag=elevator_1] if score elevator_1 elevator.anim matches 80 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_1"}
execute as @s[tag=elevator_1] if score elevator_1 elevator.anim matches 90 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_1"}
execute as @s[tag=elevator_1] if score elevator_1 elevator.anim matches 100 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_1"}
execute as @s[tag=elevator_1] if score elevator_1 elevator.anim matches 110 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_1"}
execute as @s[tag=elevator_1] as @e[tag=elevator_1.bunker] at @s if score elevator_1 elevator.anim matches 110 as @a[distance=..3] run function nsmaze:zprivate/elevator/teleport {tag:"outside",elevator:"1"}

execute as @e[tag=elevator_1.door] at @s positioned ^-1 ^ ^ if score elevator_1 elevator.anim matches 110 run playsound nightshifts:sfx.extras.elevator.reached master @a[distance=..25] ~ ~ ~ 1 0 1
execute as @e[tag=elevator_1.door] at @s positioned ^-1 ^ ^ if score elevator_1 elevator.anim matches 150 run playsound nightshifts:sfx.extras.elevator.open master @a[distance=..25] ~ ~ ~ 1 1 1
execute as @s[tag=elevator_1,tag=go_up] if score elevator_1 elevator.anim matches 150 run scoreboard players set elevator_1 elevator.state 2
execute as @s[tag=elevator_1,tag=go_down] if score elevator_1 elevator.anim matches 150 run scoreboard players set elevator_1 elevator.state 1





execute as @s[tag=elevator_2] run scoreboard players add elevator_2 elevator.anim 1

execute as @s[tag=elevator_2] if score elevator_2 elevator.anim matches 10 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_2"}
execute as @s[tag=elevator_2] if score elevator_2 elevator.anim matches 20 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_2"}
execute as @s[tag=elevator_2] if score elevator_2 elevator.anim matches 30 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_2"}
execute as @s[tag=elevator_2] if score elevator_2 elevator.anim matches 40 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_2"}
execute as @s[tag=elevator_2] if score elevator_2 elevator.anim matches 50 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_2"}
execute as @s[tag=elevator_2] if score elevator_2 elevator.anim matches 60 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_2"}
execute as @s[tag=elevator_2] if score elevator_2 elevator.anim matches 70 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_2"}
execute as @s[tag=elevator_2] if score elevator_2 elevator.anim matches 80 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_2"}
execute as @s[tag=elevator_2] if score elevator_2 elevator.anim matches 90 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_2"}
execute as @s[tag=elevator_2] if score elevator_2 elevator.anim matches 100 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_2"}
execute as @s[tag=elevator_2] if score elevator_2 elevator.anim matches 110 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_2"}
execute as @s[tag=elevator_2] as @e[tag=elevator_2.bunker] at @s if score elevator_2 elevator.anim matches 110 as @a[distance=..3] run function nsmaze:zprivate/elevator/teleport {tag:"outside",elevator:"2"}

execute as @e[tag=elevator_2.door] at @s positioned ^1 ^ ^ if score elevator_2 elevator.anim matches 110 run playsound nightshifts:sfx.extras.elevator.reached master @a[distance=..25] ~ ~ ~ 1 0 1
execute as @e[tag=elevator_2.door] at @s positioned ^1 ^ ^ if score elevator_2 elevator.anim matches 150 run playsound nightshifts:sfx.extras.elevator.open master @a[distance=..25] ~ ~ ~ 1 1 1

execute as @s[tag=elevator_2,tag=go_up] if score elevator_2 elevator.anim matches 150 run scoreboard players set elevator_2 elevator.state 2
execute as @s[tag=elevator_2,tag=go_down] if score elevator_2 elevator.anim matches 150 run scoreboard players set elevator_2 elevator.state 1




execute as @s[tag=elevator_1.bunker] run scoreboard players add elevator_1 elevator.anim 1

execute as @s[tag=elevator_1.bunker] if score elevator_1 elevator.anim matches 10 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_1"}
execute as @s[tag=elevator_1.bunker] if score elevator_1 elevator.anim matches 20 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_1"}
execute as @s[tag=elevator_1.bunker] if score elevator_1 elevator.anim matches 30 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_1"}
execute as @s[tag=elevator_1.bunker] if score elevator_1 elevator.anim matches 40 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_1"}
execute as @s[tag=elevator_1.bunker] if score elevator_1 elevator.anim matches 50 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_1"}
execute as @s[tag=elevator_1.bunker] if score elevator_1 elevator.anim matches 60 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_1"}
execute as @s[tag=elevator_1.bunker] if score elevator_1 elevator.anim matches 70 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_1"}
execute as @s[tag=elevator_1.bunker] if score elevator_1 elevator.anim matches 80 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_1"}
execute as @s[tag=elevator_1.bunker] if score elevator_1 elevator.anim matches 90 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_1"}
execute as @s[tag=elevator_1.bunker] if score elevator_1 elevator.anim matches 100 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_1"}
execute as @s[tag=elevator_1.bunker] if score elevator_1 elevator.anim matches 110 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_1"}
execute as @s[tag=elevator_1.bunker] as @e[tag=elevator_1] at @s if score elevator_1 elevator.anim matches 110 as @a[distance=..3] run function nsmaze:zprivate/elevator/teleport {tag:"inside",elevator:"1.bunker"}


execute as @e[tag=elevator_1.bunker_door] at @s positioned ^-1 ^ ^ if score elevator_1 elevator.anim matches 110 run playsound nightshifts:sfx.extras.elevator.reached master @a[distance=..25] ~ ~ ~ 1 0 1
execute as @e[tag=elevator_1.bunker_door] at @s positioned ^-1 ^ ^ if score elevator_1 elevator.anim matches 150 run playsound nightshifts:sfx.extras.elevator.open master @a[distance=..25] ~ ~ ~ 1 1 1
execute as @s[tag=elevator_1.bunker,tag=go_up] if score elevator_1 elevator.anim matches 150 run scoreboard players set elevator_1 elevator.state 2
execute as @s[tag=elevator_1.bunker,tag=go_down] if score elevator_1 elevator.anim matches 150 run scoreboard players set elevator_1 elevator.state 1





execute as @s[tag=elevator_2.bunker] run scoreboard players add elevator_2 elevator.anim 1

execute as @s[tag=elevator_2.bunker] if score elevator_2 elevator.anim matches 10 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_2"}
execute as @s[tag=elevator_2.bunker] if score elevator_2 elevator.anim matches 20 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_2"}
execute as @s[tag=elevator_2.bunker] if score elevator_2 elevator.anim matches 30 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_2"}
execute as @s[tag=elevator_2.bunker] if score elevator_2 elevator.anim matches 40 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_2"}
execute as @s[tag=elevator_2.bunker] if score elevator_2 elevator.anim matches 50 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_2"}
execute as @s[tag=elevator_2.bunker] if score elevator_2 elevator.anim matches 60 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_2"}
execute as @s[tag=elevator_2.bunker] if score elevator_2 elevator.anim matches 70 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_2"}
execute as @s[tag=elevator_2.bunker] if score elevator_2 elevator.anim matches 80 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_2"}
execute as @s[tag=elevator_2.bunker] if score elevator_2 elevator.anim matches 90 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_2"}
execute as @s[tag=elevator_2.bunker] if score elevator_2 elevator.anim matches 100 run function nsmaze:zprivate/elevator/anims/private/unlit {tag:"elevator_2"}
execute as @s[tag=elevator_2.bunker] if score elevator_2 elevator.anim matches 110 run function nsmaze:zprivate/elevator/anims/private/lit {tag:"elevator_2"}
execute as @s[tag=elevator_2.bunker] as @e[tag=elevator_2] at @s if score elevator_2 elevator.anim matches 110 as @a[distance=..3] run function nsmaze:zprivate/elevator/teleport {tag:"inside",elevator:"2.bunker"}

execute as @e[tag=elevator_2.bunker_door] at @s positioned ^1 ^ ^ if score elevator_2 elevator.anim matches 110 run playsound nightshifts:sfx.extras.elevator.reached master @a[distance=..25] ~ ~ ~ 1 0 1
execute as @e[tag=elevator_2.bunker_door] at @s positioned ^1 ^ ^ if score elevator_2 elevator.anim matches 150 run playsound nightshifts:sfx.extras.elevator.open master @a[distance=..25] ~ ~ ~ 1 1 1

execute as @s[tag=elevator_2.bunker,tag=go_up] if score elevator_2 elevator.anim matches 150 run scoreboard players set elevator_2 elevator.state 2
execute as @s[tag=elevator_2.bunker,tag=go_down] if score elevator_2 elevator.anim matches 150 run scoreboard players set elevator_2 elevator.state 1

