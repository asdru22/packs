import json

def make(models=12):
    models_list = [
        {
            "when": "{haywire:{charge:0}}",
            "model": {
                "type": "minecraft:model",
                "model": "haywire:item/fog_horn_charge/background"
            }
        },
    ]

    for i in range(1, models + 1):
        models_list.append({
            "when": "{haywire:{charge:" + str(i) + "}}",
            "model": {
                "type": "minecraft:composite",
                "models": [
                    {
                        "type": "minecraft:model",
                        "model": "haywire:item/fog_horn_charge/background"
                    },
                    {
                        "type": "minecraft:model",
                        "model": f"haywire:item/fog_horn_charge/{i}"
                    }
                ]
            }
        })

    return models_list

definition = {
    "model": {
        "type": "minecraft:composite",
        "models": [
            {
              "type": "minecraft:condition",
              "property": "minecraft:using_item",
              "on_true": {
                "type": "minecraft:model",
                "model": "haywire:item/tooting_fog_horn"
              },
              "on_false": {
                "type": "minecraft:model",
                "model": "haywire:item/fog_horn"
              }
            },
            {
                "type": "minecraft:select",
                "property": "minecraft:display_context",
                "cases": [
                    {
                        "when": "gui",
                        "model": {
                            "type": "minecraft:composite",
                            "models": [
                                {
                                    "type": "minecraft:select",
                                    "property": "minecraft:component",
                                    "component": "minecraft:custom_data",
                                    "cases": make(),
                                    "fallback": {
                                        "type": "minecraft:empty"
                                    }
                                }
                            ]
                        }
                    }
                ],
                "fallback": {
                    "type": "minecraft:empty"
                }
            }
        ]
    }
}

if __name__ == "__main__":
    with open('../resourcepack/assets/haywire/items/fog_horn.json', 'w') as f:
        json.dump(definition, f, indent=2)