-- VERSION: 0.3.0
-- CREDITS: MrAlikSus
-- DISCORD: Footages#7288



local screengui = Instance.new("ScreenGui")
screengui.Parent = game.CoreGui
screengui.Name = "DeltaGui_PcVersion"


local downPanel = Instance.new("Frame")
downPanel.Size = UDim2.new(0, 60, 0, 80)
downPanel.Position = UDim2.new(0.5, -30, 1, -55)
downPanel.BackgroundColor3 = Color3.fromRGB(29, 40, 48)
downPanel.Parent = screengui
downPanel.ZIndex = 10000000
downPanel.Name = "DownIconPanel"


local downPanelCorner = Instance.new("UICorner")
downPanelCorner.CornerRadius = UDim.new(0, 6)
downPanelCorner.Parent = downPanel

local downPanelIcon = Instance.new("ImageButton")
downPanelIcon.Size = UDim2.new(0, 50, 0, 50)
downPanelIcon.Position = UDim2.new(0, 5, 0, 5)
downPanelIcon.BackgroundColor3 = Color3.fromRGB(29, 40, 48)
downPanelIcon.Parent = downPanel
downPanelIcon.Image = "rbxassetid://12730597972"
downPanelIcon.ImageColor3 = Color3.fromRGB(140, 158, 185)
downPanelIcon.ZIndex = 10000001


local downPanelButton = Instance.new("TextButton")
downPanelButton.Text = ""
downPanelButton.Size = UDim2.new(0, 40, 0, 10)
downPanelButton.Position = UDim2.new(0.5, -20, 0, -8)
downPanelButton.BackgroundColor3 = Color3.fromRGB(31, 41, 48)
downPanelButton.Parent = downPanel
downPanelButton.ZIndex = 10000003

local cornerButtonPanel = Instance.new("UICorner")
cornerButtonPanel.CornerRadius = UDim.new(0, 3)
cornerButtonPanel.Parent = downPanelButton


local downPanelButton1 = Instance.new("Frame")
downPanelButton1.Size = UDim2.new(0, 42, 0, 12)
downPanelButton1.Position = UDim2.new(0, -1, 0, -1)
downPanelButton1.BackgroundColor3 = Color3.fromRGB(44, 59, 69)
downPanelButton1.Parent = downPanelButton
downPanelButton1.ZIndex = 10000002

local cornerButtonPanel2 = Instance.new("UICorner")
cornerButtonPanel2.CornerRadius = UDim.new(0, 3)
cornerButtonPanel2.Parent = downPanelButton1


local textLabel2 = Instance.new("TextLabel")
textLabel2.Size = UDim2.new(0, 10, 0, 10)
textLabel2.Position = UDim2.new(0.5, -5, 0, -3)
textLabel2.Text = "^"
textLabel2.BackgroundTransparency = 1
textLabel2.Parent = downPanelButton
textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel2.TextSize = 10
textLabel2.ZIndex = 10000004
textLabel2.Rotation = 180


local button = downPanelButton
local menu = downPanel

local menuOpen = false

local function toggleMenu()
    if menuOpen then
        -- Закрытие меню
        menu:TweenPosition(UDim2.new(0.5, -30, 1, -5), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
        textLabel2.Rotation = 0
        textLabel2.Position = UDim2.new(0.5, -5, 0, 5)
    else
        -- Открытие меню
        menu:TweenPosition(UDim2.new(0.5, -30, 1, -55), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
        textLabel2.Rotation = 180
        textLabel2.Position = UDim2.new(0.5, -5, 0, -5)
    end
    
    menuOpen = not menuOpen
end

button.MouseButton1Click:Connect(toggleMenu)




local downPanelIconCorner = Instance.new("UICorner")
downPanelIconCorner.CornerRadius = UDim.new(0, 8)
downPanelIconCorner.Parent = downPanelIcon


local mainframe = Instance.new("Frame")
mainframe.Name = "MainFrame"
mainframe.Size = UDim2.new(0, 600, 0, 378)
mainframe.BackgroundColor3 = Color3.fromRGB(23, 32, 38)
mainframe.Parent = screengui
mainframe.Active = true
mainframe.Position = UDim2.new(0.5, -300, 0.5, -200)
mainframe.Visible = false


local mainimage = Instance.new("ImageLabel")
mainimage.Size = UDim2.new(0, 30, 0, 30)
mainimage.Position = UDim2.new(0, 10, 0, 10)
mainimage.BackgroundTransparency = 1
mainimage.Image = "rbxassetid://12730597972"
mainimage.Parent = mainframe
mainimage.ImageColor3 = Color3.fromRGB(140, 158, 185)

local maincorner = Instance.new("UICorner")
maincorner.CornerRadius = UDim.new(0, 7)
maincorner.Parent = mainframe

local mainstroke = Instance.new("UIStroke")
mainstroke.Thickness = 1
mainstroke.Color = Color3.fromRGB(51, 54, 56)
mainstroke.Parent = mainframe


local close = Instance.new("ImageLabel")
close.Size = UDim2.new(0, 18, 0, 18)
close.Position = UDim2.new(1, -29, 0, 11)
close.Parent = mainframe
close.BackgroundTransparency = 1
close.ImageColor3 = Color3.fromRGB(84, 121, 147)
close.Image = "rbxassetid://3926305904"
close.ImageRectOffset = Vector2.new(927, 727)
close.ImageRectSize = Vector2.new(30, 30)


local collapse = Instance.new("ImageLabel")
collapse.Size = UDim2.new(0, 19, 0, 19)
collapse.Position = UDim2.new(0, -44.5, 0, -0.5)
collapse.BackgroundTransparency = 1
collapse.Parent = close
collapse.ImageColor3 = Color3.fromRGB(84, 121, 147)
collapse.Image = "rbxassetid://3926305904"
collapse.ImageRectOffset = Vector2.new(722, 722)
collapse.ImageRectSize = Vector2.new(40, 40)


local minus = Instance.new("TextButton")
minus.Size = UDim2.new(0, 19, 0, 19)
minus.Position = UDim2.new(0, -44.5, 0, -0.5)
minus.BackgroundTransparency = 1
minus.Parent = collapse
minus.Text = "-"
minus.TextColor3 = Color3.fromRGB(84, 121, 147)
minus.Font = "Code"
minus.TextSize = 20

-- Movealable

local UIS = game:GetService('UserInputService')
local frame = mainframe
local dragToggle = nil
local dragSpeed = 0.1
local dragStart = nil
local startPos = nil

local function updateInput(input)
 local delta = input.Position - dragStart
 local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
  startPos.Y.Scale, startPos.Y.Offset + delta.Y)
 game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
end

frame.InputBegan:Connect(function(input)
 if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
  dragToggle = true
  dragStart = input.Position
  startPos = frame.Position
  input.Changed:Connect(function()
   if input.UserInputState == Enum.UserInputState.End then
    dragToggle = false
   end
  end)
 end
end)

UIS.InputChanged:Connect(function(input)
 if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
  if dragToggle then
   updateInput(input)
  end
 end
end)

-- end

local mainscroll = Instance.new("Frame")
mainscroll.Size = UDim2.new(0, 120, 0, 338)
mainscroll.Position = UDim2.new(0, 50, 0, 40)
mainscroll.BackgroundColor3 = Color3.fromRGB(27, 37, 44)
mainscroll.Parent = mainframe
mainscroll.Name = "MainScrollFrame"

local mainscrollcorner = Instance.new("UICorner")
mainscrollcorner.CornerRadius = UDim.new(0, 7)
mainscrollcorner.Parent = mainscroll

local mainscrollsupport = Instance.new("Frame")
mainscrollsupport.Size = UDim2.new(0, 120, 0, 7)
mainscrollsupport.Position = UDim2.new(0, 0, 0, 331)
mainscrollsupport.BackgroundColor3 = Color3.fromRGB(27, 37, 44)
mainscrollsupport.Parent = mainscroll
mainscrollsupport.Name = "MainScrollSupport"
mainscrollsupport.BorderSizePixel = 0

local mainscrollsupport2 = Instance.new("Frame")
mainscrollsupport2.Size = UDim2.new(0, 7, 0, 338)
mainscrollsupport2.Position = UDim2.new(0, 113, 0, 0)
mainscrollsupport2.BackgroundColor3 = Color3.fromRGB(27, 37, 44)
mainscrollsupport2.Parent = mainscroll
mainscrollsupport2.Name = "MainScrollSupport_2"
mainscrollsupport2.BorderSizePixel = 0

local mainscrollLine = Instance.new("Frame")
mainscrollLine.Size = UDim2.new(0, 1, 0, 338)
mainscrollLine.Position = UDim2.new(0, 7, 0, 0)
mainscrollLine.BackgroundColor3 = Color3.fromRGB(36, 49, 58)
mainscrollLine.Parent = mainscrollsupport2
mainscrollLine.Name = "MainScrollLine"
mainscrollLine.BorderSizePixel = 0

local lineTextbox = Instance.new("Frame")
lineTextbox.Size = UDim2.new(0, 420, 0, 1)
lineTextbox.Position = UDim2.new(0, 130, 0, 25)
lineTextbox.BackgroundColor3 = Color3.fromRGB(31, 42, 49)
lineTextbox.BorderSizePixel = 0
lineTextbox.Parent = mainscroll
lineTextbox.Name = "LineTextBox"

local scrollingframe = Instance.new("ScrollingFrame")
scrollingframe.Size = UDim2.new(0, 414, 0, 230)
scrollingframe.Position = UDim2.new(0, 175, 0, 80)
scrollingframe.BackgroundTransparency = 1
scrollingframe.BorderSizePixel = 0
scrollingframe.Parent = mainframe
scrollingframe.ScrollBarThickness = 5
scrollingframe.ScrollBarImageColor3 = Color3.fromRGB(35, 48, 57)


local textbox = Instance.new("TextBox")
textbox.Size = UDim2.new(0, 600, 0, 1500)
textbox.Position = UDim2.new(0, 25, 0, 0)
textbox.BackgroundColor3 = Color3.fromRGB(23, 32, 38)
textbox.Parent = scrollingframe
textbox.BorderSizePixel = 0
textbox.TextXAlignment = "Left"
textbox.TextYAlignment = "Top"
textbox.TextSize = 15
textbox.TextColor3 = Color3.fromRGB(200, 200, 200)
textbox.ClearTextOnFocus = false
textbox.Font = "Code"
textbox.Text = ""
textbox.MultiLine = true









local supportTextbox = Instance.new("Frame")
supportTextbox.Size = UDim2.new(0, 500, 0, 1500)
supportTextbox.BackgroundTransparency = 1
supportTextbox.Position = UDim2.new(0, 0, 0, 0)
supportTextbox.Parent = scrollingframe


local textStrokeModules = Instance.new("TextLabel")
textStrokeModules.Size = UDim2.new(0, 500, 0, 1500)
textStrokeModules.Position = UDim2.new(0, 25, 0, 0)
textStrokeModules.BackgroundTransparency = 1
textStrokeModules.Parent = scrollingframe
textStrokeModules.BorderSizePixel = 0
textStrokeModules.TextXAlignment = "Left"
textStrokeModules.TextYAlignment = "Top"
textStrokeModules.TextSize = 15
textStrokeModules.Font = "Code"
textStrokeModules.Text = ""
textStrokeModules.TextColor3 = Color3.fromRGB(200, 200, 200)




local textlabel = Instance.new("TextLabel")
textlabel.Size = UDim2.new(0, 10, 0, 1500)
textlabel.BackgroundTransparency = 1
textlabel.Text = "1"
textlabel.TextSize = 15
textlabel.Position = UDim2.new(0, 10, 0, 0)
textlabel.Font = "Code"
textlabel.Parent = scrollingframe
textlabel.TextColor3 = Color3.fromRGB(122, 123, 123)
textlabel.TextXAlignment = "Right"
textlabel.TextYAlignment = "Top"
textlabel.Name = "Strokes"

local TextBox = textbox -- Подставьте сюда объект текстбокса
local ScrollingFrame = scrollingframe -- Подставьте сюда объект ScrollingFrame
local TextLabel = textlabel -- Подставьте сюда объект TextLabel

local function UpdateLineNumbering()
    local lines = string.split(TextBox.Text, "\n") -- Разделить текст на строки

    -- Собрать строку с нумерацией строк
    local numberingText = ""
    for i, _ in ipairs(lines) do
        numberingText = numberingText .. i .. "\n"
    end

    TextLabel.Text = numberingText -- Установить нумерацию строк в TextLabel
    ScrollingFrame.CanvasSize = UDim2.new(0, TextLabel.TextBounds.X, 0, TextLabel.TextBounds.Y) -- Обновить размер CanvasSize для прокрутки

end

TextBox:GetPropertyChangedSignal("Text"):Connect(UpdateLineNumbering)



local textline = Instance.new("Frame")
textline.Size = UDim2.new(0, 1, 0, 1500)
textline.Position = UDim2.new(0, 22, 0, 0)
textline.BackgroundColor3 = Color3.fromRGB(23, 32, 38)
textline.Parent = scrollingframe
textline.Name = "TextLine"
textline.BorderSizePixel = 0


-- Параметры меню
local menu = textline -- Замените "Menu" на имя вашего объекта меню
local menuHeight = 1500

-- Параметры точек
local startY = -menuHeight / 2 -- Начальная позиция по Y
local interval = 4 -- Интервал между точками

-- Создание точек
for i = 1, menuHeight / interval do
    local point = Instance.new("Frame")
    point.Name = "Point"
    point.Size = UDim2.new(1, 0, 0, 2) -- Размер точки
    point.BackgroundColor3 = Color3.fromRGB(64, 69, 73)-- Цвет точки (белый)
    point.BorderSizePixel = 0 -- Убираем границу точки
    point.Position = UDim2.new(0, 0, 0, startY + (i - 1) * interval) -- Позиция точки
    point.Parent = menu
end





local execute = Instance.new("TextButton")
execute.Size = UDim2.new(0, 74, 0, 40)
execute.Position = UDim2.new(0, 185, 0, 325)
execute.BackgroundColor3 = Color3.fromRGB(23, 32, 38)
execute.Text = "EXECUTE"
execute.TextSize = 12
execute.Font = "GothamMedium"
execute.Parent = mainframe
execute.TextColor3 = Color3.fromRGB(131, 177, 209)
execute.ZIndex = 3
execute.TextStrokeColor3 = Color3.fromRGB(131, 177, 209)
execute.TextStrokeTransparency = 0.75

local executeframe = Instance.new("Frame")
executeframe.Size = UDim2.new(0, 76, 0, 42)
executeframe.Position = UDim2.new(0, -1, 0, -1)
executeframe.BackgroundColor3 = Color3.fromRGB(44, 59, 69)
executeframe.Parent = execute
executeframe.ZIndex = 2

local cornerExecute = Instance.new("UICorner")
cornerExecute.CornerRadius = UDim.new(0, 4)
cornerExecute.Parent = execute

local cornerExecuteFrame = Instance.new("UICorner")
cornerExecuteFrame.CornerRadius = UDim.new(0, 4)
cornerExecuteFrame.Parent = executeframe

--animation

local button = execute -- Замените "script.Parent" на объект кнопки

button.AutoButtonColor = false -- Отключаем обычное изменение цвета при нажатии

local originalColor = button.BackgroundColor3 -- Сохраняем исходный цвет фона кнопки
local targetColor = Color3.fromRGB(131, 177, 209) -- Задаем целевой цвет фона (здесь зеленый)

local originalTextColor = button.TextColor3 -- Сохраняем исходный цвет текста кнопки
local targetTextColor = Color3.fromRGB(23, 32, 38) -- Задаем целевой цвет текста (здесь белый)

local duration = 0.15 -- Длительность анимации (в секундах)

local tweenService = game:GetService("TweenService")

local function animateColor()
    local colorTweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

    local colorTween = tweenService:Create(button, colorTweenInfo, {BackgroundColor3 = targetColor})
    colorTween:Play()

    local textColorTween = tweenService:Create(button, colorTweenInfo, {TextColor3 = targetTextColor})
    textColorTween:Play()

    wait(duration) -- Ждем окончания анимации и добавляем дополнительную секунду задержки

    local reverseColorTween = tweenService:Create(button, colorTweenInfo, {BackgroundColor3 = originalColor})
    reverseColorTween:Play()

    local reverseTextColorTween = tweenService:Create(button, colorTweenInfo, {TextColor3 = originalTextColor})
    reverseTextColorTween:Play()
end

button.MouseButton1Down:Connect(animateColor)






local executeButton = execute

local function executeScript()
    local scriptText = textbox.Text
    
    -- Запускаем скрипт, введенный в текстовое поле
    local success, result = pcall(function()
        return loadstring(scriptText)()
    end)
    
    -- Если скрипт завершился с ошибкой, выводим сообщение об ошибке
    if not success then
        warn("Error executing script: " .. result)
    end
end

executeButton.MouseButton1Click:Connect(executeScript)





local clear = Instance.new("TextButton")
clear.Size = UDim2.new(0, 66, 0, 40)
clear.Position = UDim2.new(0, 265, 0, 325)
clear.BackgroundColor3 = Color3.fromRGB(23, 32, 38)
clear.Text = "CLEAR"
clear.TextSize = 12
clear.Font = "GothamMedium"
clear.Parent = mainframe
clear.TextColor3 = Color3.fromRGB(131, 177, 209)
clear.ZIndex = 3
clear.TextStrokeColor3 = Color3.fromRGB(131, 177, 209)
clear.TextStrokeTransparency = 0.75

local clearframe = Instance.new("Frame")
clearframe.Size = UDim2.new(0, 68, 0, 42)
clearframe.Position = UDim2.new(0, -1, 0, -1)
clearframe.BackgroundColor3 = Color3.fromRGB(44, 59, 69)
clearframe.Parent = clear
clearframe.ZIndex = 2

local cornerClear = Instance.new("UICorner")
cornerClear.CornerRadius = UDim.new(0, 4)
cornerClear.Parent = clear

local cornerClearFrame = Instance.new("UICorner")
cornerClearFrame.CornerRadius = UDim.new(0, 4)
cornerClearFrame.Parent = clearframe


local clearr = clear

local function clearText()
    textbox.Text = ""
end

clearr.MouseButton1Click:Connect(clearText)



local open = Instance.new("TextButton")
open.Size = UDim2.new(0, 66, 0, 40)
open.Position = UDim2.new(0, 73, 0, 0)
open.BackgroundColor3 = Color3.fromRGB(23, 32, 38)
open.Text = "OPEN"
open.TextSize = 12
open.Font = "GothamMedium"
open.Parent = clear
open.TextColor3 = Color3.fromRGB(131, 177, 209)
open.ZIndex = 3
open.TextStrokeColor3 = Color3.fromRGB(131, 177, 209)
open.TextStrokeTransparency = 0.75

local openframe = Instance.new("Frame")
openframe.Size = UDim2.new(0, 68, 0, 42)
openframe.Position = UDim2.new(0, -1, 0, -1)
openframe.BackgroundColor3 = Color3.fromRGB(44, 59, 69)
openframe.Parent = open
openframe.ZIndex = 2

local cornerOpen = Instance.new("UICorner")
cornerOpen.CornerRadius = UDim.new(0, 4)
cornerOpen.Parent = open

local cornerOpenFrame = Instance.new("UICorner")
cornerOpenFrame.CornerRadius = UDim.new(0, 4)
cornerOpenFrame.Parent = openframe



--animation


local button = open -- Замените "script.Parent" на объект кнопки

button.AutoButtonColor = false -- Отключаем обычное изменение цвета при нажатии

local originalColor = button.BackgroundColor3 -- Сохраняем исходный цвет фона кнопки
local targetColor = Color3.fromRGB(131, 177, 209) -- Задаем целевой цвет фона (здесь зеленый)

local originalTextColor = button.TextColor3 -- Сохраняем исходный цвет текста кнопки
local targetTextColor = Color3.fromRGB(23, 32, 38) -- Задаем целевой цвет текста (здесь белый)

local duration = 0.15 -- Длительность анимации (в секундах)

local tweenService = game:GetService("TweenService")

local function animateColor()
    local colorTweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

    local colorTween = tweenService:Create(button, colorTweenInfo, {BackgroundColor3 = targetColor})
    colorTween:Play()

    local textColorTween = tweenService:Create(button, colorTweenInfo, {TextColor3 = targetTextColor})
    textColorTween:Play()

    wait(duration) -- Ждем окончания анимации и добавляем дополнительную секунду задержки

    local reverseColorTween = tweenService:Create(button, colorTweenInfo, {BackgroundColor3 = originalColor})
    reverseColorTween:Play()

    local reverseTextColorTween = tweenService:Create(button, colorTweenInfo, {TextColor3 = originalTextColor})
    reverseTextColorTween:Play()
end

button.MouseButton1Down:Connect(animateColor)





--animation


local button = clear -- Замените "script.Parent" на объект кнопки

button.AutoButtonColor = false -- Отключаем обычное изменение цвета при нажатии

local originalColor = button.BackgroundColor3 -- Сохраняем исходный цвет фона кнопки
local targetColor = Color3.fromRGB(131, 177, 209) -- Задаем целевой цвет фона (здесь зеленый)

local originalTextColor = button.TextColor3 -- Сохраняем исходный цвет текста кнопки
local targetTextColor = Color3.fromRGB(23, 32, 38) -- Задаем целевой цвет текста (здесь белый)

local duration = 0.15 -- Длительность анимации (в секундах)

local tweenService = game:GetService("TweenService")

local function animateColor()
    local colorTweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

    local colorTween = tweenService:Create(button, colorTweenInfo, {BackgroundColor3 = targetColor})
    colorTween:Play()

    local textColorTween = tweenService:Create(button, colorTweenInfo, {TextColor3 = targetTextColor})
    textColorTween:Play()

    wait(duration) -- Ждем окончания анимации и добавляем дополнительную секунду задержки

    local reverseColorTween = tweenService:Create(button, colorTweenInfo, {BackgroundColor3 = originalColor})
    reverseColorTween:Play()

    local reverseTextColorTween = tweenService:Create(button, colorTweenInfo, {TextColor3 = originalTextColor})
    reverseTextColorTween:Play()
end

button.MouseButton1Down:Connect(animateColor)




local save = Instance.new("TextButton")
save.Size = UDim2.new(0, 66, 0, 40)
save.Position = UDim2.new(0, 73, 0, 0)
save.BackgroundColor3 = Color3.fromRGB(23, 32, 38)
save.Text = "SAVE"
save.TextSize = 12
save.Font = "GothamMedium"
save.Parent = open
save.TextColor3 = Color3.fromRGB(131, 177, 209)
save.ZIndex = 3
save.TextStrokeColor3 = Color3.fromRGB(131, 177, 209)
save.TextStrokeTransparency = 0.75

local saveframe = Instance.new("Frame")
saveframe.Size = UDim2.new(0, 68, 0, 42)
saveframe.Position = UDim2.new(0, -1, 0, -1)
saveframe.BackgroundColor3 = Color3.fromRGB(44, 59, 69)
saveframe.Parent = save
saveframe.ZIndex = 2

local cornerSave = Instance.new("UICorner")
cornerSave.CornerRadius = UDim.new(0, 4)
cornerSave.Parent = save

local cornerSaveFrame = Instance.new("UICorner")
cornerSaveFrame.CornerRadius = UDim.new(0, 4)
cornerSaveFrame.Parent = saveframe


--animation


local button = save -- Замените "script.Parent" на объект кнопки

button.AutoButtonColor = false -- Отключаем обычное изменение цвета при нажатии

local originalColor = button.BackgroundColor3 -- Сохраняем исходный цвет фона кнопки
local targetColor = Color3.fromRGB(131, 177, 209) -- Задаем целевой цвет фона (здесь зеленый)

local originalTextColor = button.TextColor3 -- Сохраняем исходный цвет текста кнопки
local targetTextColor = Color3.fromRGB(23, 32, 38) -- Задаем целевой цвет текста (здесь белый)

local duration = 0.15 -- Длительность анимации (в секундах)

local tweenService = game:GetService("TweenService")

local function animateColor()
    local colorTweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

    local colorTween = tweenService:Create(button, colorTweenInfo, {BackgroundColor3 = targetColor})
    colorTween:Play()

    local textColorTween = tweenService:Create(button, colorTweenInfo, {TextColor3 = targetTextColor})
    textColorTween:Play()

    wait(duration) -- Ждем окончания анимации и добавляем дополнительную секунду задержки

    local reverseColorTween = tweenService:Create(button, colorTweenInfo, {BackgroundColor3 = originalColor})
    reverseColorTween:Play()

    local reverseTextColorTween = tweenService:Create(button, colorTweenInfo, {TextColor3 = originalTextColor})
    reverseTextColorTween:Play()
end

button.MouseButton1Down:Connect(animateColor)


local inject = Instance.new("TextButton")
inject.Size = UDim2.new(0, 66, 0, 40)
inject.Position = UDim2.new(1, -76, 0, 325)
inject.BackgroundColor3 = Color3.fromRGB(23, 32, 38)
inject.Text = "INJECT"
inject.TextSize = 12
inject.Font = "GothamMedium"
inject.Parent = mainframe
inject.TextColor3 = Color3.fromRGB(131, 177, 209)
inject.ZIndex = 3
inject.TextStrokeColor3 = Color3.fromRGB(131, 177, 209)
inject.TextStrokeTransparency = 0.75

local injectframe = Instance.new("Frame")
injectframe.Size = UDim2.new(0, 68, 0, 42)
injectframe.Position = UDim2.new(0, -1, 0, -1)
injectframe.BackgroundColor3 = Color3.fromRGB(44, 59, 69)
injectframe.Parent = inject
injectframe.ZIndex = 2

local cornerInject = Instance.new("UICorner")
cornerInject.CornerRadius = UDim.new(0, 4)
cornerInject.Parent = inject

local cornerInjectFrame = Instance.new("UICorner")
cornerInjectFrame.CornerRadius = UDim.new(0, 4)
cornerInjectFrame.Parent = injectframe


local button = inject

local soundId = "rbxassetid://5914602124" -- Замените это на идентификатор звукового файла
local sound = Instance.new("Sound")
sound.SoundId = soundId
sound.Parent = button

button.MouseButton1Click:Connect(function()
    sound:Play()
end)



--animation


local button = inject -- Замените "script.Parent" на объект кнопки

button.AutoButtonColor = false -- Отключаем обычное изменение цвета при нажатии

local originalColor = button.BackgroundColor3 -- Сохраняем исходный цвет фона кнопки
local targetColor = Color3.fromRGB(131, 177, 209) -- Задаем целевой цвет фона (здесь зеленый)

local originalTextColor = button.TextColor3 -- Сохраняем исходный цвет текста кнопки
local targetTextColor = Color3.fromRGB(23, 32, 38) -- Задаем целевой цвет текста (здесь белый)

local duration = 0.15 -- Длительность анимации (в секундах)

local tweenService = game:GetService("TweenService")

local function animateColor()
    local colorTweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

    local colorTween = tweenService:Create(button, colorTweenInfo, {BackgroundColor3 = targetColor})
    colorTween:Play()

    local textColorTween = tweenService:Create(button, colorTweenInfo, {TextColor3 = targetTextColor})
    textColorTween:Play()

    wait(duration) -- Ждем окончания анимации и добавляем дополнительную секунду задержки

    local reverseColorTween = tweenService:Create(button, colorTweenInfo, {BackgroundColor3 = originalColor})
    reverseColorTween:Play()

    local reverseTextColorTween = tweenService:Create(button, colorTweenInfo, {TextColor3 = originalTextColor})
    reverseTextColorTween:Play()
end

button.MouseButton1Down:Connect(animateColor)


local button5 = downPanelIcon -- Замените "script.Parent" на объект кнопки
button5.AutoButtonColor = false -- Отключаем обычное изменение цвета при нажатии
local originalColor = button5.BackgroundColor3 -- Сохраняем исходный цвет фона кнопки
local targetColor = Color3.fromRGB(44, 59, 69)
local duration = 0.15 -- Длительность анимации (в секундах)
local tweenService = game:GetService("TweenService")

local colorTweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local colorTween = tweenService:Create(button5, colorTweenInfo, {BackgroundColor3 = targetColor})
local reverseColorTween = tweenService:Create(button5, colorTweenInfo, {BackgroundColor3 = originalColor})
   
button5.MouseButton1Click:Connect(function()
    isMenuOpen = not isMenuOpen
    if isMenuOpen then
        colorTween:Play()
        game.CoreGui.DeltaGui_PcVersion.MainFrame.Visible = true
        
    else
        
        reverseColorTween:Play()
        game.CoreGui.DeltaGui_PcVersion.MainFrame.Visible = false
        
    end
end)


local button = script.Parent
local clickCount = 0

button.MouseButton1Click:Connect(function()
    clickCount = clickCount + 1
    
    if clickCount == 1 then
        local injection = Instance.new("Frame")
	injection.Size = UDim2.new(0, 264, 0, 100)
	injection.Position = UDim2.new(0.5, 0, 0.5, 0)
	injection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	injection.BorderSizePixel = 1
	injection.BorderColor3 = Color3.fromRGB(0, 0, 0)
	injection.Parent = screengui
	injection.AnchorPoint = Vector2.new(0.5, 0.5)


	local shadowInj = Instance.new("ImageLabel")
	shadowInj.Size = UDim2.new(1, 30, 1, 15)
	shadowInj.Position = UDim2.new(0, -15, 0, -7)
	shadowInj.Parent = injection
	shadowInj.Image = "rbxassetid://5028857084"
	shadowInj.ImageColor3 = Color3.fromRGB(0, 0, 0)
	shadowInj.BackgroundTransparency = 1
	shadowInj.ImageTransparency = 0.5


	local injection2 = Instance.new("Frame")
	injection2.Size = UDim2.new(1, 0, 0, 30)
	injection2.Position = UDim2.new(0, 0, 1, -30)
	injection2.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
	injection2.BorderSizePixel = 0
	injection2.Parent = injection

	local textInjection = Instance.new("TextLabel")
	textInjection.Size = UDim2.new(0, 200, 0, 20)
	textInjection.Position = UDim2.new(0, 7.5, 0, 2.5)
	textInjection.BackgroundTransparency = 1
	textInjection.Text = "Delta - Injection Result"
	textInjection.TextColor3 = Color3.fromRGB(0, 0, 0)
	textInjection.Parent = injection
	textInjection.Font = "SourceSans"
	textInjection.TextSize = 15
	textInjection.TextXAlignment = "Left"

	local textInInj = Instance.new("TextLabel")
	textInInj.Size = UDim2.new(0, 230, 0, 20)
	textInInj.Position = UDim2.new(0, 10, 0.5, -10)
	textInInj.BackgroundTransparency = 1
	textInInj.Text = "Successfully attached to Roblox!"
	textInInj.TextColor3 = Color3.fromRGB(0, 0, 0)
	textInInj.Parent = injection
	textInInj.Font = "SourceSans"
	textInInj.TextSize = 15
	textInInj.TextXAlignment = "Left"


	local closeInj = Instance.new("ImageButton")
	closeInj.Size = UDim2.new(0, 16, 0, 16)
	closeInj.Position = UDim2.new(1, -20, 0, 3)
	closeInj.Parent = injection
	closeInj.BackgroundTransparency = 1
	closeInj.ImageColor3 = Color3.fromRGB(0, 0, 0)
	closeInj.Image = "rbxassetid://3926305904"
	closeInj.ImageRectOffset = Vector2.new(284, 4)
	closeInj.ImageRectSize = Vector2.new(24, 24)


	local OK = Instance.new("Frame")
	OK.Size = UDim2.new(0, 70, 0, 20)
	OK.Position = UDim2.new(1, -80, 1, -25)
	OK.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
	OK.BorderSizePixel = 0
	OK.Parent = injection


	local OK1 = Instance.new("Frame")
	OK1.Size = UDim2.new(0, 68, 0, 18)
	OK1.Position = UDim2.new(0, 1, 0, 1)
	OK1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	OK1.BorderSizePixel = 0
	OK1.Parent = OK
	OK1.ZIndex = 2

	local OK2 = Instance.new("Frame")
	OK2.Size = UDim2.new(0, 67, 0, 17)
	OK2.Position = UDim2.new(0, 2, 0, 2)
	OK2.BackgroundColor3 = Color3.fromRGB(160, 160, 160)
	OK2.BorderSizePixel = 0
	OK2.Parent = OK
	OK2.ZIndex = 3

	local OK3 = Instance.new("Frame")
	OK3.Size = UDim2.new(0, 66, 0, 16)
	OK3.Position = UDim2.new(0, 2, 0, 2)
	OK3.BackgroundColor3 = Color3.fromRGB(227, 227, 227)
	OK3.BorderSizePixel = 0
	OK3.Parent = OK
	OK3.ZIndex = 4

	local OK4 = Instance.new("Frame")
	OK4.Size = UDim2.new(0, 65, 0, 15)
	OK4.Position = UDim2.new(0, 3, 0, 3)
	OK4.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
	OK4.BorderSizePixel = 0
	OK4.Parent = OK
	OK4.ZIndex = 5


	local OKbutton = Instance.new("TextButton")
	OKbutton.Size = UDim2.new(1, 0, 1, 0)
	OKbutton.Position = UDim2.new(0, 0, 0, 0)
	OKbutton.Text = "OK"
	OKbutton.Font = "SourceSans"
	OKbutton.BackgroundTransparency = 1
	OKbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
	OKbutton.ZIndex = 6
	OKbutton.Parent = OK
	OKbutton.TextSize = 12


	local button = OKbutton
	local frame1 = OK1
	local frame2 = OK2

	local originalColor1 = frame1.BackgroundColor3
	local originalColor2 = frame2.BackgroundColor3
		
	local clicked = false
	
	local function ChangeFrameColors()
	    frame1.BackgroundColor3 = Color3.fromRGB(160, 160, 160)
	    frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        
 	   wait(0.1)
        
  	  frame1.BackgroundColor3 = originalColor1
 	   frame2.BackgroundColor3 = originalColor2
	end

	button.MouseButton1Click:Connect(ChangeFrameColors)




	button.MouseButton1Click:Connect(function()
	    injected:Destroy()
	end)

	closeInj.MouseButton1Click:Connect(function()
        injected:Destroy()
    end)
    else
    	local injection = Instance.new("Frame")
	injection.Size = UDim2.new(0, 264, 0, 100)
	injection.Position = UDim2.new(0.5, 0, 0.5, 0)
	injection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	injection.BorderSizePixel = 1
	injection.BorderColor3 = Color3.fromRGB(0, 0, 0)
	injection.Parent = screengui
	injection.AnchorPoint = Vector2.new(0.5, 0.5)


	local shadowInj = Instance.new("ImageLabel")
	shadowInj.Size = UDim2.new(1, 30, 1, 15)
	shadowInj.Position = UDim2.new(0, -15, 0, -7)
	shadowInj.Parent = injection
	shadowInj.Image = "rbxassetid://5028857084"
	shadowInj.ImageColor3 = Color3.fromRGB(0, 0, 0)
	shadowInj.BackgroundTransparency = 1
	shadowInj.ImageTransparency = 0.5


	local injection2 = Instance.new("Frame")
	injection2.Size = UDim2.new(1, 0, 0, 30)
	injection2.Position = UDim2.new(0, 0, 1, -30)
	injection2.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
	injection2.BorderSizePixel = 0
	injection2.Parent = injection

	local textInjection = Instance.new("TextLabel")
	textInjection.Size = UDim2.new(0, 200, 0, 20)
	textInjection.Position = UDim2.new(0, 7.5, 0, 2.5)
	textInjection.BackgroundTransparency = 1
	textInjection.Text = "Delta - Injection Error"
	textInjection.TextColor3 = Color3.fromRGB(0, 0, 0)
	textInjection.Parent = injection
	textInjection.Font = "SourceSans"
	textInjection.TextSize = 15
	textInjection.TextXAlignment = "Left"

	local textInInj = Instance.new("TextLabel")
	textInInj.Size = UDim2.new(0, 230, 0, 20)
	textInInj.Position = UDim2.new(0, 10, 0.5, -10)
	textInInj.BackgroundTransparency = 1
	textInInj.Text = "You already attached to Roblox!"
	textInInj.TextColor3 = Color3.fromRGB(0, 0, 0)
	textInInj.Parent = injection
	textInInj.Font = "SourceSans"
	textInInj.TextSize = 15
	textInInj.TextXAlignment = "Left"


	local closeInj = Instance.new("ImageButton")
	closeInj.Size = UDim2.new(0, 16, 0, 16)
	closeInj.Position = UDim2.new(1, -20, 0, 3)
	closeInj.Parent = injection
	closeInj.BackgroundTransparency = 1
	closeInj.ImageColor3 = Color3.fromRGB(0, 0, 0)
	closeInj.Image = "rbxassetid://3926305904"
	closeInj.ImageRectOffset = Vector2.new(284, 4)
	closeInj.ImageRectSize = Vector2.new(24, 24)


	local OK = Instance.new("Frame")
	OK.Size = UDim2.new(0, 70, 0, 20)
	OK.Position = UDim2.new(1, -80, 1, -25)
	OK.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
	OK.BorderSizePixel = 0
	OK.Parent = injection


	local OK1 = Instance.new("Frame")
	OK1.Size = UDim2.new(0, 68, 0, 18)
	OK1.Position = UDim2.new(0, 1, 0, 1)
	OK1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	OK1.BorderSizePixel = 0
	OK1.Parent = OK
	OK1.ZIndex = 2

	local OK2 = Instance.new("Frame")
	OK2.Size = UDim2.new(0, 67, 0, 17)
	OK2.Position = UDim2.new(0, 2, 0, 2)
	OK2.BackgroundColor3 = Color3.fromRGB(160, 160, 160)
	OK2.BorderSizePixel = 0
	OK2.Parent = OK
	OK2.ZIndex = 3

	local OK3 = Instance.new("Frame")
	OK3.Size = UDim2.new(0, 66, 0, 16)
	OK3.Position = UDim2.new(0, 2, 0, 2)
	OK3.BackgroundColor3 = Color3.fromRGB(227, 227, 227)
	OK3.BorderSizePixel = 0
	OK3.Parent = OK
	OK3.ZIndex = 4

	local OK4 = Instance.new("Frame")
	OK4.Size = UDim2.new(0, 65, 0, 15)
	OK4.Position = UDim2.new(0, 3, 0, 3)
	OK4.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
	OK4.BorderSizePixel = 0
	OK4.Parent = OK
	OK4.ZIndex = 5


	local OKbutton = Instance.new("TextButton")
	OKbutton.Size = UDim2.new(1, 0, 1, 0)
	OKbutton.Position = UDim2.new(0, 0, 0, 0)
	OKbutton.Text = "OK"
	OKbutton.Font = "SourceSans"
	OKbutton.BackgroundTransparency = 1
	OKbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
	OKbutton.ZIndex = 6
	OKbutton.Parent = OK
	OKbutton.TextSize = 12


	local button = OKbutton
	local frame1 = OK1
	local frame2 = OK2

	local originalColor1 = frame1.BackgroundColor3
	local originalColor2 = frame2.BackgroundColor3
		
	local clicked = false
	
	local function ChangeFrameColors()
	    frame1.BackgroundColor3 = Color3.fromRGB(160, 160, 160)
	    frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        
 	   wait(0.1)
        
  	  frame1.BackgroundColor3 = originalColor1
 	   frame2.BackgroundColor3 = originalColor2
	end

	button.MouseButton1Click:Connect(ChangeFrameColors)




	button.MouseButton1Click:Connect(function()
	    injected:Destroy()
	end)

	closeInj.MouseButton1Click:Connect(function()
        injected:Destroy()
    end)
end






--[[
while wait(0.2) do
    scrollingframe.CanvasSize = UDim2.new(0, 500, 0, 1500)
end
]]