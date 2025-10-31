$data modify entity @n[tag=van_screen.player_stats.ui,tag=player_username] text set value [{text:"$(username)"}]
$data modify entity @n[tag=van_screen.player_stats.ui,tag=player_sanity] text set value [{text:"sanity: "},{score:{name:"$(username)",objective:"sanity"}},{text:"%"}]'
$data modify entity @n[tag=van_screen.player_stats.ui,tag=player_o2] text set value [{text:"O2: "},{score:{name:"$(username)",objective:"oxygen"}},{text:"%"}]

