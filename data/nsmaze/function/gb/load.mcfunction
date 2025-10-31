scoreboard objectives add player.id dummy
scoreboard players add .global player.id 1

scoreboard objectives add panel.timer dummy

scoreboard objectives add ambience dummy
scoreboard players set .OUTSIDE ambience 120
scoreboard players set .INSIDE ambience 540
scoreboard players set .LIGHT ambience 1
scoreboard players set .ELEVATOR ambience 60

scoreboard objectives add oxygen dummy
scoreboard objectives add oxygen.timer dummy
scoreboard objectives add oxygen.sound dummy

scoreboard players set .FALL_RATE oxygen.timer 85
scoreboard players set .SOUND oxygen.timer 160

scoreboard objectives add radar dummy
scoreboard players set .100 radar 100
scoreboard players set .TIMER radar 100 

scoreboard objectives add radar.id dummy
scoreboard players add .global radar.id 1

scoreboard objectives add elevator.anim dummy
scoreboard objectives add elevator.state dummy
scoreboard objectives add elevator.id dummy
execute unless score .global elevator.id matches -2147483648..2147483647 run scoreboard players add .global elevator.id 1

scoreboard objectives add light dummy
scoreboard objectives add light.state dummy
execute unless score .MINIMA light matches -2147483648..2147483647 run scoreboard players set .MINIMA light 1
execute unless score .MAXIMA light matches -2147483648..2147483647 run scoreboard players set .MAXIMA light 10

scoreboard objectives add flashlight_id dummy
scoreboard objectives add flashlight_limit dummy
scoreboard players add .global flashlight_id 1

scoreboard objectives add door_open dummy
scoreboard players set .OPENAT door_open 40

scoreboard objectives add maze.coords dummy
scoreboard objectives add ns.extras dummy

scoreboard objectives add sanity dummy

scoreboard objectives add van_screen dummy
execute unless score screen van_screen matches -2147483648..2147483647 run scoreboard players set screen van_screen 1

scoreboard objectives add door_autoclose dummy
execute unless score .TIMER door_autoclose matches -2147483648..2147483647 run scoreboard players set .TIMER door_autoclose 100

scoreboard players set #activity_min game.v 0
scoreboard players set #activity_max game.v 50

scoreboard objectives add flicker dummy

scoreboard objectives add vhs_time.ticks dummy
scoreboard objectives add vhs_time.minutes dummy
scoreboard objectives add vhs_time.seconds dummy


scoreboard objectives add ui.timer dummy
scoreboard players reset * ui.timer
scoreboard players set .play ui.timer 20
scoreboard players set .pause ui.timer 10

kill @e[tag=elevator_1.button]
kill @e[tag=elevator_2.button]
summon interaction 43 56 51 {response:true,Tags:["elevator_2.button"]}
summon interaction -2 56 92 {response:true,Tags:["elevator_1.button"]}



function nsmaze:gb/tick_1s
