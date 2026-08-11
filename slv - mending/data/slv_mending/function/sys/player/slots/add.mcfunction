
execute if items entity @s weapon.mainhand #enchantable/durability run item modify entity @s weapon.mainhand {type:"filtered",item_filter:{predicates:{enchantments:[{enchantments:"mending",levels:{min:1}}]}},on_pass:{type:"set_custom_data",tag:{"slv":{slot:"mainhand"}}}}
execute if items entity @s weapon.offhand #enchantable/durability run item modify entity @s weapon.offhand {type:"filtered",item_filter:{predicates:{enchantments:[{enchantments:"mending",levels:{min:1}}]}},on_pass:{type:"set_custom_data",tag:{"slv":{slot:"offhand"}}}}
execute if items entity @s armor.head #enchantable/durability run item modify entity @s armor.head {type:"filtered",item_filter:{predicates:{enchantments:[{enchantments:"mending",levels:{min:1}}]}},on_pass:{type:"set_custom_data",tag:{"slv":{slot:"head"}}}}
execute if items entity @s armor.chest #enchantable/durability run item modify entity @s armor.chest {type:"filtered",item_filter:{predicates:{enchantments:[{enchantments:"mending",levels:{min:1}}]}},on_pass:{type:"set_custom_data",tag:{"slv":{slot:"chest"}}}}
execute if items entity @s armor.legs #enchantable/durability run item modify entity @s armor.legs {type:"filtered",item_filter:{predicates:{enchantments:[{enchantments:"mending",levels:{min:1}}]}},on_pass:{type:"set_custom_data",tag:{"slv":{slot:"legs"}}}}
execute if items entity @s armor.feet #enchantable/durability run item modify entity @s armor.feet {type:"filtered",item_filter:{predicates:{enchantments:[{enchantments:"mending",levels:{min:1}}]}},on_pass:{type:"set_custom_data",tag:{"slv":{slot:"feet"}}}}



advancement revoke @s only slv_mending:tick
