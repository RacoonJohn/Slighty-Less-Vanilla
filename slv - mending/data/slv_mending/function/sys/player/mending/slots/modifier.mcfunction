data modify storage slv:data macro.modifier set value {type:"set_components",components:{damage:1000000,"!banner_patterns":{},"!provides_banner_patterns":{},"!attribute_modifiers":{},"!weapon":{},"!tool":{},enchantments:{},"!consumable":{},custom_data:{slv:{original:{}}}}}



data modify storage slv:data macro.modifier.components.custom_data.slv.original.id set from storage slv:data macro.item.id

execute unless data storage slv:data macro.item.components."minecraft:item_name" run function slv_mending:sys/player/mending/slots/item_id_name

execute if data storage slv:data macro.item.components."minecraft:item_name" run data modify storage slv:data macro.modifier.components.item_name set from storage slv:data macro.item.components."minecraft:item_name"
execute if data storage slv:data macro.item.components."minecraft:custom_name" run data modify storage slv:data macro.modifier.components.custom_name set from storage slv:data macro.item.components."minecraft:custom_name"

execute if data storage slv:data macro.item.components."minecraft:item_model" run data modify storage slv:data macro.modifier.components.item_model set from storage slv:data macro.item.components."minecraft:item_model"
execute unless data storage slv:data macro.item.components."minecraft:item_model" run data modify storage slv:data macro.modifier.components.item_model set from storage slv:data macro.item.id

execute if data storage slv:data macro.item.components."minecraft:rarity" run data modify storage slv:data macro.modifier.components.rarity set from storage slv:data macro.item.components."minecraft:rarity"
execute unless data storage slv:data macro.item.components."minecraft:rarity" run data modify storage slv:data macro.modifier.components.rarity set value "common"

data modify storage slv:data macro.modifier.components.enchantments set from storage slv:data macro.item.components."minecraft:enchantments"
data modify storage slv:data macro.modifier.components.enchantments."slv_mending:broke" set value 1

execute unless data storage slv:data macro.item.components."minecraft:item_name" run data modify storage slv:data macro.modifier.components.custom_data.slv.original.classic_item_name set value 1b
execute unless data storage slv:data macro.item.components."minecraft:item_model" run data modify storage slv:data macro.modifier.components.custom_data.slv.original.classic_item_model set value 1b
execute unless data storage slv:data macro.item.components."minecraft:rarity" run data modify storage slv:data macro.modifier.components.custom_data.slv.original.classic_rarity set value 1b


#execute unless data storage slv:data macro.item.components."minecraft:tooltip_display".hidden_components unless data storage slv:data macro.item.components."minecraft:tooltip_display".hide_tooltip run data modify storage slv:data macro.modifier.components."minecraft:tooltip_display".hidden_components set value ["unbreakable"]

