loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua"))()

local Window = MakeWindow({
    Hub = {
        Title = "Linh tinh | Chat gpt support",
        Animation = "✨ Loading..."
    },
    Key = {
        KeySystem = false
    }
})

-- Tab chính cho skybox
local Tab = Window:MakeTab({
    Name = "🦊 Shiba Sky",
    Icon = "rbxassetid://4483345998"
})

local Lighting = game:GetService("Lighting")
local shibaId = "rbxassetid://15422943858"
local skyInstance = nil

local function EnableSky()
    if skyInstance then skyInstance:Destroy() end
    local sky = Instance.new("Sky")
    sky.Name = "ShibaSky"
    sky.SkyboxBk = shibaId
    sky.SkyboxFt = shibaId
    sky.SkyboxLf = shibaId
    sky.SkyboxRt = shibaId
    sky.SkyboxUp = shibaId
    sky.SkyboxDn = shibaId
    sky.Parent = Lighting
    skyInstance = sky
end

local function DisableSky()
    if skyInstance then
        skyInstance:Destroy()
        skyInstance = nil
    end
end

Tab:AddToggle({
    Name = "🦊 Bật / Tắt Shiba Skybox",
    Default = false,
    Callback = function(state)
        if state then
            EnableSky()
            Notify("✅ Đã bật skybox Shiba mềm!")
        else
            DisableSky()
            Notify("❌ Đã tắt skybox Shiba.")
        end
    end
})
