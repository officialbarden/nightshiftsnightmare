data modify storage ns:storage VAN_PLAYER_STATS.INSIDE append from storage ns:storage VAN_PLAYER_STATS.INSIDE[0]
data remove storage ns:storage VAN_PLAYER_STATS.INSIDE[0]

playsound nightshifts:sfx.clickui master @a[distance=..10]

tag @e[tag=van_screen.player_stats.ui] remove set
data remove entity @s interaction
