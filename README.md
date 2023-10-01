# qbcore Clothing Item Script for FiveM

This script allows players to use clothing items in their inventory in FiveM using the qbcore framework. With this script, players can have multiple different clothing items, steal clothing items from other players, and configure commands and removable items.

## Installation

To install the script, simply put the file in the `resources` folder of your FiveM server and add it to your `server.cfg` file.

### Add items 

add this to `qb-core\shared\items.lua`

```
    --Roupa Jota
    ['torso'] = { ['name'] = 'torso', ['label'] = 'Torso', ['weight'] = 100, ['type'] = 'item', ['image'] = 'torso.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'A wearable torso item.' },
    ['tshirt'] = { ['name'] = 'tshirt', ['label'] = 'T-Shirt', ['weight'] = 100, ['type'] = 'item', ['image'] = 'tshirt.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'A wearable t-shirt item.' },
    ['arms'] = { ['name'] = 'arms', ['label'] = 'Arms', ['weight'] = 100, ['type'] = 'item', ['image'] = 'arms.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Wearable arm accessories.' },
    ['jeans'] = { ['name'] = 'jeans', ['label'] = 'Jeans', ['weight'] = 100, ['type'] = 'item', ['image'] = 'jeans.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'A pair of wearable jeans.' },
    ['shoes'] = { ['name'] = 'shoes', ['label'] = 'Shoes', ['weight'] = 100, ['type'] = 'item', ['image'] = 'shoes.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Wearable shoes.' },
    ['bag'] = { ['name'] = 'bag', ['label'] = 'Bag', ['weight'] = 100, ['type'] = 'item', ['image'] = 'bag.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'A wearable bag accessory.' },
    ['chain'] = { ['name'] = 'chain', ['label'] = 'Chain', ['weight'] = 100, ['type'] = 'item', ['image'] = 'chain.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'A wearable chain accessory.' },
    ['mask'] = { ['name'] = 'mask', ['label'] = 'Mask', ['weight'] = 100, ['type'] = 'item', ['image'] = 'mask.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'A wearable mask.' },
    ['helmet'] = { ['name'] = 'helmet', ['label'] = 'Helmet', ['weight'] = 100, ['type'] = 'item', ['image'] = 'helmet.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'A wearable helmet.' },
    ['ears'] = { ['name'] = 'ears', ['label'] = 'Ears', ['weight'] = 100, ['type'] = 'item', ['image'] = 'ears.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Wearable ear accessories.' },
    ['watches'] = { ['name'] = 'watches', ['label'] = 'Watches', ['weight'] = 100, ['type'] = 'item', ['image'] = 'watches.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Wearable watches.' },
    ['glasses'] = { ['name'] = 'glasses', ['label'] = 'Glasses', ['weight'] = 100, ['type'] = 'item', ['image'] = 'glasses.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Wearable glasses.' },
    ['bracelet'] = { ['name'] = 'bracelet', ['label'] = 'Bracelet', ['weight'] = 100, ['type'] = 'item', ['image'] = 'bracelet.png', ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'A wearable bracelet accessory.' },

```
To have a description with the information about the items , you need to add this to `qb-inventory\html\js\app.js` or similiar to yout inventory.

    } else if (itemData.name == "torso") {
    	$(".item-info-title").html("<p>" + itemData.label + "</p>");
    	$(".item-info-description").html(
    		"<p><strong>Id Clothe: </strong><span>" +
    		itemData.info.id_clothe +
    		"</span></p><p><strong>Id Texture: </strong><span>" +
    		itemData.info.id_texture +
    		"</span></p><p><strong>Description: </strong><span>" +
    		itemData.info.description +
    		"</span></p>"
    	);
    } else if (itemData.name == "tshirt") {
    	$(".item-info-title").html("<p>" + itemData.label + "</p>");
    	$(".item-info-description").html(
    		"<p><strong>Id Clothe: </strong><span>" +
    		itemData.info.id_clothe +
    		"</span></p><p><strong>Id Texture: </strong><span>" +
    		itemData.info.id_texture +
    		"</span></p><p><strong>Description: </strong><span>" +
    		itemData.info.description +
    		"</span></p>"
    	);
    } else if (itemData.name == "arms") {
    $(".item-info-title").html("<p>" + itemData.label + "</p>");
    $(".item-info-description").html(
    	"<p><strong>Id Clothe: </strong><span>" +
    	itemData.info.id_clothe +
    	"</span></p><p><strong>Id Texture: </strong><span>" +
    	itemData.info.id_texture +
    	"</span></p><p><strong>Description: </strong><span>" +
    	itemData.info.description +
    	"</span></p>"
    ); } else if (itemData.name == "jeans") {
    	$(".item-info-title").html("<p>" + itemData.label + "</p>");
    	$(".item-info-description").html(
    		"<p><strong>Id Clothe: </strong><span>" +
    		itemData.info.id_clothe +
    		"</span></p><p><strong>Id Texture: </strong><span>" +
    		itemData.info.id_texture +
    		"</span></p><p><strong>Description: </strong><span>" +
    		itemData.info.description +
    		"</span></p>"
    	);
    } else if (itemData.name == "shoes") {
    	$(".item-info-title").html("<p>" + itemData.label + "</p>");
    	$(".item-info-description").html(
    		"<p><strong>Id Clothe: </strong><span>" +
    		itemData.info.id_clothe +
    		"</span></p><p><strong>Id Texture: </strong><span>" +
    		itemData.info.id_texture +
    		"</span></p><p><strong>Description: </strong><span>" +
    		itemData.info.description +
    		"</span></p>"
    	);
    } else if (itemData.name == "bag") {
    	$(".item-info-title").html("<p>" + itemData.label + "</p>");
    	$(".item-info-description").html(
    		"<p><strong>Id Clothe: </strong><span>" +
    		itemData.info.id_clothe +
    		"</span></p><p><strong>Id Texture: </strong><span>" +
    		itemData.info.id_texture +
    		"</span></p><p><strong>Description: </strong><span>" +
    		itemData.info.description +
    		"</span></p>"
    	); 
    } else if (itemData.name == "chain") {
    	$(".item-info-title").html("<p>" + itemData.label + "</p>");
    	$(".item-info-description").html(
    		"<p><strong>Id Clothe: </strong><span>" +
    		itemData.info.id_clothe +
    		"</span></p><p><strong>Id Texture: </strong><span>" +
    		itemData.info.id_texture +
    		"</span></p><p><strong>Description: </strong><span>" +
    		itemData.info.description +
    		"</span></p>"
    	);
    } else if (itemData.name == "mask") {
    	$(".item-info-title").html("<p>" + itemData.label + "</p>");
    	$(".item-info-description").html(
    		"<p><strong>Id Clothe: </strong><span>" +
    		itemData.info.id_clothe +
    		"</span></p><p><strong>Id Texture: </strong><span>" +
    		itemData.info.id_texture +
    		"</span></p><p><strong>Description: </strong><span>" +
    		itemData.info.description +
    		"</span></p>"
    	);

## Features

### Clothing as Item

With this script, players can use clothing as an item in their inventory. When a player uses the clothing item, their appearance changes according to the selected clothing.

### Multiple Clothing Items

Players can have multiple different clothing items in their inventory, allowing them to quickly and easily change their outfit.

### Clothing Item Theft

Players can steal clothing items from each other, adding an extra layer of player interaction.

### Male/Female

This script is compatible with both male and female characters, allowing players to wear appropriate clothing for their character.

### Command Configuration

The script comes with a configuration that allows server administrators to customize the commands used to equip and unequip clothing items.

### Removable Item Configuration

The script also allows administrators to customize whether clothing items are removable or not. If clothing items are not removable, players will have to find a new clothing item to change their appearance.

## Contributing

If you encounter any issues with the script or have suggestions for additional features, you can open an issue on this repository or submit a pull request to contribute additional code.

## License

This script is licensed under the MIT license. See the LICENSE file for more information.

