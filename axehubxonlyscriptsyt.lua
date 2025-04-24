--[[
      Axe Hub x Onlyscripts
]]--

--window

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
      Name = "Axe Hub x OnlyScripts",
      Icon = 14916455401, 
      LoadingTitle = "Loading...",
      LoadingSubtitle = "by FearlessFallout",
      Theme = "Ocean", 
      DisableRayfieldPrompts = false,
      DisableBuildWarnings = false, 
   
      ConfigurationSaving = {
         Enabled = true,
         FolderName = nil, 
         FileName = "Big Hub"
      },
   
      Discord = {
         Enabled = false, 
         Invite = "noinvitelink", 
         RememberJoins = true 
      },
   
      KeySystem = false, 
      KeySettings = {
         Title = "Untitled",
         Subtitle = "Key System",
         Note = "No method of obtaining the key is provided", 
         FileName = "Key", 
         SaveKey = true, 
         GrabKeyFromSite = false, 
         Key = {"Hello"} 
      }
   })

   --notification service

 Rayfield:Notify({
    Title = "Welcome to Axe Hub!",
    Content = "Thank you for loading our hub. Make sure to join our discord server!",
    Duration = 5.5,
    Image = 0,
 })

 -- main tab

 local MainTab = Window:CreateTab("Main Info. / Credits", 7733749837) 

 local Section = MainTab:CreateSection("Report bugs and suggest stuff that you want to see in future updates")

 local Button = MainTab:CreateButton({
    Name = "Click to copy Discord Server link",
    Callback = function()
        setclipboard("https://discord.gg/wQnZvPhet5")
    end,
 })

 local Section = MainTab:CreateSection("Support our main partner OnlyScripts by subscribing to his channel")

 local Button = MainTab:CreateButton({
    Name = "Click to copy Youtube Channel link",
    Callback = function()
        setclipboard("")
    end,
 })

 local Section = MainTab:CreateSection("Also subscribe to my channel for more showcases")

 local Button = MainTab:CreateButton({
    Name = "Click to copy Youtube Channel link",
    Callback = function()
        setclipboard("https://www.youtube.com/@zerroidxx")
    end,
 })

  --scripts tab

  local ScriptTab = Window:CreateTab("Universal", 7733954611) 

  local Section = ScriptTab:CreateSection("Dex Explorer")
 
  local Button = ScriptTab:CreateButton({
     Name = "Dex Explorer",
     Callback = function()
         loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
     end,
  })
 
  local Section = ScriptTab:CreateSection("Admin Commands")
 
  local Button = ScriptTab:CreateButton({
     Name = "Infinite Yield",
     Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
     end,
  })
 
  local Button = ScriptTab:CreateButton({
     Name = "Nameless Admin",
     Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
     end,
  })
 
  local Section = ScriptTab:CreateSection("Universal Scripts")
 
  local Button = ScriptTab:CreateButton({
     Name = "RTX Shaders",
     Callback = function()
         loadstring(game:HttpGet("https://pastebin.com/raw/uqD7VqQU"))()
     end,
  })
 
  local Button = ScriptTab:CreateButton({
     Name = "FE Invisible",
     Callback = function()
         loadstring(game:HttpGet('https://pastebin.com/raw/3Rnd9rHf'))()
     end,
  })

  local Button = ScriptTab:CreateButton({
   Name = "Sus Gui V2",
   Callback = function()
       local player = game.Players.LocalPlayer
       local character = player.Character or player.CharacterAdded:Wait()
       local isR6 = character:FindFirstChild("Torso") ~= nil
       
       -- Notification Function
       local function showNotification(message)
           local notificationGui = Instance.new("ScreenGui")
           notificationGui.Name = "NotificationGui"
           notificationGui.Parent = game.CoreGui
       
           local notificationFrame = Instance.new("Frame")
           notificationFrame.Size = UDim2.new(0, 300, 0, 50)
           notificationFrame.Position = UDim2.new(0.5, -150, 1, -60)
           notificationFrame.AnchorPoint = Vector2.new(0.5, 1)
           notificationFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
           notificationFrame.BorderSizePixel = 0
           notificationFrame.Parent = notificationGui
       
           local uicorner = Instance.new("UICorner")
           uicorner.CornerRadius = UDim.new(0, 10)
           uicorner.Parent = notificationFrame
       
           local textLabel = Instance.new("TextLabel")
           textLabel.Size = UDim2.new(1, -20, 1, 0)
           textLabel.Position = UDim2.new(0, 10, 0, 0)
           textLabel.BackgroundTransparency = 1
           textLabel.Text = message .. " | by pyst"
           textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
           textLabel.Font = Enum.Font.SourceSansSemibold
           textLabel.TextSize = 18
           textLabel.TextXAlignment = Enum.TextXAlignment.Left
           textLabel.Parent = notificationFrame
       
           notificationFrame.BackgroundTransparency = 1
           textLabel.TextTransparency = 1
       
           game:GetService("TweenService"):Create(
               notificationFrame,
               TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
               {BackgroundTransparency = 0}
           ):Play()
       
           game:GetService("TweenService"):Create(
               textLabel,
               TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
               {TextTransparency = 0}
           ):Play()
       
           task.delay(5, function()
               game:GetService("TweenService"):Create(
                   notificationFrame,
                   TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
                   {BackgroundTransparency = 1}
               ):Play()
       
               game:GetService("TweenService"):Create(
                   textLabel,
                   TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
                   {TextTransparency = 1}
               ):Play()
       
               task.delay(0.5, function()
                   notificationGui:Destroy()
               end)
           end)
       end
       
       
       if isR6 then
           showNotification("R6 detected")
       else
           showNotification("R15 detected")
       end
       
       -- Create Screen GUI
       local gui = Instance.new("ScreenGui")
       gui.Name = "BangGui"
       gui.Parent = game.CoreGui
       
       -- Main Frame
       local mainFrame = Instance.new("Frame")
       mainFrame.Size = UDim2.new(0, 300, 0, 300)
       mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
       mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
       mainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
       mainFrame.BorderSizePixel = 0
       mainFrame.Parent = gui
       
       local uicorner = Instance.new("UICorner")
       uicorner.CornerRadius = UDim.new(0, 20)
       uicorner.Parent = mainFrame
       
       -- Title
       local title = Instance.new("TextLabel")
       title.Size = UDim2.new(1, -60, 0, 30)
       title.Position = UDim2.new(0, 10, 0, 0)
       title.BackgroundTransparency = 1
       title.Text = "Choose"
       title.TextColor3 = Color3.fromRGB(255, 255, 255)
       title.Font = Enum.Font.SourceSansSemibold
       title.TextSize = 24
       title.TextXAlignment = Enum.TextXAlignment.Left
       title.Parent = mainFrame
       
       -- Close Button
       local closeButton = Instance.new("TextButton")
       closeButton.Size = UDim2.new(0, 30, 0, 30)
       closeButton.Position = UDim2.new(1, -40, 0, 0)
       closeButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
       closeButton.Text = "X"
       closeButton.Font = Enum.Font.SourceSansBold
       closeButton.TextSize = 20
       closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
       closeButton.Parent = mainFrame
       
       local closeCorner = Instance.new("UICorner")
       closeCorner.CornerRadius = UDim.new(0, 10)
       closeCorner.Parent = closeButton
       
       closeButton.MouseButton1Click:Connect(function()
           gui:Destroy()
       end)
       
       -- Minimize Button
       local minimizeButton = Instance.new("TextButton")
       minimizeButton.Size = UDim2.new(0, 30, 0, 30)
       minimizeButton.Position = UDim2.new(1, -80, 0, 0)
       minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
       minimizeButton.Text = "-"
       minimizeButton.Font = Enum.Font.SourceSansBold
       minimizeButton.TextSize = 20
       minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
       minimizeButton.Parent = mainFrame
       
       local minimizeCorner = Instance.new("UICorner")
       minimizeCorner.CornerRadius = UDim.new(0, 10)
       minimizeCorner.Parent = minimizeButton
       
       local minimized = false
       minimizeButton.MouseButton1Click:Connect(function()
           minimized = not minimized
           if minimized then
               mainFrame:TweenSize(UDim2.new(0, 300, 0, 30), Enum.EasingDirection.In, Enum.EasingStyle.Quint, 0.5)
           else
               mainFrame:TweenSize(UDim2.new(0, 300, 0, 300), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.5)
           end
       end)
       
       -- Dragging Functionality
       local dragging, dragStart, startPos
       mainFrame.InputBegan:Connect(function(input)
           if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
               dragging = true
               dragStart = input.Position
               startPos = mainFrame.Position
           end
       end)
       
       mainFrame.InputChanged:Connect(function(input)
           if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
               local delta = input.Position - dragStart
               mainFrame.Position = UDim2.new(
                   startPos.X.Scale,
                   startPos.X.Offset + delta.X,
                   startPos.Y.Scale,
                   startPos.Y.Offset + delta.Y
               )
           end
       end)
       
       mainFrame.InputEnded:Connect(function(input)
           if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
               dragging = false
           end
       end)
       
       -- Scrolling Frame
       local scrollingFrame = Instance.new("ScrollingFrame")
       scrollingFrame.Size = UDim2.new(1, -20, 1, -50)
       scrollingFrame.Position = UDim2.new(0, 10, 0, 40)
       scrollingFrame.BackgroundTransparency = 1
       scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 300)
       scrollingFrame.ScrollBarThickness = 6
       scrollingFrame.Parent = mainFrame
       
       local layout = Instance.new("UIListLayout")
       layout.Padding = UDim.new(0, 10)
       layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
       layout.Parent = scrollingFrame
       
       -- Buttons Data
       local buttons = {
           {name = "Bang V2", r6 = "https://pastebin.com/raw/aPSHMV6K", r15 = "https://pastebin.com/raw/1ePMTt9n"},
           {name = "Get Banged", r6 = "https://pastebin.com/raw/zHbw7ND1", r15 = "https://pastebin.com/raw/7hvcjDnW"},
           {name = "Suck", r6 = "https://pastebin.com/raw/SymCfnAW", r15 = "https://pastebin.com/raw/p8yxRfr4"},
           {name = "Face Bang", r6 = "https://pastebin.com/raw/FPu4e2Qh", r15 = "https://pastebin.com/raw/DyPP2tAF"},
           {name = "Jerk Off", r6 = "https://pastefy.app/wa3v2Vgm/raw", r15 = "https://pastefy.app/YZoglOyJ/raw"}
       }
       
       for _, buttonData in pairs(buttons) do
           local button = Instance.new("TextButton")
           button.Size = UDim2.new(0.8, 0, 0, 40)
           button.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
           button.Text = buttonData.name
           button.Font = Enum.Font.SourceSansBold
           button.TextSize = 20
           button.TextColor3 = Color3.fromRGB(255, 255, 255)
           button.Parent = scrollingFrame
       
           local uicorner = Instance.new("UICorner")
           uicorner.CornerRadius = UDim.new(0, 10)
           uicorner.Parent = button
       
           button.MouseButton1Click:Connect(function()
               if isR6 then
                   loadstring(game:HttpGet(buttonData.r6))()
               else
                   loadstring(game:HttpGet(buttonData.r15))()
               end
           end)
       end
             end    
       })
 
  local Button = ScriptTab:CreateButton({
     Name = "FPS Unlocker",
     Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/HoodieGaM3r/FPS-UNLOCKER/main/V2"))()
     end,
  })
 
  local Button = ScriptTab:CreateButton({
     Name = "Fling Sniper",
     Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/MavaaQ/tichoucko/refs/heads/main/fl.lua"))()
     end,
  })
 
  local Button = ScriptTab:CreateButton({
     Name = "Equip All Tools (If you have any)",
     Callback = function()
         loadstring(game:HttpGet("https://pastefy.app/IKblkV2x/raw"))()
     end,
  })
 
  local OnlyTab = Window:CreateTab("OnlyScripts", 7733799795)

  local Section = OnlyTab:CreateSection("Scripts made by OnlyScripts")

  local Button = OnlyTab:CreateButton({
   Name = "Nameless Hub [ Touch Football ]",
   Callback = function()
      loadstring(game:HttpGet("https://gist.githubusercontent.com/Onlyscripts1/8da67350f38b3b673f79e68c08c33a70/raw/4f1eb36a2f10875f94076a7e13209302d4842cbc/gistfile1.txt"))()
   end,
})

local Button = OnlyTab:CreateButton({
   Name = "Zee Hub V5",
   Callback = function()
      loadstring(game:HttpGet("https://gist.githubusercontent.com/Onlyscripts1/9fd2be4c357b946f3dad4a361386ed73/raw/a5c0c057d3fd98251745000c602c98174d442669/Zee%20Hub%20V5"))()
   end,
})

local Button = OnlyTab:CreateButton({
   Name = "Krystal Dance [ Hatless ]",
   Callback = function()
      loadstring(game:HttpGet("https://gist.githubusercontent.com/Onlyscripts1/8336f9661783e55cb600c52f342c5306/raw/33b8a78ce3300cfe6fbe3e030297a09061b416ef/Krystal%20Dance%20V2"))()
   end,
})

local Button = OnlyTab:CreateButton({
   Name = "Ender",
   Callback = function()
      loadstring(game:HttpGet("https://gist.githubusercontent.com/Onlyscripts1/2161aa14da3ed1a635c279c0f5f81a4b/raw/14aa5da07e3afcb0d67dd15ae79e9dcbcff74dbf/Fe%20ender%20V2"))()
   end,
})

local Button = OnlyTab:CreateButton({
   Name = "Xester",
   Callback = function()
      loadstring(game:HttpGet("https://gist.githubusercontent.com/Onlyscripts1/e3397f94dfc513acec484c26fc54ae02/raw/acbac1b3c862bebf43511420292fa8889af5424e/Xester%20V2%20Remake"))()
   end,
})

local ZerrTab = Window:CreateTab("Axe Hub", 7733674079)

local Section = ZerrTab:CreateSection("Axe Script Hub")

local Button = ZerrTab:CreateButton({
 Name = "Axe Hub",
 Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/zeroidxx/AxeHubExploit/refs/heads/main/axe%20hub%20ids.lua'))()
 end,
})

local Button = ZerrTab:CreateButton({
   Name = "Natural Disaster Survival",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroidxx/axehubNDSx/refs/heads/main/Axe%20Hub%20Protected%20NDS.txt"))()
   end,
  })

  local Button = ZerrTab:CreateButton({
   Name = "Work At A Pizza Place",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroidxx/axehubWAPZx/refs/heads/main/Axe%20Hub%20Protected%20WAPZ.txt"))()
   end,
  })

  local Section = ZerrTab:CreateSection("More coming soon")

local LeakTab = Window:CreateTab("Leaked Sources and Scripts", 7733674079)

local Section = LeakTab:CreateSection("Join my discord server to get sources")

local Button = LeakTab:CreateButton({
 Name = "PLAdmin ( No Grabify Link )",
 Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/21-xxzerd02/PLAdmin/refs/heads/main/PLAdmin%20Safe'))()
 end,
})

local Button = LeakTab:CreateButton({
   Name = "Fedora Admin",
   Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/alexx1212/deodasl123/main/1231232131'))()
   end,
  })

  local Button = LeakTab:CreateButton({
   Name = "Fedora Admin",
   Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/alexx1212/deodasl123/main/1231232131'))()
   end,
  })

  local Section = LeakTab:CreateSection("More leaks in my discord server, feel free to use any of them")

  local ExeTab = Window:CreateTab("Executors", 7733734668) 

  local Section = ExeTab:CreateSection("Working")
 
  local Button = ExeTab:CreateButton({
     Name = "Synapse X",
     Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/Chillz-s-scripts/main/Synapse-X-Remake.lua"))()
     end,
  })

  local Button = ExeTab:CreateButton({
   Name = "Delta X",
   Callback = function()
      loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Delta-X-Executor-10319"))()
   end,
})

local Button = ExeTab:CreateButton({
   Name = "KRNL",
   Callback = function()
      loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Krnl-Executor-8368"))()
   end,
})

local Button = ExeTab:CreateButton({
   Name = "Codex",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/CodexScripts/CodexUI/refs/heads/main/CodexMain"))()
   end,
})