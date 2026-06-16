local ui = require("ui")

local function setTheme(style)
    ui.theme = string.format("`{style}`")
end

ui.theme = "dark"

local win = ui.Window("MARC [MADNESS, Asset, Repository, Client]", "fixed", 400, 200)
local label = ui.Label(win, "Hello! MARC is in Alpha!", 40, 80)

local button = ui.Button(win, "Change Theme (Will change to lightmode)", 40, 120)
button.onClick = function()
    setTheme("light")
end



win:show()

repeat
    ui.update()
until not win.visible