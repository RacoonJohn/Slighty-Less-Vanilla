
execute store result score #helmetWeight SLV.Math run function slv_elytra:sys/player/get_weight/head
execute store result score #leggingsWeight SLV.Math run function slv_elytra:sys/player/get_weight/legs
execute store result score #bootsWeight SLV.Math run function slv_elytra:sys/player/get_weight/feet


scoreboard players operation #helmetWeight SLV.Math *= #helmetWeight SLV.Settings
scoreboard players operation #leggingsWeight SLV.Math *= #leggingsWeight SLV.Settings
scoreboard players operation #bootsWeight SLV.Math *= #bootsWeight SLV.Settings

scoreboard players operation #helmetWeight SLV.Math += #leggingsWeight SLV.Math
scoreboard players operation #helmetWeight SLV.Math += #bootsWeight SLV.Math
scoreboard players operation #helmetWeight SLV.Math /= #armorWeight SLV.Math


scoreboard players operation #gravityWeight SLV.Math = #helmetWeight SLV.Math
scoreboard players operation #gravityWeight SLV.Math *= #gravityWeight SLV.Settings

scoreboard players operation #dragWeight SLV.Math = #helmetWeight SLV.Math
scoreboard players operation #dragWeight SLV.Math *= #dragWeight SLV.Settings


execute store result storage slv:data macro.x float 0.0002 run scoreboard players get #gravityWeight SLV.Math
execute store result storage slv:data macro.y float -0.0001 run scoreboard players get #dragWeight SLV.Math

function slv_elytra:sys/player/gravity_friction with storage slv:data macro

