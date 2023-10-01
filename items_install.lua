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