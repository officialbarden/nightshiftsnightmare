scoreboard players set @e[tag=nsmaze.light] light.state 2
scoreboard players set @e[tag=aj.fusebox.root] fusebox_state 2
stopsound @a[team=inside] * nightshifts:sfx.extras.led

tellraw @a[team=inside] {"text":"There's a blackout! Find a fusebox and fix it with a fuse..","color":"red"}
scoreboard players set blackout light.state 1
