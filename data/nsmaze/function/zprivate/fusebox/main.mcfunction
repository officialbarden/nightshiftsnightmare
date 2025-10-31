
#> Fusebox isn't broken:
execute as @e[tag=fusebox_interaction,type=interaction] at @s on target if entity @s[tag=!fixing_fusebox] as @n[tag=aj.fusebox.root] if score @s fusebox_state matches 1 unless score @s aj.fuse_box.check_fixed.frame matches 1.. run function animated_java:fusebox/animations/fuse_box.check_fixed/play

#> Fusebox is broken, but no fuse:
execute as @e[tag=fusebox_interaction,type=interaction] at @s on target if entity @s[tag=!fixing_fusebox] unless items entity @s weapon.* poisonous_potato[custom_data~{type:"fuse"}] as @n[tag=aj.fusebox.root] unless score @s aj.fuse_box.check_broken.frame matches 1.. if score @s fusebox_state matches 2 run function animated_java:fusebox/animations/fuse_box.check_broken/play

#> Fusebox is broken, but has fuse:
execute as @e[tag=fusebox_interaction,type=interaction] at @s on target if items entity @s[tag=!fixing_fusebox] weapon.* poisonous_potato[custom_data~{type:"fuse"}] as @n[tag=aj.fusebox.root] unless score @s aj.fuse_box.fix.frame matches 1.. if score @s fusebox_state matches 2 run function nsmaze:zprivate/fusebox/fix

#> Update Fusebox:
execute as @e[tag=aj.fusebox.root] at @s if score @s aj.fuse_box.fix.frame matches 180.. run function nsmaze:zprivate/fusebox/fixed_fusebox

#> Remove interaction
execute as @e[tag=fusebox_interaction,type=interaction] run data remove entity @s interaction