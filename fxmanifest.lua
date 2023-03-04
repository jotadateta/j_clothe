fx_version 'adamant'

game 'gta5'

author 'JotaDaTeta'
description 'Clothes as item'
version '1.0.0'

client_scripts {
    "client.lua"
}

server_scripts {
    "server.lua"
}

shared_scripts {
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua' -- Change to the language you want
}