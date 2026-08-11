

item modify entity @s container.* {type:"filtered",item_filter:{items:"#enchantable/durability"},on_pass:{type:"set_custom_data",tag:{"slv":{slot:""}}}}
item modify entity @s weapon.* {type:"filtered",item_filter:{items:"#enchantable/durability"},on_pass:{type:"set_custom_data",tag:{"slv":{slot:""}}}}
item modify entity @s armor.* {type:"filtered",item_filter:{items:"#enchantable/durability"},on_pass:{type:"set_custom_data",tag:{"slv":{slot:""}}}}


advancement revoke @s only slv_mending:tick

