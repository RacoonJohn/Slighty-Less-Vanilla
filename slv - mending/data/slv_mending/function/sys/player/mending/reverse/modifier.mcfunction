
data modify storage slv:data macro.modifier set value [{type:"set_item",item:"id"},{type:"set_components",components:{}}]

data modify storage slv:data macro.modifier[0].item set from storage slv:data macro.item.components."minecraft:custom_data".slv.original.id
data modify storage slv:data macro.modifier[1].components set from storage slv:data macro.item.components

data remove storage slv:data macro.modifier[1].components."!minecraft:tool"
data remove storage slv:data macro.modifier[1].components."!minecraft:weapon"
data remove storage slv:data macro.modifier[1].components."!minecraft:attribute_modifiers"
data remove storage slv:data macro.modifier[1].components."!minecraft:banner_patterns"
data remove storage slv:data macro.modifier[1].components."!minecraft:provides_banner_patterns"
data remove storage slv:data macro.modifier[1].components."minecraft:enchantments"."slv_mending:broke"

data remove storage slv:data macro.modifier[1].components."minecraft:custom_data".slv.original
execute store result score #count SLV.Math run data get storage slv:data macro.modifier[1].components."minecraft:custom_data".slv
execute if score #count SLV.Math matches 0 run data remove storage slv:data macro.modifier[1].components."minecraft:custom_data".slv
execute store result score #count SLV.Math run data get storage slv:data macro.modifier[1].components."minecraft:custom_data"
execute if score #count SLV.Math matches 0 run data remove storage slv:data macro.modifier[1].components."minecraft:custom_data"

execute if data storage slv:data macro.item.components."minecraft:custom_data".slv.original.classic_item_name run data remove storage slv:data macro.modifier[1].components.item_name
execute if data storage slv:data macro.item.components."minecraft:custom_data".slv.original.classic_item_model run data remove storage slv:data macro.modifier[1].components.item_model
execute if data storage slv:data macro.item.components."minecraft:custom_data".slv.original.classic_rarity run data remove storage slv:data macro.modifier[1].components.rarity



