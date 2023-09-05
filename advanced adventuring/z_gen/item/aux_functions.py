import json
### GENERATE INT ARRAY
def intarray():
    return "[I;"+str(randint())+","+str(randint())+","+str(randint())+","+str(randint())+"]"

### GENERATE RANDOM INT
import random
def randint():
    return random.randint(-2147483648, 2147483647)

### AttributeList to Attribute tag
def attr_to_tag(list):
    r = ""
    for attr in list:
        r+=attr[0]
    return r

### check if file exists
import os.path
def file_exists(file):
    return os.path.exists(file)


def global_dmg(list):
    r = False
    c = 0
    for attr in list:
        if attr[2] == "attack_damage": c+=1
        if attr[2] == "ranged_damage": c+=1
        if attr[2] == "magic_damage": c+=1
        if attr[2] == "turret_damage": c+=1
    if c ==4: r = True
    return r