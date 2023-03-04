local Translations = {
    -------EN----------
    description = {
        torso_description = "use this command to remove torso clothe",
        tshirt_description = "use this command to remove tshirt clothe",
        arms_description = "use this command to remove gloves clothe",
        jeans_description = "use this command to remove jeans clothe",
        shoes_description = "use this command to remove shoes clothe",
        bag_description ="use this command to remove bag clothe",
        chain_description = "use this command to remove chain clothe",
        mask_description ="use this command to remove mask clothe",
        helmet_description ="use this command to remove helmet clothe",
        ears_description ="use this command to remove ears clothe",
        watches_description ="use this command to remove watches clothe",
        glasses_description ="use this command to remove glasses clothe",
        bracelet_description ="use this command to remove bracelet clothe" 
    
    },
    progressbar = {
        --Progressbar--
        torso_progressbar ="removing torso..",
        tshirt_progressbar ="removing tshirt..",
        arms_progressbar ="removing gloves..",
        jeans_progressbar = "removing jeans..",
        shoes_progressbar = "removing shoes..",
        bag_progressbar = "removing bag..",
        chain_progressbar = "removing chain..",
        mask_progressbar = "removing mask..",
        helmet_progressbar = "removing helmet..",
        ears_progressbar = "removing ears..",
        watches_progressbar = "removing watches..",
        glasses_progressbar = "removing glasses..",
        bracelet_progressbar = "removing bracelet.."
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

--Lang:t("error.minimum_police_required") é assim que chamo