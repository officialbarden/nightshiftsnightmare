execute as @s run function nsmaze:zprivate/vhs_time/main
execute as @s store result storage ns:storage temp.macro.O2.font int 1 run random value 1..3
execute as @s[team=inside] run function nsmaze:zprivate/o2/glitchy with storage ns:storage temp.macro.O2

#> Flicker when outside.
execute as @s[team=outside] run function nsmaze:zprivate/o2/pause with storage ns:storage temp.macro.O2

#scoreboard players set @a[team=outside] oxygen 99

execute unless score @s oxygen matches -2147483648..2147483647 run scoreboard players operation @s oxygen.timer = .FALL_RATE oxygen.timer
execute unless score @s oxygen matches -2147483648..2147483647 run scoreboard players operation @s oxygen.sound = .SOUND oxygen.timer
execute unless score @s oxygen matches -2147483648..2147483647 run scoreboard players set @s oxygen 99

scoreboard players remove @s[team=inside] oxygen.timer 1
execute if score @s oxygen.timer matches ..0 if score @s oxygen matches 1.. run playsound nightshifts:sfx.oxygen_deplete master @s ~ ~ ~
execute if score @s oxygen.timer matches ..0 run scoreboard players remove @s[scores={oxygen=1..}] oxygen 1
execute if score @s oxygen.timer matches ..0 run scoreboard players operation @s oxygen.timer = .FALL_RATE oxygen.timer

scoreboard players remove @s[] oxygen.sound 1
#execute if items entity @s armor.head carved_pumpkin if score @s oxygen.sound matches ..0 if score @s oxygen matches ..3 run playsound nightshifts:sfx.extras.gasping master @s ~ ~ ~ 1 1 1
#execute if items entity @s armor.head carved_pumpkin if score @s oxygen.sound matches ..0 unless score @s oxygen matches ..3 if predicate nsmaze:sprint run playsound nightshifts:sfx.extras.breathing master @s ~ ~ ~ 1 1 1
#execute if items entity @s armor.head carved_pumpkin if score @s oxygen.sound matches ..0 unless score @s oxygen matches ..3 unless predicate nsmaze:sprint run playsound nightshifts:sfx.extras.breathing master @s ~ ~ ~ 1 1 1
#execute if items entity @s armor.head carved_pumpkin if score @s oxygen.sound matches ..0 run scoreboard players operation @s oxygen.sound = .SOUND oxygen.timer
