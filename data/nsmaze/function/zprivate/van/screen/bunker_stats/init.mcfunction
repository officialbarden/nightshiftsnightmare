kill @e[tag=van_screen.player_stats.ui]
kill @e[tag=van_screen.quota.ui]
kill @e[tag=van_screen.bunker_stats.ui]


data modify entity @n[tag=van_screen.bunker_stats,type=text_display] text set value {text:"BUNKER STATS",font:"minecraft:retron2000",bold:true,color:"#fc0000"}
data modify entity @n[tag=van_screen.player_stats,type=text_display] text set value {text:"PLAYER STATS",font:"minecraft:retron2000"}
data modify entity @n[tag=van_screen.quota,type=text_display] text set value {text:"QUOTA",font:"minecraft:retron2000"}
playsound nightshifts:sfx.clickui master @a[distance=..10]

summon minecraft:text_display -109.59 71.15 48.55 {Tags:["van_screen.bunker_stats.ui"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:"ACTIVITY: "}
summon minecraft:text_display -108.59 71.15 48.55 {Tags:["van_screen.bunker_stats.ui","activity_level"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:"0.01"}
summon minecraft:text_display -109.76 70.85 48.55 {Tags:["van_screen.bunker_stats.ui"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:"POWER: "}
summon minecraft:text_display -108.59 70.85 48.55 {Tags:["van_screen.bunker_stats.ui","power"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:"0.01"}
summon minecraft:text_display -109.79 70.55 48.55 {Tags:["van_screen.bunker_stats.ui"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:"TOXIN: "}
summon minecraft:text_display -108.59 70.55 48.55 {Tags:["van_screen.bunker_stats.ui","toxin_meter"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:"0.01"}


scoreboard players set screen van_screen 1