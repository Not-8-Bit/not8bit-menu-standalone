name 'Not 8 Bit Menu - Standalone'
author 'Not 8 Bit - lllHolidaylll'
version 'v1.0.4'

description 'Menu system with unlimited text rows amd image capability for buttons and header.'

fx_version 'cerulean'
games { 'gta5' }

ui_page 'html/index.html'

shared_scripts {
    'shared/*.lua'
}

client_scripts {
    'client/*.lua' 
}

server_scripts {
    'server/*.lua'
}

files {
    'html/*.html',
    'html/*.js',
    'html/*.css',
    'html/images/*.png',
    'html/images/*.jpg',
}

lua54 'yes'