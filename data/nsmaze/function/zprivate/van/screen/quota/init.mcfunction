kill @e[tag=van_screen.player_stats.ui]
kill @e[tag=van_screen.quota.ui]
kill @e[tag=van_screen.bunker_stats.ui]

data modify entity @n[tag=van_screen.bunker_stats,type=text_display] text set value {text:"BUNKER STATS",font:"minecraft:retron2000"}
data modify entity @n[tag=van_screen.player_stats,type=text_display] text set value {text:"PLAYER STATS",font:"minecraft:retron2000"}
data modify entity @n[tag=van_screen.quota,type=text_display] text set value {text:"QUOTA",font:"minecraft:retron2000","bold":true,color:"#fc0000"}
playsound nightshifts:sfx.clickui master @a[distance=..10]

summon minecraft:text_display -109.18 71.05 48.55 {text:"QUOTA",Tags:["van_screen.quota.ui","quota_title"],alignment: "center", background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text_opacity: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1f, 1f, 1f], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:text_display -109.18 70.79 48.55 {text:"100$/300$",Tags:["van_screen.quota.ui","quota"],alignment: "center", background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text_opacity: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.7f, 0.7f, 0.7f], translation: [0.0f, 0.0f, 0.0f]}}


scoreboard players set screen van_screen 3
