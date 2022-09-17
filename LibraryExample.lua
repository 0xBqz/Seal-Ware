
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/0xBqz/Seal-Ware/main/Scripts/Library.lua", true))()
local Gui = Library:Window("Title")

local Main = Gui:tab("Tab")

Main:Label("Label")

Main:Button("Button",function()
    print("button pressed!")
end)

Main:Toggle("Toggle 1",false,function(value)
    print(tostring(value))
end)

Main:Toggle("Toggle 2",true,function(value)
    print(tostring(value))
end)

Main:KeyBind("KeyBind",function(key)
    print("Key pressed: "..tostring(key))
end)

Main:Slider("Slider 1", 0, 10, 5,function(value)
    print("Slider"..tostring(value))
end)

Main:Slider("Slider 2", 0, 100, 100,function(value)
    print("Slider"..tostring(value))
end)

local Conf = Gui:tab("Tab2")

Conf:Button("Button",function()
    print("button pressed!")
end)

Conf:Button("Button",function()
    print("button pressed!")
end)

Conf:Button("Button",function()
    print("button pressed!")
end)

Conf:Button("Button",function()
    print("button pressed!")
end)
