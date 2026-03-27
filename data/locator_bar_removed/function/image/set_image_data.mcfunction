#> locator_bar_removed:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage locator_bar_removed:image data.image_data  
# @writes storage locator_bar_removed:image data.width  
# @writes storage locator_bar_removed:image data.height  
# @writes storage locator_bar_removed:image data.background_color  
# @writes storage locator_bar_removed:image data.description  
# @writes storage locator_bar_removed:image data.pixel_character.blank  
# @writes storage locator_bar_removed:image data.pixel_character.chat  
# @writes storage locator_bar_removed:image data.pixel_character.lore

data remove storage locator_bar_removed:image data.image_data
data remove storage locator_bar_removed:image data.width
data remove storage locator_bar_removed:image data.height
data remove storage locator_bar_removed:image data.background_color
data remove storage locator_bar_removed:image data.description

$data modify storage locator_bar_removed:image data.image_data set value $(image_data)
$data modify storage locator_bar_removed:image data.width set value $(width)
$data modify storage locator_bar_removed:image data.height set value $(height)
$data modify storage locator_bar_removed:image data.background_color set value "$(background_color)"
$data modify storage locator_bar_removed:image data.description set value $(description)

data modify storage locator_bar_removed:image data.pixel_character.blank set value "　"
data modify storage locator_bar_removed:image data.pixel_character.pixel set value "▌▌"
data modify storage locator_bar_removed:image data.pixel_character.line_break set value '\n'

function locator_bar_removed:image/process/generate
