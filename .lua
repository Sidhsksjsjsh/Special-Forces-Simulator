local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sidhsksjsjsh/VAPE-UI-MODDED/main/.lua"))()
local userSide = game:GetService("Players")

local wndw = lib:Window("VIP Turtle Hub V4 - Bro my crush does not like me since she know i like her 💀🥺")
local T1 = wndw:Tab("Main")

T1:Toggle("Bullet Tracking",false,function(value)
    _G.bt = value
end)

T1:Toggle("Fast Reload",false,function(value)
    _G.fr = value
end)

lib:HookCalled(function(self,args)
     if self.Name == "Shot" then
      args[1] = userSide[userSide:GetChildren()[math.random(1,#userSide:GetChildren())]].Character.HumanoidRootPart.Position
      args[5] = userSide[userSide:GetChildren()[math.random(1,#userSide:GetChildren())]].Character.HumanoidRootPart.Position
      return self.FireServer(self,unpack(args))
    elseif self.Name == "Reload" then
      args[1] = 0
      return self.FireServer(self,unpack(args))
    end
end)
