local QBCore = exports['qb-core']:GetCoreObject()


--------------------
--Adicionar items---função terminada
--------------------
RegisterServerEvent('jotadateta:server:giveitem', function(skin1, skin2, clothe_id, prop)
	--Processar o jogador--
	local src = source
    local player = QBCore.Functions.GetPlayer(src)
	if Config.debug then
		print("giving item with clothe_id: "..clothe_id)
	end
	--Receber a informação do tipo de roupa e associar ao respetivo--
	if prop then
		print("é prop")
		if clothe_id == 0 then
			clothe = "helmet" --id da roupa ex: helmet = 0 prop	
		elseif clothe_id == 2 then
			clothe = "ears" --id da roupa ex: ears = 2 prop
		elseif clothe_id == 6 then
			clothe = "watches" --id da roupa ex: watches = 6 prop
		elseif clothe_id == 1 then
			clothe = "glasses" --id da roupa ex: glasses = 1 prop
		elseif clothe_id == 7 then
			clothe = "bracelet" --id da roupa ex: bracelet = 7 prop
		end
	else
		print("não é prop")
		if clothe_id == 11 then
			clothe = "torso" --id da roupa ex: torso = 11
		elseif clothe_id == 8 then
			clothe = "tshirt" --id da roupa ex: tshirt = 8
		elseif clothe_id == 3 then
			clothe = "arms" --id da roupa ex: arms = 3
		elseif clothe_id == 4 then
			clothe = "jeans" --id da roupa ex: jeans = 4
		elseif clothe_id == 6 then
			clothe = "shoes" --id da roupa ex: shoes = 6
		elseif clothe_id == 5 then
			clothe = "bag" --id da roupa ex: bag = 5
		elseif clothe_id == 7 then
			clothe = "chain" --id da roupa ex: chain = 7
		elseif clothe_id == 1 then
			clothe = "mask" --id da roupa ex: mask = 1
		end
	end
	------------------------------------
	if debug then
		print("The processed clothe is:"..tostring(clothe))
	end
	--Registar metada do item--
	local info = {
		id_clothe = skin1,
		id_texture = skin2,
		description = 'This is a '..clothe_id..' / '..skin1..' / '..skin2,
	}
	--Adicionar o item com a metadata--
	if Config.debug then
		print("Id of the clothe saved: "..tostring(info.id_clothe).." id of the texture: "..tostring(info.id_texture).." Descrição: "..tostring(info.description))
	end

	player.Functions.AddItem(clothe, 1, true, info)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[clothe], "add")
end)



-------------------
---- Remove ------- função terminada
-------------------
RegisterNetEvent("jotadateta:server:removeitem", function(item, roupa_id, texture_id)
	local Player = QBCore.Functions.GetPlayer(source)
	if Config.debug then
		print("to compare "..item.info.id_clothe.." with the clothe id "..roupa_id)
	end
	Player.Functions.RemoveItem(item.name, 1, item.slot, item.info)
	TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items[item.name], "remove")
end)

---------------------
--Criar item usavel--
---------------------
QBCore.Functions.CreateUseableItem("torso", function(source, item)
    local src = source    
	if Config.debug then
		print("used item: "..tostring(item.name))
		print("server the item used is going to set clothe: "..item.info.id_clothe) 
		print("server the item used is going to set texture: "..item.info.id_texture) 
	end
	local prop = false
	TriggerClientEvent("jotadateta:client:setclothes",src, item, prop)
end)

QBCore.Functions.CreateUseableItem("helmet", function(source, item)
    local src = source    
	if Config.debug then
		print("used item: "..tostring(item.name))
		print("server the item used is going to set clothe: "..item.info.id_clothe) 
		print("server the item used is going to set texture: "..item.info.id_texture) 
	end
	local prop = true
	TriggerClientEvent("jotadateta:client:setclothes",src, item, prop)
end)

QBCore.Functions.CreateUseableItem("ears", function(source, item)
    local src = source    
	if Config.debug then
		print("used item: "..tostring(item.name))
		print("server the item used is going to set clothe: "..item.info.id_clothe) 
		print("server the item used is going to set texture: "..item.info.id_texture) 
	end
	local prop = true
	TriggerClientEvent("jotadateta:client:setclothes",src, item, prop)
end)

QBCore.Functions.CreateUseableItem("watches", function(source, item)
    local src = source    
	if Config.debug then
		print("used item: "..tostring(item.name))
		print("server the item used is going to set clothe: "..item.info.id_clothe) 
		print("server the item used is going to set texture: "..item.info.id_texture) 
	end
	local prop = true
	TriggerClientEvent("jotadateta:client:setclothes",src, item, prop)
end)

QBCore.Functions.CreateUseableItem("glasses", function(source, item)
    local src = source    
	if Config.debug then
		print("used item: "..tostring(item.name))
		print("server the item used is going to set clothe: "..item.info.id_clothe) 
		print("server the item used is going to set texture: "..item.info.id_texture) 
	end
	local prop = true
	TriggerClientEvent("jotadateta:client:setclothes",src, item, prop)
end)

QBCore.Functions.CreateUseableItem("bracelet", function(source, item)
    local src = source    
	if Config.debug then
		print("used item: "..tostring(item.name))
		print("server the item used is going to set clothe: "..item.info.id_clothe) 
		print("server the item used is going to set texture: "..item.info.id_texture) 
	end
	local prop = true
	TriggerClientEvent("jotadateta:client:setclothes",src, item, prop)
end)

QBCore.Functions.CreateUseableItem("tshirt", function(source, item)
    local src = source    
	if Config.debug then
		print("used item: "..tostring(item.name))
		print("server the item used is going to set clothe: "..item.info.id_clothe) 
		print("server the item used is going to set texture: "..item.info.id_texture) 
	end
	local prop = false
	TriggerClientEvent("jotadateta:client:setclothes",src, item, prop)
end)

QBCore.Functions.CreateUseableItem("arms", function(source, item)
    local src = source    
	if Config.debug then
		print("used item: "..tostring(item.name))
		print("server the item used is going to set clothe: "..item.info.id_clothe) 
		print("server the item used is going to set texture: "..item.info.id_texture) 
	end
	local prop = false
	TriggerClientEvent("jotadateta:client:setclothes",src, item, prop)
end)

QBCore.Functions.CreateUseableItem("jeans", function(source, item)
    local src = source    
	if Config.debug then
		print("used item: "..tostring(item.name))
		print("server the item used is going to set clothe: "..item.info.id_clothe) 
		print("server the item used is going to set texture: "..item.info.id_texture) 
	end
	local prop = false
	TriggerClientEvent("jotadateta:client:setclothes",src, item, prop)
end)

QBCore.Functions.CreateUseableItem("shoes", function(source, item)
    local src = source    
	if Config.debug then
		print("used item: "..tostring(item.name))
		print("server the item used is going to set clothe: "..item.info.id_clothe) 
		print("server the item used is going to set texture: "..item.info.id_texture) 
	end
	local prop = false
	TriggerClientEvent("jotadateta:client:setclothes",src, item, prop)
end)

QBCore.Functions.CreateUseableItem("bag", function(source, item)
    local src = source    
	if Config.debug then
		print("used item: "..tostring(item.name))
		print("server the item used is going to set clothe: "..item.info.id_clothe) 
		print("server the item used is going to set texture: "..item.info.id_texture) 
	end
	local prop = false
	TriggerClientEvent("jotadateta:client:setclothes",src, item, prop)
end)

QBCore.Functions.CreateUseableItem("chain", function(source, item)
    local src = source    
	if Config.debug then
		print("used item: "..tostring(item.name))
		print("server the item used is going to set clothe: "..item.info.id_clothe) 
		print("server the item used is going to set texture: "..item.info.id_texture) 
	end
	local prop = false
	TriggerClientEvent("jotadateta:client:setclothes",src, item, prop)
end)

QBCore.Functions.CreateUseableItem("mask", function(source, item)
    local src = source    
	if Config.debug then
		print("used item: "..tostring(item.name))
		print("server the item used is going to set clothe: "..item.info.id_clothe) 
		print("server the item used is going to set texture: "..item.info.id_texture) 
	end
	local prop = false
	TriggerClientEvent("jotadateta:client:setclothes",src, item, prop)
end)

-------------------
---- commandos ----
-------------------

QBCore.Commands.Add(Config.torso, Lang:t("description.torso_description"), {}, false, function(source)
	local prop = false 
	local clothe_id = 11
	TriggerClientEvent("jotadateta:client:getclothes", source, clothe_id, prop)
end, 'user')

QBCore.Commands.Add(Config.tshirt, Lang:t("description.torso_description"), {}, false, function(source)
	local prop = false
	local clothe_id = 8
	TriggerClientEvent("jotadateta:client:getclothes", source, clothe_id, prop)
end, 'user')

QBCore.Commands.Add(Config.arms, Lang:t("description.torso_description"), {}, false, function(source)
	local prop = false
	local clothe_id = 3
	TriggerClientEvent("jotadateta:client:getclothes", source, clothe_id, prop)
end, 'user')

QBCore.Commands.Add(Config.jeans, Lang:t("description.torso_description"), {}, false, function(source)
	local prop = false
	local clothe_id = 4
	TriggerClientEvent("jotadateta:client:getclothes", source, clothe_id, prop)
end, 'user')

QBCore.Commands.Add(Config.shoes, Lang:t("description.torso_description"), {}, false, function(source)
	local prop = false
	local clothe_id = 6
	TriggerClientEvent("jotadateta:client:getclothes", source, clothe_id, prop)
end, 'user')

QBCore.Commands.Add(Config.bag, Lang:t("description.torso_description"), {}, false, function(source)
	local prop = false
	local clothe_id = 5
	TriggerClientEvent("jotadateta:client:getclothes", source, clothe_id, prop)
end, 'user')

QBCore.Commands.Add(Config.chain, Lang:t("description.torso_description"), {}, false, function(source)
	local prop = false
	local clothe_id = 7
	TriggerClientEvent("jotadateta:client:getclothes", source, clothe_id, prop)
end, 'user')

QBCore.Commands.Add(Config.mask, Lang:t("description.torso_description"), {}, false, function(source)
	local prop = false
	local clothe_id = 1
	TriggerClientEvent("jotadateta:client:getclothes", source, clothe_id, prop)
end, 'user')
-------------------
---- Props --------
-------------------
QBCore.Commands.Add(Config.helmet, Lang:t("description.torso_description"), {}, false, function(source)
	local prop = true
	local clothe_id = 0
	TriggerClientEvent("jotadateta:client:getclothes", source, clothe_id, prop)
end, 'user')

QBCore.Commands.Add(Config.ears, Lang:t("description.torso_description"), {}, false, function(source)
	local prop = true
	local clothe_id = 2
	TriggerClientEvent("jotadateta:client:getclothes", source, clothe_id, prop)
end, 'user')

QBCore.Commands.Add(Config.watches, Lang:t("description.torso_description"), {}, false, function(source)
	local prop = true
	local clothe_id = 6
	TriggerClientEvent("jotadateta:client:getclothes", source, clothe_id, prop)
end, 'user')

QBCore.Commands.Add(Config.glasses, Lang:t("description.torso_description"), {}, false, function(source)
	local prop = true
	local clothe_id = 1
	TriggerClientEvent("jotadateta:client:getclothes", source, clothe_id, prop)
end, 'user')

QBCore.Commands.Add(Config.bracelet, Lang:t("description.torso_description"), {}, false, function(source)
	local prop = true
	local clothe_id = 7
	TriggerClientEvent("jotadateta:client:getclothes", source, clothe_id, prop)
end, 'user')



