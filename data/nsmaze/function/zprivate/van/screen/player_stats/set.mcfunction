$item replace entity @s[tag=player_head] container.0 with player_head[profile={name:"$(username)"}]
$data modify entity @s[tag=username_store] data.username set value "$(username)"
tag @s add set
