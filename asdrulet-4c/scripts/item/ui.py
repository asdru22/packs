import tkinter as tk
from tkinter import messagebox
import json

def export_to_json(name, id, item,type,rarities,max_quality,element,scrap_amount,stats):
    values = {}
    if name: values["name"] = name
    if item: values["item"] = item
    if rarities: values["rarity"] = rarities
    if max_quality!="0": values["max_quality"] = int(max_quality)
    if element!="<no element>": values["element"] = element
    if scrap_amount: values["scrap_amount"] = int(scrap_amount)
    if stats: values["stats"] = stats 
        


    try:
        with open(f'scripts\\item\\{type}\\{id}.json', "w") as json_file:
            json.dump(values, json_file, indent=2)
        messagebox.showinfo("Export Successful", "Values exported to output.json")
    except Exception as e:
        messagebox.showerror("Export Error", f"An error occurred: {e}")

def on_export_button_click():
    name = entry_name.get()
    id = entry_id.get()
    item = entry_item.get()
    type = var_item_type.get()
    
    selected_rarities = [rarity.get() for rarity in rarity_checkbuttons]
    selected_rarities = [rarities[i] for i, value in enumerate(selected_rarities) if value == 1]
    
    max_quality = var_max_quality.get()
    element = var_element.get()
    scrap_amount = entry_scrap_amount.get()

    stats_array = get_entry_values(entries, entry_vars, text_array)
    print(stats_array)
    

    root.destroy()
    export_to_json(name, id, item,type,selected_rarities,max_quality,element,scrap_amount,stats_array)

def validate_numeric_input(char):
    # Allow only numerical input or empty string
    return char.isdigit() or char == ""

def on_entry_focus_in(event, var, text):
    if var.get() == text:
        event.widget.delete(0, tk.END)
        event.widget.config(fg='black')  # Change text color when clicked

def on_entry_focus_out(event, var, text):
    if not var.get():
        event.widget.insert(0, text)
        event.widget.config(fg='grey')  # Change text color when not focused

def get_entry_values(entries, entry_vars, original_labels):
    values_dict = {}
    for entry, var, label in zip(entries, entry_vars, original_labels):
        try:
            value = int(entry.get())
            values_dict[label] = value
        except ValueError:
            pass  # Ignore entries that cannot be converted to integers
    return values_dict


                
# Create the main window
root = tk.Tk()
root.title("Custom Item generator")
#root.geometry("500x400")
# Create and place UI elements

# name
tk.Label(root, text="Name:").grid(row=0, column=0, padx=5, pady=5)
entry_name = tk.Entry(root)
entry_name.grid(row=0, column=1, padx=5, pady=5)

# id
tk.Label(root, text="Id:").grid(row=1, column=0, padx=5, pady=5)
entry_id = tk.Entry(root)
entry_id.grid(row=1, column=1, padx=5, pady=5)

# item
entry_item = tk.Entry(root)
entry_item.grid(row=2, column=1, padx=5, pady=5)
tk.Label(root, text="Item:").grid(row=2, column=0, padx=5, pady=5)

# type
tk.Label(root, text="Type:").grid(row=3, column=0, padx=5, pady=5)
types = ["melee", "ranged", "magic","helmet","chestplate","leggings","boots","shield","material"]
var_item_type = tk.StringVar(root)
var_item_type.set(types[0])
dropdown_type = tk.OptionMenu(root, var_item_type, *types)
dropdown_type.grid(row=3, column=1, padx=5, pady=5)

# rarity
tk.Label(root, text="Rarity:").grid(row=4, column=0, padx=5, pady=5)
rarities = ["mundane", "unusual", "pristine", "radiant", "ethereal"]
rarity_checkbuttons = []
for i, rarity in enumerate(rarities):
    var_rarity = tk.IntVar()
    chk_rarity = tk.Checkbutton(root, text=rarity, variable=var_rarity)
    # Adjust pady and padx for closer checkboxes
    chk_rarity.grid(row=4+i, column=1, columnspan=1, pady=5, padx=0)
    rarity_checkbuttons.append(var_rarity)

# max quality
tk.Label(root, text="Max Quality:").grid(row=9, column=0, padx=5, pady=5)
quality_vals = [0,1,2,3]
var_max_quality = tk.StringVar(root)
var_max_quality.set(quality_vals[0])
dropdown_type = tk.OptionMenu(root, var_max_quality, *quality_vals)
dropdown_type.grid(row=9, column=1, padx=5, pady=5)

# element
tk.Label(root, text="Element :").grid(row=10, column=0, padx=5, pady=5)
element_vals = ["<no element>","vortex","chaos","stasis","rupture"]
var_element = tk.StringVar(root)
var_element.set(element_vals[0])
dropdown_type = tk.OptionMenu(root, var_element, *element_vals)
dropdown_type.grid(row=10, column=1, padx=5, pady=5) 

# scrap amount
tk.Label(root, text="Scrap Amount :").grid(row=11, column=0, padx=5, pady=5)
entry_scrap_amount = tk.Entry(root, validate="key", validatecommand=(root.register(validate_numeric_input), "%S"))
entry_scrap_amount.grid(row=11, column=1, padx=5, pady=5)

# etheric_trait
entry_etheric_trait = tk.Text(root, wrap="word", height=5, width=30)
entry_etheric_trait.grid(row=12, column=1, padx=5, pady=5)
tk.Label(root, text="Etheric Trait:").grid(row=12, column=0, padx=5, pady=5)

# stats
tk.Label(root, text="Stats:").grid(row=0, column=4, padx=5, pady=5)

text_array = ["damage","crit_damage","crit_chance","knockback","attack_speed","reach","projectile_speed","cast_cooldown","max_health","defense","max_stamina","movement_speed","knockback_resistance","luck","stamina_regeneration","stamina_used","mining_power"]

# Create and display Entry widgets using grid for each element in the array
entries = []
entry_vars = []

for i, text in enumerate(text_array):
    var = tk.StringVar()
    entry = tk.Entry(root, textvariable=var, width=30, fg='grey')
    entry.insert(0, text)
    entry.bind("<FocusIn>", lambda event, var=var, text=text: on_entry_focus_in(event, var, text))
    entry.bind("<FocusOut>", lambda event, var=var, text=text: on_entry_focus_out(event, var, text))
    entry.grid(row=i%6+1, column=int(i/6)+3, pady=10)
    entries.append(entry)
    entry_vars.append(var)
    
#####################
export_button = tk.Button(root, text="Export to JSON", command=on_export_button_click,width=15,height=5)
export_button.grid(row=9, column=3, columnspan=2, pady=10)

# Start the Tkinter event loop
root.mainloop()
