scoreboard objectives add jodek.config dummy
execute unless score &locator_bar_removed_load_message jodek.config = &locator_bar_removed_load_message jodek.config run scoreboard players set &locator_bar_removed_load_message jodek.config 1
execute unless score &locator_bar_removed_advancements jodek.config = &locator_bar_removed_advancements jodek.config run scoreboard players set &locator_bar_removed_advancements jodek.config 1

scoreboard objectives add locator_bar_removed.image dummy

# Print the image
function locator_bar_removed:config/image

gamerule locator_bar false