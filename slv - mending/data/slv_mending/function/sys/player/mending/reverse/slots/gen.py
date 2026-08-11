
import os

BASE_DIR = os.path.dirname(os.path.abspath(__file__))




def gen(slot:str,slot_data:str):

    path_slot = slot.split(".")[1]

    with open(os.path.join(BASE_DIR,f'{path_slot}.mcfunction'),'w') as f:
            f.write(
    f'''
data modify storage slv:data macro.item set from entity @s {slot_data}

function slv_mending:sys/player/mending/reverse/modifier

function slv_mending:sys/player/mending/reverse/slots/{path_slot}_modifier with storage slv:data macro

'''
    )

        
    with open(os.path.join(BASE_DIR,f'{path_slot}_modifier.mcfunction'),'w') as f:
            f.write(
    f'''
    item replace entity @s {slot} with stick
    $item modify entity @s {slot} $(modifier)


'''
    )

for i in range(0,54):
    gen(f"container.{i}",f"Inventory[{{Slot:{i}b}}]")
gen("weapon.offhand","equipment.offhand")
gen("armor.head","equipment.head")
gen("armor.chest","equipment.chest")
gen("armor.legs","equipment.legs")
gen("armor.feet","equipment.feet")

