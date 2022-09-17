local HttpService = game:GetService("HttpService")
local Script = {}

Script.Players = game:GetService("Players")
Script.Player = Script.Players.LocalPlayer
Script.Name = Script.Player.Name
Script.UserId = Script.Player.UserId

Script.HttpService = game:GetService("HttpService")
Script.TweenService = game:GetService("TweenService")

Script.GameScripts = Script.HttpService:JSONDecode(game:HttpGet("https://api.github.com/repos/0xBqz/Seal-Ware/contents/Games"))
Script.ScriptSources = Script.GameScripts.download_url

function Script:ValidGame()
    for _,game in pairs(Script.ScriptSources) do
        if game == "https://api.github.com/repos/0xBqz/Seal-Ware/contents/Games/"..game.PlaceId..".lua" then
            return true
        end
    end
end

function Script:GetScript()
    if Script:ValidGame() then
        return game:HttpGet("https://api.github.com/repos/0xBqz/Seal-Ware/contents/Games/"..game.PlaceId..".lua")
    else
        return game:HttpGet("https://api.github.com/repos/0xBqz/Seal-Ware/contents/Games/Universal.lua")
    end
end

function Script:Find(table,object)
	if table == nil then 
        return false 
    end
	for _,v in pairs(table) do
		if v == object then return
            true 
        end
	end 
	return false
end

Script.JsonData = {}

return Script
