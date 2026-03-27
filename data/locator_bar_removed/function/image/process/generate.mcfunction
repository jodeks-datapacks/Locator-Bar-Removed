#> locator_bar_removed:image/process/generate
#
# This function generates the image data.

data modify storage locator_bar_removed:image data.current.image_data set from storage locator_bar_removed:image data.image_data
data modify storage locator_bar_removed:image data.current.description set from storage locator_bar_removed:image data.description
data modify storage locator_bar_removed:image data.current.pixel_character set from storage locator_bar_removed:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data locator_bar_removed.image 0
# Set width
execute store result score $width locator_bar_removed.image run data get storage locator_bar_removed:image data.width
# Set height
execute store result score $height locator_bar_removed.image run data get storage locator_bar_removed:image data.height
# Set length
scoreboard players operation $length locator_bar_removed.image = $width locator_bar_removed.image
scoreboard players operation $length locator_bar_removed.image *= $height locator_bar_removed.image
# Clear remaining entries in tellraw
data remove storage locator_bar_removed:image data.tellraw

# Add spacing on top
function locator_bar_removed:image/process/append/line_break
# Loop over image data
function locator_bar_removed:image/process/loop_over_image_data
# Add spacing on bottom
function locator_bar_removed:image/process/append/line_break