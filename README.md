# ThomasManifesto
A custom resource pack for a private Minecraft server.

## Custom Item Checklist
Use this as a quick checklist to see if you have added everything for the custom item.
* Add new texture to assets/minecraft/textures/item/
* Add new custom item json in assets/minecraft/models/custom_item/
* Add predicate override for your original item in assets/minecraft/models/item
* Repackage the ZIP file before pushing!

## Some Conventions to Help Stay Organized
Just some things that are unique to organization of this pack.
* Please put all custom item jsons in assets/minecraft/models/custom_item/ This way we keep modified base game item jsons seperate from the new models and texture assignment jsons.
* Put a tag at the front of your item so it's easy to identify who created it. For Example: the object "thomas_manifesto" should be prefixed like "bep_thomas_manifesto"
  * Follow the naming convetion for the files too such as "bep_thomas_manifesto.json" etc. 
  * You can use whatever tag you like, just keep it consistent between objects.

## Example Json
assets/minecraft/models/custom_item/bep_thomas_manifesto.json
```json
{
  "parent": "item/generated",
  "textures": {
    "layer0": "minecraft:item/bep_thomas_manifesto"
  }
}
```
assets/minecraft/models/item/book.json
```json
{
  "parent": "item/generated",
  "textures": {
    "layer0": "item/book"
  },
  "overrides": [
    { "predicate":  {"custom_model_data": 1}, "model": "custom_item/bep_thomas_manifesto"}
  ]
}
```
