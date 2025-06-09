# Play a distinct sound
playsound minecraft:block.netherite_block.break master @s ~ ~ ~ 2 0.8

# Replace bedrock with air
setblock ~ ~ ~ minecraft:air

# Summon bedrock item
summon item ~ ~ ~ {Item:{id:"minecraft:bedrock", Count:1b}}

# Show some particles
particle minecraft:block minecraft:bedrock ~ ~ ~ 0.5 0.5 0.5 0 30 normal
particle minecraft:ash ~ ~ ~ 0.5 0.5 0.5 0.1 50 normal

# Tellraw message to the player
tellraw @s [{"text":"You feel reality shift as the bedrock shatters!","color":"dark_purple","italic":true}]
