execute store result score #glass_item game.v run clear @s yellow_stained_glass_pane 0
execute if score #glass_item game.v matches 5.. run clear @s yellow_stained_glass_pane
scoreboard players reset #glass_item game.v