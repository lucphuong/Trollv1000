-- Tải UI-Redz-V2
loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua"))()

-- Tạo cửa sổ hub mới
local Window = MakeWindow({
    Hub = {
        Title = "🐕 Shiba Skybox | Soliar Addon",
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
local shibaId = "rbxassetid://15422943858" -- Ảnh Shiba mềm
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

-- Nút bật/tắt skybox
Tab:AddToggle({
    Name = "🦊 Bật / Tắt Shiba Skybox",
    Default = false,
    Callback = function(state)
        if state then
            EnableSky()
            Notify({Title = "Shiba Skybox", Content = "✅ Đã bật skybox Shiba mềm!"})
        else
            DisableSky()
            Notify({Title = "Shiba Skybox", Content = "❌ Đã tắt skybox Shiba."})
        end
    end
})
