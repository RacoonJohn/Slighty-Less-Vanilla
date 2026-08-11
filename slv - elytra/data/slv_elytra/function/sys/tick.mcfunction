
execute store result score #tickElytra SLV.Math run time query gametime


scoreboard players operation #armorWeight SLV.Math = #bootsWeight SLV.Settings
scoreboard players operation #armorWeight SLV.Math += #leggingsWeight SLV.Settings
scoreboard players operation #armorWeight SLV.Math += #helmetWeight SLV.Settings

execute as @a at @s run function slv_elytra:sys/player/tick