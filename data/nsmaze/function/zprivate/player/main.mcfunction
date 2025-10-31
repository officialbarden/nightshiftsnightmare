item replace entity @s container.0 with yellow_stained_glass_pane[item_name='" "',max_stack_size=1,custom_data={type:"locked_slot"}] 1
item replace entity @s container.1 with yellow_stained_glass_pane[item_name='" "',max_stack_size=1,custom_data={type:"locked_slot"}] 1
item replace entity @s container.7 with yellow_stained_glass_pane[item_name='" "',max_stack_size=1,custom_data={type:"locked_slot"}] 1
item replace entity @s container.8 with yellow_stained_glass_pane[item_name='" "',max_stack_size=1,custom_data={type:"locked_slot"}] 1

execute store result score #slot ns.extras run data get entity @s SelectedItemSlot
execute if score #slot ns.extras matches 0 run data modify entity @s SelectedItemSlot set value 6b
execute if score #slot ns.extras matches 1 run data modify entity @s SelectedItemSlot set value 6b
execute if score #slot ns.extras matches 7 run data modify entity @s SelectedItemSlot set value 2b
execute if score #slot ns.extras matches 8 run data modify entity @s SelectedItemSlot set value 2b
