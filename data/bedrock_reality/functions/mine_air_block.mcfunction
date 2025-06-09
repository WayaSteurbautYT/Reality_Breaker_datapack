# Play a sound (e.g., block.wool.break)
playsound minecraft:block.wool.break master @s ~ ~ ~ 1 1.5

# Summon Cloud Fragment item
# The item should be the amethyst_shard version we defined earlier.
summon item ~ ~ ~ {Item:{id:"minecraft:amethyst_shard", Count:1b, tag:{bedrock_reality:{custom_item:"cloud_fragment"}, display:{Name:'{"text":"Cloud Fragment","italic":true,"color":"light_purple"}', Lore:['{"text":"A piece of the sky itself.","italic":true,"color":"blue"}']}}}}

# Show some particles (e.g., cloud or snowflake)
particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.02 10 normal

# Optional: Add a small cooldown to prevent spamming (using a scoreboard)
scoreboard players add @s br_air_mine_cd 10
