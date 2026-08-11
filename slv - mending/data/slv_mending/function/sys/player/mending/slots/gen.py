
import os

BASE_DIR = os.path.dirname(os.path.abspath(__file__))




def gen(slot:str,slot_data:str):

    path_slot = slot.split(".")[1]

    with open(os.path.join(BASE_DIR,f'{path_slot}/main.mcfunction'),'w') as f:
            f.write(
    f'''
data modify storage slv:data macro.item set from entity @s {slot_data}

function slv_mending:sys/player/mending/slots/modifier

function slv_mending:sys/player/mending/slots/{path_slot}/item_modifier with storage slv:data macro

'''
    )

        
    with open(os.path.join(BASE_DIR,f'{path_slot}\\item_modifier.mcfunction'),'w') as f:
            f.write(
    f'''
    #item modify entity @s {slot} [{{type:"set_item",item:"flow_banner_pattern"}}]
    $item modify entity @s {slot} $(modifier)

'''
    )

gen("weapon.mainhand","SelectedItem")
gen("weapon.offhand","equipment.offhand")
gen("armor.head","equipment.head")
gen("armor.chest","equipment.chest")
gen("armor.legs","equipment.legs")
gen("armor.feet","equipment.feet")

