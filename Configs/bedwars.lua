local function executeBedwarsConfig()
    local GuiLibrary = shared.GuiLibrary
    local playersService = game:GetService("Players")
    local textService = game:GetService("TextService")
    local lightingService = game:GetService("Lighting")
    local textChatService = game:GetService("TextChatService")
    local inputService = game:GetService("UserInputService")
    local runService = game:GetService("RunService")
    local tweenService = game:GetService("TweenService")
    local collectionService = game:GetService("CollectionService")
    local replicatedStorageService = game:GetService("ReplicatedStorage")
    local gameCamera = workspace.CurrentCamera
    local lplr = playersService.LocalPlayer
    local vapeConnections = {}
    local vapeCachedAssets = {}
    local vapeEvents = setmetatable({}, {
        __index = function(self, index)
            self[index] = Instance.new("BindableEvent")
            return self[index]
        end
    })
    local vapeTargetInfo = shared.VapeTargetInfo
    local vapeInjected = true

    local function runFunction(func) func() end
    local function runcode(func) func() end

    local function warningNotification(title, text, delay)
        local suc, res = pcall(function()
            local frame = GuiLibrary.CreateNotification(title or "Voidware", text or "Successfully called function", delay or 7, "assets/WarningNotification.png")
            frame.Frame.Frame.ImageColor3 = Color3.fromRGB(236, 129, 44)
            return frame
        end)
        return (suc and res)
    end

    local function InfoNotification(title, text, delay)
        local suc, res = pcall(function()
            local frame = GuiLibrary.CreateNotification(title or "Voidware", text or "Successfully called function", delay or 7, "assets/InfoNotification.png")
            return frame
        end)
        return (suc and res)
    end

    -- Rest of your code...

end

executeBedwarsConfig()