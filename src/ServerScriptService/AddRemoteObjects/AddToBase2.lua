local module = {}

local myJson01 = {character = 'Britta', text = 'hi'}
local myJson02 = {character = 'Raven', text = 'hi'}
local myJson03 = {character = 'Britta', text = 'hi'}
local myJsonAll = {myJson01, myJson02, myJson03}

module.json = myJsonAll

return module
