local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("jotadateta:client:setclothes", function(item, prop)
    local player = PlayerPedId()
    --retirar a informação do item e da textura
    --dar save em variaveis das infos da metadata do item--
    local clothe_name = item.name
    local roupa_id = item.info.id_clothe
    local texture_id = item.info.id_texture

    if Config.debug then
        print(" client clothe name: "..clothe_name)
        print(" client clothe id: "..roupa_id)
        print(" client texture id: "..texture_id)
    end
    
    --dar set variaveis para armazenar--
    local clothe_id = 0
    local removal = 0
    
    if prop then
        if Config.debug then
		    print("setting a prop")
		end
        if clothe_name == "helmet" then
            clothe_id = 0 
			removal = Config.men_removehelmet --id da roupa ex: helmet = 0 prop	
		elseif clothe_name == "ears" then
            clothe_id = 2 
			removal = Config.men_removeears --id da roupa ex: ears = 2 prop
		elseif clothe_name == "watches" then
            clothe_id = 6 
			removal = Config.men_removehwatches --id da roupa ex: watches = 6 prop
		elseif clothe_name == "glasses" then
            clothe_id = 1 
			removal = Config.men_removeglasses --id da roupa ex: glasses = 1 prop
		elseif clothe_name == "bracelet" then
            clothe_id = 7 
			removal = Config.men_removebracelet --id da roupa ex: bracelet = 7 prop
		end
	else
		if Config.debug then
		    print("setting a non prop")
		end
		if clothe_name == "torso" then
			clothe_id = 11 --id da roupa ex: torso = 11
            removal = Config.men_removetorso
		elseif clothe_name == "tshirt" then
			clothe_id = 8 --id da roupa ex: tshirt = 8
            removal = Config.men_removetshirt
		elseif clothe_name == "arms" then
			clothe_id = 3 --id da roupa ex: arms = 3
            removal = Config.men_removegloves
		elseif clothe_name == "jeans" then
			clothe_id = 4 --id da roupa ex: jeans = 4
            removal = Config.men_removejeans
		elseif clothe_name == "shoes" then
			clothe_id = 6 --id da roupa ex: shoes = 6
            removal = Config.men_removeshoes
		elseif clothe_name == "bag" then
			clothe_id = 5 --id da roupa ex: bag = 5
            removal = Config.men_removebag
		elseif clothe_name == "chain" then
			clothe_id = 7 --id da roupa ex: chain = 7
            removal = Config.men_removechain
		elseif clothe_name == "mask" then
			clothe_id = 1 --id da roupa ex: mask = 1
            removal = Config.men_removemask
		end
	end
    --se a roupa for diferente da removivel quer dizer que o jogador tem roupa vestida e vai substituir--
    if Config.debug then
        print("clothing id:"..GetPedDrawableVariation(player, clothe_id))
        print("item do removal:"..removal)
    end

    --se for diferente do pre-set de despido iremos retirar a roupa e setar o off--
    local get_off = false
    if not prop then 
        if GetPedDrawableVariation(player, clothe_id) ~= removal then
            get_off = true
        end
    else
        if GetPedPropIndex(player, clothe_id) ~= removal then
            get_off = true
        end
    end

    if get_off then
        --substituir a roupa e adicionar item com roupa antes vestida
        old_ones = true
        if not prop then
            old_skin_id = GetPedDrawableVariation(player, clothe_id)
            old_skin_texture = GetPedTextureVariation(player, clothe_id)
        elseif prop then
            old_skin_id = GetPedPropIndex(player, clothe_id)
		    old_skin_texture = GetPedPropTextureIndex(player, clothe_id)
        else
            print("ERROR:[Send this to the creator] = Error sub the original clothe")
        end
    else
        old_ones = false
        if Config.debug then
            print("you are already without clothes")
        end
    end

    --se for diferente do item da config iremos dar set da roupa para o 15--
    QBCore.Functions.Progressbar("torso_on", "Setting clothe..", Config.time, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "clothingtie",
        anim = "try_tie_positive_a",
        --flags = 16,
    }, {}, {}, function() -- Done

        ClearPedTasks(PlayerPedId())
        Wait(100)
        if prop then
            SetPedPropIndex(player, clothe_id, roupa_id, texture_id, 0)
        else
            SetPedComponentVariation(player, clothe_id, roupa_id, texture_id, 0)
        end
        Wait(100)

        TriggerServerEvent("jotadateta:server:removeitem", item, roupa_id, texture_id)
        if old_ones then
            print("giving the old ones")
            TriggerServerEvent("jotadateta:server:giveitem", old_skin_id, old_skin_texture, clothe_id, prop)
        end

    end, function() -- Cancel

        QBCore.Functions.Notify("Process canceled..", "error")
        
    end)
end)

--------------------
---- Get Clothe ---- função terminada
--------------------
RegisterNetEvent("jotadateta:client:getclothes", function(clothe_id, prop)
    local player = PlayerPedId()
    local sex = nil
    --sexo e modelo do ped
    local hash = GetEntityModel(player)
    --dar save ao sexo do ped para variavel "sex"
    if IsPedModel(player,GetHashKey('mp_m_freemode_01')) then
		sex = "men"
	elseif IsPedModel(player,GetHashKey('mp_f_freemode_01')) then
		sex = "women"
	end
    if Config.debug then
        print("Modelo do ped: "..tostring(sex))
    end
    --id da roupa em questão
    if prop then
		print("é prop")
		if clothe_id == 0 then
            progressbar_text = Lang:t("progressbar.helmet_progressbar")
            if sex == "men" then
                removed_config = Config.men_removehelmet
            elseif sex == "woman" then
                removed_config = Config.woman_removehelmet
            end
			--clothe = "helmet" --id da roupa ex: helmet = 0 prop	
		elseif clothe_id == 2 then
            progressbar_text = Lang:t("progressbar.ears_progressbar")
            if sex == "men" then
                removed_config = Config.men_removeears
            elseif sex == "woman" then
                removed_config = Config.woman_removeears
            end
			--clothe = "ears" --id da roupa ex: ears = 2 prop
		elseif clothe_id == 6 then
            progressbar_text = Lang:t("progressbar.watches_progressbar")
            if sex == "men" then
                removed_config = Config.men_removehwatches
            elseif sex == "woman" then
                removed_config = Config.woman_removewatches
            end
			--clothe = "watches" --id da roupa ex: watches = 6 prop
		elseif clothe_id == 1 then
            progressbar_text = Lang:t("progressbar.glasses_progressbar")
            if sex == "men" then
                removed_config = Config.men_removeglasses
            elseif sex == "woman" then
                removed_config = Config.woman_removeglasses
            end
			--clothe = "glasses" --id da roupa ex: glasses = 1 prop
		elseif clothe_id == 7 then
            progressbar_text = Lang:t("progressbar.bracelet_progressbar")
            if sex == "men" then
                removed_config = Config.men_removebracelet
            elseif sex == "woman" then
                removed_config = Config.woman_removebracelet
            end
			--clothe = "bracelet" --id da roupa ex: bracelet = 7 prop
		end
	else
		print("não é prop")
		if clothe_id == 11 then
            progressbar_text = Lang:t("progressbar.torso_progressbar")
            if sex == "men" then
                removed_config = Config.men_removetorso
            elseif sex == "woman" then
                removed_config = Config.woman_removetorso
            end
			--clothe = "torso" --id da roupa ex: torso = 11
		elseif clothe_id == 8 then
            progressbar_text = Lang:t("progressbar.tshirt_progressbar")
            if sex == "men" then
                removed_config = Config.men_removetshirt
            elseif sex == "woman" then
                removed_config = Config.woman_removetshirt
            end
			--clothe = "tshirt" --id da roupa ex: tshirt = 8
		elseif clothe_id == 3 then
            progressbar_text = Lang:t("progressbar.arms_progressbar")
            if sex == "men" then
                removed_config = Config.men_removegloves
            elseif sex == "woman" then
                removed_config = Config.woman_removegloves
            end
			--clothe = "arms" --id da roupa ex: arms = 3
		elseif clothe_id == 4 then
            progressbar_text = Lang:t("progressbar.jeans_progressbar")
            if sex == "men" then
                removed_config = Config.men_removejeans
            elseif sex == "woman" then
                removed_config = Config.woman_removejeans
            end
			--clothe = "jeans" --id da roupa ex: jeans = 4
		elseif clothe_id == 6 then
            progressbar_text = Lang:t("progressbar.shoes_progressbar")
            if sex == "men" then
                removed_config = Config.men_removeshoes
            elseif sex == "woman" then
                removed_config = Config.woman_removeshoes
            end
			--clothe = "shoes" --id da roupa ex: shoes = 6
		elseif clothe_id == 5 then
            progressbar_text = Lang:t("progressbar.bag_progressbar")
            if sex == "men" then
                removed_config = Config.men_removebag
            elseif sex == "woman" then
                removed_config = Config.woman_removebag
            end
			--clothe = "bag" --id da roupa ex: bag = 5
		elseif clothe_id == 7 then
            progressbar_text = Lang:t("progressbar.chain_progressbar")
            if sex == "men" then
                removed_config = Config.men_removechain
            elseif sex == "woman" then
                removed_config = Config.woman_removechain
            end
			--clothe = "chain" --id da roupa ex: chain = 7
		elseif clothe_id == 1 then
            progressbar_text = Lang:t("progressbar.mask_progressbar")
            if sex == "men" then
                removed_config = Config.men_removemask
            elseif sex == "woman" then
                removed_config = Config.woman_removemask
            end
			--clothe = "mask" --id da roupa ex: mask = 1
		end
        --retirar a informação do item e da textura
	end
    
    if prop then
        skin_id = GetPedPropIndex(player, clothe_id)
        skin_texture = GetPedPropTextureIndex(player, clothe_id)
    else
        skin_id = GetPedDrawableVariation(player, clothe_id)
        skin_texture = GetPedTextureVariation(player, clothe_id)
    end

    if Config.debug then
        print(" the clothe id: "..skin_id)
        print(" the texture id: "..skin_texture)
    end

    --se for diferente do pre-set de despido iremos retirar a roupa e setar o off--
    local get_off = false
    if not prop then 
        if GetPedDrawableVariation(player, clothe_id) ~= removed_config then
            get_off = true
        end
    else
        if GetPedPropIndex(player, clothe_id) ~= removed_config then
            get_off = true
        end
    end

    -- começa a progressbar para retirar roupas
    if get_off then
        QBCore.Functions.Progressbar("clothe_off", progressbar_text, Config.time, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "clothingtie",
            anim = "try_tie_positive_a",
            -- flags = 16,
        }, {}, {}, function() -- Done
            ClearPedTasks(PlayerPedId())
            Citizen.Wait(1000)
            -- coloca a suposta roupa invisivel 
            if prop then
                --colocar para props
                SetPedPropIndex(player, clothe_id, removed_config, 0, 0)
                Wait(100)
                ClearPedProp(player,clothe_id)
            else
                SetPedComponentVariation(player, clothe_id, removed_config, 0, 0)
            end
            --Dar trigger a adicionar o item com a informação acima
            TriggerServerEvent("jotadateta:server:giveitem", skin_id, skin_texture, clothe_id, prop)
        end, function() -- Cancel
            QBCore.Functions.Notify("Process canceled..", "error")
        end)
    end
end)


----------------
---end command
---------------

RegisterNetEvent('clothes:watches')
AddEventHandler('clothes:watches', function(item, wait, cb)
   local player = PlayerPedId()
   local metadata = ESX.GetPlayerData().inventory[item.slot].metadata
   local skin1 = metadata.accessories
   local skin2 = metadata.accessories2

	if not watches then
	watchesonoff()
	Wait (600)
	ClearPedSecondaryTask(player)
	watches = true
	SetPedPropIndex(player, 6, skin1, skin2, 0)
	elseif watches then
	watches = false
	Wait (600)
	ClearPedSecondaryTask(player)
	ClearPedProp(player,6)
	end
end)





