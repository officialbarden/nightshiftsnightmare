kill @e[tag=van_screen.player_stats.ui]
kill @e[tag=van_screen.quota.ui]
kill @e[tag=van_screen.bunker_stats.ui]


data modify entity @n[tag=van_screen.bunker_stats,type=text_display] text set value {text:"BUNKER STATS",font:"minecraft:retron2000"}
data modify entity @n[tag=van_screen.player_stats,type=text_display] text set value {text:"PLAYER STATS",font:"minecraft:retron2000",bold:true,color:"#fc0000"}
data modify entity @n[tag=van_screen.quota,type=text_display] text set value {text:"QUOTA","font":"minecraft:retron2000"}

playsound nightshifts:sfx.clickui master @a[distance=..10]


#> Player Head
summon marker -109 71 48 {Tags:["van_screen.player_stats.ui","username_store"],data:{"username":""}}
summon item_display -109.18 71.43 48.87 {Rotation:[0f,0f],Tags:["van_screen.player_stats.ui","player_head"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.5f],scale:[0.8f,0.8f,0.8f]},item:{id:"minecraft:player_head",count:1}}
summon minecraft:text_display -109.18 70.87 48.55 {text:"username",Tags:["van_screen.player_stats.ui","player_username"], background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text_opacity: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.4f, 0.4f, 0.4f], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:text_display -109.18 70.75 48.55 {text:"sanity: 90%",Tags:["van_screen.player_stats.ui","player_sanity"], background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text_opacity: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.4f, 0.4f, 0.4f], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:text_display -109.18 70.64 48.55 {text:"o2: 56",Tags:["van_screen.player_stats.ui","player_o2"], background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text_opacity: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.4f, 0.4f, 0.4f], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:text_display -109.02 70.31 48.55 {Passengers:[{id:"interaction",response:true,Tags:["van_screen.player_stats.ui","next_button"],height:0.3f,width:0.3f}],Tags:["van_screen.player_stats.ui","next_button"], background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: "▶", text_opacity: 0}
summon minecraft:text_display -109.33 70.31 48.55 {Passengers:[{id:"interaction",response:true,Tags:["van_screen.player_stats.ui","back_button"],height:0.3f,width:0.3f}],Tags:["van_screen.player_stats.ui","back_button"], background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: "◀", text_opacity: 0}

scoreboard players set screen van_screen 2
