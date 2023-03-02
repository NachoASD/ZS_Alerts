fx_version 'cerulean'

game 'gta5'

lua54 'yes'

description 'ZeroScripts - Alerts System [Free]'

version '1.0.0'

author 'NachoASD#5887'

-- Shop discord -> discord.gg/vsu2GpKUDG
-- NachoASD#5887

shared_scripts {
    '@es_extended/locale.lua',
    '@es_extended/imports.lua',
	'locales/*.lua',
    'Config/config.lua'
}

client_script 'Client/main.lua'

server_script'Server/main.lua'

ui_page 'UI/index.html'

files {
    'UI/*.html',
    'UI/js/*.js',
    'UI/css/*.css',
    'UI/images/*.png',
}