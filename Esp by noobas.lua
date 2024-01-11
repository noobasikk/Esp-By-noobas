local Players = game:GetService("Players"):GetChildren()

local RunService = game:GetService("RunService")

local highlight = Instance.new("Highlight")

highlight.Name = "Highlight"



for i, v in pairs(Players) do

    repeat wait() until v.Character

    if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then

        local highlightClone = highlight:Clone()

        highlightClone.Adornee = v.Character

        highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")

        highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop

        highlightClone.Name = "Highlight"

    end

end



game.Players.PlayerAdded:Connect(function(player)

    repeat wait() until player.Character

    if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then

        local highlightClone = highlight:Clone()

        highlightClone.Adornee = player.Character

        highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")

        highlightClone.Name = "Highlight"

    end

end)



game.Players.PlayerRemoving:Connect(function(playerRemoved)

    playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()

end)



RunService.Heartbeat:Connect(function()

    for i, v in pairs(Players) do

        repeat wait() until v.Character

        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then

            local highlightClone = highlight:Clone()

            highlightClone.Adornee = v.Character

            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")

            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop

            highlightClone.Name = "Highlight"

            task.wait()

        end

end

end)
wait(1)

game.StarterGui:SetCore("SendNotification",  {
    Title = "Скрипт успешно загрузился но вот только одна просьба";
    Text = "Подпишись На мой Телеграмм канал @noobasscripts пожалуйста <3";
    Duration = "5";
    Button1 = "Хорошо нубасек";
    Button2 = "Я ГЕЙ";
})
