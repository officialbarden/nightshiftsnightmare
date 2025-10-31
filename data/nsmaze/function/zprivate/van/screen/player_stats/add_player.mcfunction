$data remove storage ns:storage VAN_PLAYER_STATS.INSIDE[{"username":"$(username)"}]
$data modify storage ns:storage VAN_PLAYER_STATS.INSIDE append value {"username":"$(username)"}
