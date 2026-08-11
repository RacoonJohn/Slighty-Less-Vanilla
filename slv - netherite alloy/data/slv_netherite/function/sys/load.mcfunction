


scoreboard objectives add SLV.Math dummy
    scoreboard players set #100 SLV.Math 100

scoreboard objectives add SLV.Settings dummy
    execute unless score #netherite.boost SLV.Settings matches 0..1 run scoreboard players set #netherite.Boost SLV.Settings 1
