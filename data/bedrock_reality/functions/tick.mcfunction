# Detect player sneaking, looking at air, and holding a specific item (e.g., a feather)
# This is a simplified approach for now.
# The target block check for air is tricky; raycasting is complex.
# We'll try checking the block directly in front of the player's eyes.

execute as @a[nbt={SelectedItem:{id:"minecraft:feather",tag:{bedrock_reality:{tool:"cloud_sweeper"}}}},predicate=minecraft:sneaking] at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air run function bedrock_reality:mine_air_block

# Breakable Bedrock Logic
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",tag:{bedrock_reality:{custom_item:"reality_breaker_pickaxe"}}}},predicate=minecraft:sneaking] at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ minecraft:bedrock run function bedrock_reality:mine_bedrock_block
