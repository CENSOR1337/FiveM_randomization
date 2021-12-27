name "Cfx Randomization"
author "CENSOR"

fx_version "adamant"
game "gta5"
server_only "yes"

server_script {
    "utilities.lua",
    "core.lua",
    "configs/*.lua"
}

server_exports {
    "GetRandomItem"
}
