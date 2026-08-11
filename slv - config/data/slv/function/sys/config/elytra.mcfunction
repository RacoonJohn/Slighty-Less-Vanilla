
 data modify storage slv:data macro.dialog."dialogs" append value \
{\
        "type": "minecraft:multi_action",\
        "title": "Elytra",\
        "inputs": [\
            {\
                "type": "minecraft:number_range",\
                "key": "gravity",\
                "width": 200,\
                "label": "Gravity Influance",\
                "label_format": "%1$s: %2$s",\
                "start": 0,\
                "end": 2,\
                "step": 0.05,\
                "initial": 1\
            },\
            {\
                "type": "minecraft:number_range",\
                "key": "drag",\
                "width": 200,\
                "label": "Drag Influance",\
                "label_format": "%1$s: %2$s",\
                "start": 0,\
                "end": 2,\
                "step": 0.05,\
                "initial": 1\
            }\
            ],\
        "columns": 2,\
        "actions": [\
            {\
                "label": "Save",\
                "width": 100,\
                "action": {\
                        "type": "minecraft:dynamic/run_command",\
                        "template": "function slv_elytra:sys/settings/elytra {drag:$(drag),gravity:$(gravity)}"\
                    }\
                }\
            ]\
        }

execute store result storage slv:data macro.dialog."dialogs"[-1]."inputs"[{key:"gravity"}].initial float 0.01 run scoreboard players get #gravityWeight SLV.Settings
execute store result storage slv:data macro.dialog."dialogs"[-1]."inputs"[{key:"drag"}].initial float 0.01 run scoreboard players get #dragWeight SLV.Settings
