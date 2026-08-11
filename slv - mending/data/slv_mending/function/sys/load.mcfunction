


scoreboard objectives add SLV.Math dummy
    scoreboard players set #100 SLV.Math 100

scoreboard objectives add SLV.Settings dummy
    execute unless score #helmetWeight SLV.Settings matches -2147483648..2147483647 run scoreboard players set #helmetWeight SLV.Settings 5
    execute unless score #leggingsWeight SLV.Settings matches -2147483648..2147483647 run scoreboard players set #leggingsWeight SLV.Settings 7
    execute unless score #bootsWeight SLV.Settings matches -2147483648..2147483647 run scoreboard players set #bootsWeight SLV.Settings 4
    execute unless score #gravityWeight SLV.Settings matches -2147483648..2147483647 run scoreboard players set #gravityWeight SLV.Settings 100
    execute unless score #dragWeight SLV.Settings matches -2147483648..2147483647 run scoreboard players set #dragWeight SLV.Settings 100
    execute unless score #giveBook SLV.Settings matches 0..1 run scoreboard players set #giveBook SLV.Settings 1
    execute unless score #giveBook.minPrice SLV.Settings matches 1..64 run scoreboard players set #giveBook.minPrice SLV.Settings 20
    execute unless score #giveBook.deltaPrice SLV.Settings matches 0..64 run scoreboard players set #giveBook.deltaPrice SLV.Settings 20


scoreboard objectives add SLV.XpTotal dummy
