# Seal-Ware
Seal Ware is a simple versatil and fully customisable UI library for roblox :)
### Preview:

https://user-images.githubusercontent.com/97072588/202575330-4cfd9d5a-4ee1-49ca-8746-e51cb0e88958.mp4


![image](https://user-images.githubusercontent.com/97072588/202575171-bf1c3d2a-1dff-4c98-a856-d0fcc37f9f1b.png)
### Example:
https://cdn.discordapp.com/attachments/1005282703991652403/1042932517990314014/message.txt
```lua

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/0xBqz/Seal-Ware/main/Library.lua", true))()
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

```
