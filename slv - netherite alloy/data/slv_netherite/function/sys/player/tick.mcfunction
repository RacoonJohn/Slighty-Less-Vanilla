
execute unless score #netherite.boost SLV.Settings matches 1 run return fail

attribute @s block_break_speed modifier remove slv_netherite:boost
execute store result score #haste SLV.Math run data get entity @s active_effects[{id:"minecraft:haste"}].amplifier
execute if score #haste SLV.Math matches 1.. if items entity @s weapon.mainhand #slv_netherite:boostable_tool[enchantments~[{"enchantments":"efficiency",levels:{min:5}}]] if data entity @s SelectedItem.components."minecraft:tool".rules[{speed:14f}] run attribute @s block_break_speed modifier add slv_netherite:boost 6.2 add_value

