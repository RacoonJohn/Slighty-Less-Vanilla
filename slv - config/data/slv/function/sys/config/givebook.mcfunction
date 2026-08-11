
 data modify storage slv:data macro.dialog."dialogs" append value \
{\
        "type": "minecraft:multi_action",\
        "title": "Librarian GiveBook",\
        "inputs": [\
            {\
                "type": "minecraft:boolean",\
                "key": "enabled",\
                "label": "Enabled",\
                "on_false":"0",\
                "on_true":"1",\
                "initial": true\
            },\
            {\
                "type": "minecraft:number_range",\
                "key": "min_price",\
                "width": 200,\
                "label": "Min Price",\
                "label_format": "%1$s: %2$s",\
                "start": 1,\
                "end": 64,\
                "step": 1,\
                "initial": 1\
            },\
            {\
                "type": "minecraft:number_range",\
                "key": "delta_price",\
                "width": 200,\
                "label": "Delta Price",\
                "label_format": "%1$s: %2$s",\
                "start": 0,\
                "end": 64,\
                "step": 1,\
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
                        "template": "function slv_givebook:sys/settings/givebook {enabled:$(enabled),min_price:$(min_price),delta_price:$(delta_price)}"\
                    }\
                }\
            ]\
        }


execute if score #giveBook SLV.Settings matches 1 run data modify storage slv:data macro.dialog."dialogs"[-1]."inputs"[{key:"enabled"}].initial set value true
execute if score #giveBook SLV.Settings matches 0 run data modify storage slv:data macro.dialog."dialogs"[-1]."inputs"[{key:"enabled"}].initial set value false

execute store result storage slv:data macro.dialog."dialogs"[-1]."inputs"[{key:"min_price"}].initial int 1 run scoreboard players get #giveBook.minPrice SLV.Settings
execute store result storage slv:data macro.dialog."dialogs"[-1]."inputs"[{key:"delta_price"}].initial int 1 run scoreboard players get #giveBook.deltaPrice SLV.Settings
