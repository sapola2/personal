local folder = game.CoreGui:FindFirstChild("OutlineFolder") or Instance.new("Folder")
if Enabled == false then
    folder:Destroy()
end

if folder.Name == "Folder" then
	folder.Name = "OutlineFolder"
	folder.Parent = game.CoreGui
end

local glass = game:GetService("Workspace").Level.Glass

if getgenv().Enabled == true then 
    getgenv().Enabled = false
    getgenv().Enabled = true
end
while getgenv().Enabled do
    task.wait()
for i,v in pairs(glass:GetChildren()) do
	local cam = v.ExteriorCam
	local outline = Instance.new("Highlight")
	outline.Name = v.Name
	outline.FillTransparency = Filltransparency
	outline.FillColor = Fillcolor
	outline.OutlineColor = Outlinecolor
	outline.OutlineTransparency = Outlinetransparency
	outline.Adornee = v.parent
	outline.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	
end
end
end 
