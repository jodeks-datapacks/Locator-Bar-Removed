# Append blank
function locator_bar_removed:image/process/append/blank

data modify storage locator_bar_removed:image data.tellraw append \
  from storage locator_bar_removed:image data.current.description_text

# Append blank
function locator_bar_removed:image/process/append/blank

# Append line_break
execute unless score $index.image_data locator_bar_removed.image = $length locator_bar_removed.image \
  run function locator_bar_removed:image/process/append/line_break

# Remove first element from the description
data remove storage locator_bar_removed:image data.current.description[0]
 