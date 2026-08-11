
execute store result score #tick SLV.Math run time query gametime

scoreboard players remove #tick SLV.Math 1

data modify storage slv:data macro.dialog set value {  \
    "type": "minecraft:dialog_list",\
    "title": "Settings",\
    "body": {\
            "type": "minecraft:plain_message",\
            "contents": ""  \
        },\
    "columns": 2,\
    "dialogs": [\
    ]\
}

execute if score #tick SLV.Math = #tickElytra SLV.Math run function slv:sys/config/elytra

execute if score #tick SLV.Math = #tickNetherite SLV.Math run function slv:sys/config/netherite

function slv:sys/settings/show_dialog with storage slv:data macro