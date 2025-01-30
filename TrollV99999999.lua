local function fake_fruit_notification()
    game.StarterGui:SetCore("SendNotification", {
        Title = "🎉 Chúc mừng!";
        Text = "mày vừa nhận được Trái Dragon west!";
        Duration = 5;
    })
end

local function random_movement()
    while true do
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = math.random(10, 100)
        wait(0.5)
    end
end

local function infinite_jump()
    while true do
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
        wait(0.1)
    end
end

local function sit_forever()
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
    while true do
        game.Players.LocalPlayer.Character.Humanoid.Sit = true
        wait(0.1)
    end
end

local function teleport_to_sea()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -100, 0) -- Dịch chuyển ra biển
    end
end

local function lag_effect()
    while true do
        game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("BuyHaki", "Aura")
        wait(0.1)
    end
end

-- 🔥 Chống Ban: Đổi tên để tránh bị phát hiện
game.Players.LocalPlayer.Name = "Unknown_Player_" .. math.random(1000, 9999)

-- 🔥 Chống Ban: Auto Leave nếu bị phát hiện
game:GetService("Players").LocalPlayer.Chatted:Connect(function(msg)
    if string.find(msg, "admin") or string.find(msg, "hack") or string.find(msg, "report") then
        game.Players.LocalPlayer:Kick("Lỗi kết nối! (Anti-Ban)")
    end
end)

while true do
    print("=== MENU TROLL Blox Fruits (Có Chống Ban) ===")
    print("1. Fake thông báo nhận Trái Ác Quỷ xịn")
    print("2. Khiến bạn bè chạy loạn xạ")
    print("3. Khiến bạn bè nhảy liên tục")
    print("4. Khiến bạn bè không thể tấn công (ngồi mãi)")
    print("5. Dịch chuyển bạn bè ra biển (cần Portal Fruit)")
    print("6. Spam hiệu ứng gây lag")
    print("7. Thoát")

    local choice = io.read()
    
    if choice == "1" then
        fake_fruit_notification()
    elseif choice == "2" then
        random_movement()
    elseif choice == "3" then
        infinite_jump()
    elseif choice == "4" then
        sit_forever()
    elseif choice == "5" then
        teleport_to_sea()
    elseif choice == "6" then
        lag_effect()
    elseif choice == "7" then
        print("Thoát script troll!")
        break
    else
        print("Lựa chọn không hợp lệ! Hãy thử lại.")
    end
end
