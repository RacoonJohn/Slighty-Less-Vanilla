


scoreboard objectives add SLV.Math dummy
    scoreboard players set #100 SLV.Math 100

scoreboard objectives add SLV.Settings dummy
    execute unless score #helmetWeight SLV.Settings matches -2147483648..2147483647 run scoreboard players set #helmetWeight SLV.Settings 5
    execute unless score #leggingsWeight SLV.Settings matches -2147483648..2147483647 run scoreboard players set #leggingsWeight SLV.Settings 7
    execute unless score #bootsWeight SLV.Settings matches -2147483648..2147483647 run scoreboard players set #bootsWeight SLV.Settings 4
    execute unless score #gravityWeight SLV.Settings matches -2147483648..2147483647 run scoreboard players set #gravityWeight SLV.Settings 100
    execute unless score #dragWeight SLV.Settings matches -2147483648..2147483647 run scoreboard players set #dragWeight SLV.Settings 100
    