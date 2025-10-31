# $(rot_x)
scoreboard objectives add elevator.id dummy
execute unless score .global elevator.id matches -2147483648..2147483647 run scoreboard players add .global elevator.id 1


$execute rotated $(rot_x) 0 run summon item_display ^ ^ ^ {teleport_duration:2,Tags:["elevator","new"],item: {components: {"minecraft:custom_model_data": 60003, "minecraft:custom_name": '{"color":"yellow","italic":false,"text":"nightshifts:item/deco/elevator"}'}, count: 1, id: "minecraft:cornflower"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [16.0f, 16.0f, 16.0f], translation: [0.2f, 8.0f, 0.0f]}}
$tp @e[tag=new,tag=elevator] ~ ~ ~ $(rot_x) 0


# 3x3
$execute rotated $(rot_x) 0 run summon item_display ^ ^-0.5 ^ {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^ ^-0.5 ^1 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^ ^-0.5 ^-1 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^1 ^-0.5 ^ {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^-1 ^-0.5 ^ {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^1 ^-0.5 ^1 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^1 ^-0.5 ^-1 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^-1 ^-0.5 ^1 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^-1 ^-0.5 ^-1 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}

$execute rotated $(rot_x) 0 run summon item_display ^2 ^-0.5 ^ {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^2 ^-0.5 ^1 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^2 ^-0.5 ^-1 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}

#> Wall
$execute rotated $(rot_x) 0 run summon item_display ^1 ^1 ^2 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^1 ^1 ^-2 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^-1 ^1 ^-2 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^-1 ^1 ^2 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}

$execute rotated $(rot_x) 0 run summon item_display ^2 ^1 ^2 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^2 ^1 ^-2 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^-2 ^1 ^2 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^-2 ^1 ^-2 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^-2 ^1 ^1 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^-2 ^1 ^0 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
$execute rotated $(rot_x) 0 run summon item_display ^-2 ^1 ^-1 {teleport_duration:2,Tags:["elevator","elevator_floor","new"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}


scoreboard players operation @e[tag=new] elevator.id = .global elevator.id
scoreboard players add .global elevator.id 1
tag @e[tag=elevator] remove new