# Copy current pixel
data modify storage locator_bar_removed:image data.current.pixel_color set \
  from storage locator_bar_removed:image data.current.image_data[0]
data modify storage locator_bar_removed:image data.current.description_text set \
  from storage locator_bar_removed:image data.current.description[0]

scoreboard players add $index.image_data locator_bar_removed.image 1

# Calculate column
scoreboard players operation $index.column locator_bar_removed.image = $index.image_data locator_bar_removed.image
scoreboard players operation $index.column locator_bar_removed.image %= $width locator_bar_removed.image

# Calculate row
scoreboard players operation $index.row locator_bar_removed.image = $index.image_data locator_bar_removed.image
scoreboard players operation $index.row locator_bar_removed.image /= $width locator_bar_removed.image

# Append start spacing
execute if score $index.column locator_bar_removed.image matches 1 run \
  function locator_bar_removed:image/process/append/blank

# Append colored pixel
execute unless data storage locator_bar_removed:image data.current{pixel_color: ''} run \
  function locator_bar_removed:image/process/append/pixel
# Append background pixel
execute if data storage locator_bar_removed:image data.current{pixel_color: ''} run \
  function locator_bar_removed:image/process/append/background

# Append description
execute if score $index.column locator_bar_removed.image matches 0 run \
    function locator_bar_removed:image/process/image_end/description

# Remove first element from the image_data array
data remove storage locator_bar_removed:image data.current.image_data[0]
# Loop over rows
execute if score $index.row locator_bar_removed.image < $height locator_bar_removed.image run \
  function locator_bar_removed:image/process/loop_over_image_data
 