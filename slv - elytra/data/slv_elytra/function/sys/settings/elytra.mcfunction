$data modify storage slv:data x set value $(gravity)
$data modify storage slv:data y set value $(drag)

execute store result score #gravityWeight SLV.Settings run data get storage slv:data x 100
execute store result score #dragWeight SLV.Settings run data get storage slv:data y 100
