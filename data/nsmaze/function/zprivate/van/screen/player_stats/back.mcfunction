data modify storage ns:storage VAN_PLAYER_STATS.INSIDE prepend from storage ns:storage VAN_PLAYER_STATS.INSIDE[-1]
data remove storage ns:storage VAN_PLAYER_STATS.INSIDE[-1]
playsound nightshifts:sfx.clickui master @a[distance=..10]

tag @e[tag=van_screen.player_stats.ui] remove set
data remove entity @s interaction