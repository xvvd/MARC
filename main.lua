local ui = require("ui")

ui.theme = "dark"

local win = ui.Window("MARC [MADNESS, Asset, Repository, Client]", "fixed", 400, 200)
local label = ui.Label(win, "Hello! MARC is in Alpha!", 40, 100)

win:show()

repeat
    ui.update()
until not win.visible
