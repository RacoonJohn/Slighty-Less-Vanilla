
 data modify storage slv:data macro.dialog."dialogs" append value \
{\
        "type": "minecraft:multi_action",\
        "title": "Netherite Alloy",\
        "inputs": [\
            {\
                "type": "minecraft:boolean",\
                "key": "boost",\
                "label": "Golden Netherite Axe & Pickaxe boost",\
                "on_false":"0",\
                "on_true":"1",\
                "initial": true\
            }\
            ],\
        "columns": 1,\
        "actions": [\
            {\
                "label": "Save",\
                "width": 100,\
                "action": {\
                        "type": "minecraft:dynamic/run_command",\
                        "template": "function slv_netherite:sys/settings/netherite {boost:$(boost)}"\
                    }\
                }\
            ]\
        }

execute if score #netherite.boost SLV.Settings matches 1 run data modify storage slv:data macro.dialog."dialogs"[-1]."inputs"[{key:"boost"}].initial set value true
execute if score #netherite.boost SLV.Settings matches 0 run data modify storage slv:data macro.dialog."dialogs"[-1]."inputs"[{key:"boost"}].initial set value false
