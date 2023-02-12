getgenv().enabled = true
getgenv().fillcolor = Color3.new(0, 0, 0) 
getgenv().outlinecolor = Color3.new(1, 1, 1) 
getgenv().filltrans = 0.6
getgenv().outlinetrans = 0 

local folder = game.CoreGui:FindFirstChild("OutlineFolder") or Instance.new("Folder")
if enabled == false then
    folder:Destroy()
end

if folder.Name == "Folder" then
    folder.Name = "OutlineFolder"
    folder.Parent = game.CoreGui
end

if getgenv().enabled == true then 
    getgenv().enabled = false
    getgenv().enabled = true
end
while getgenv().enabled do
    task.wait()
    for i, v in pairs(game:GetService("Workspace").Level.Glass:GetChildren()) do
        local esp = folder:FindFirstChild(v.Name) or Instance.new("Highlight")
        esp.Name = v.Name
        esp.Parent = folder
        esp.FillColor = fillcolor 
        esp.OutlineColor = outlinecolor    
        esp.FillTransparency = filltrans
        esp.OutlineTransparency = outlinetrans
        esp.Adornee = cam
        esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        end
        end
    
