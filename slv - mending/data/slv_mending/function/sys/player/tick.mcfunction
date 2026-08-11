
function slv_mending:sys/player/slots/remove


execute if items entity @s container.* *[custom_data~{slv:{original:{}}},damage~{durability:{min:1}}] run function slv_mending:sys/player/mending/reverse
execute if items entity @s armor.* *[custom_data~{slv:{original:{}}},damage~{durability:{min:1}}] run function slv_mending:sys/player/mending/reverse
execute if items entity @s weapon.offhand *[custom_data~{slv:{original:{}}},damage~{durability:{min:1}}] run function slv_mending:sys/player/mending/reverse
