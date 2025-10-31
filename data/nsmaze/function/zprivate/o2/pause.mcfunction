scoreboard players add @s ui.timer 1

execute if score @s ui.timer = .pause ui.timer run title @s actionbar ["",{"text":"        ","font":"nsmaze/time/windowed/1"}]
#$execute if score @s ui.timer = .play ui.timer run title @s actionbar ["",{"text":"O2 ","font":"nsmaze/oxygen/windowed/1"},{"score":{"name":"@s","objective": "oxygen"},"font": "nsmaze/oxygen/windowed/1"},{"text": "%","font": "nsmaze/oxygen/windowed/1"},{"text":"$(time)","font":"nsmaze/time/windowed/1"}]
$execute if score @s ui.timer = .play ui.timer run title @s actionbar ["",{"text":"$(time)","font":"nsmaze/time/windowed/1"}]


execute if score @s ui.timer = .play ui.timer run scoreboard players reset @s ui.timer

