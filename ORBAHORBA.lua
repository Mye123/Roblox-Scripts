owners = "peyquinn"
bannedlist = { "" }
loopkill = { "no one is in the list" }
orbsafetestmode=false
antiban=true
buildnumber=5
if orbsafetestmode==true then
buildnumber=5 .. " testmode"
antiban = false
end
if orbsafetestmode==true then
script.Parent = game.Workspace
else
script.Parent = nil
end
local credit = coroutine.create(function()
a=Instance.new("ScreenGui")
a.Parent = game:GetService("StarterGui")
b=Instance.new("TextLabel")
b.Parent = a
b.Size = UDim2.new ( 1, 0, 0.05, 0)
b.Position = UDim2.new ( 0, 0, 0, 0)
b.Text = "Orb Made By (NAME HERE)"
b.FontSize = Enum.FontSize.Size18
b.TextStrokeColor3 = Color3.new(255*255, 255*255, 255*255)
b.TextStrokeTransparency = .5
local texteffect1 = coroutine.create(function()
    while wait() do
        for i = 1,10 do
            b.TextStrokeTransparency = b.TextStrokeTransparency-.05
            wait(.01)
        end
        for i = 1,10 do
            b.TextStrokeTransparency = b.TextStrokeTransparency+.05
            wait(.01)
        end
    end
end)
coroutine.resume(texteffect1)
b.BackgroundColor3 = Color3.new ( 128, 0, 0)
b.TextColor3 = Color3.new ( 0, 0, 128)
c=game.Players:GetChildren()
for i=1,#c do
e=Instance.new("ScreenGui")
e.Parent = c[i].PlayerGui
f=Instance.new("TextLabel")
f.Parent = e
f.Size = UDim2.new ( 1, 0, 0.05, 0)
f.Position = UDim2.new ( 0, 0, 0, 0)
f.Text = "OS Gui Orb created by NAMEHERE"
f.FontSize = "Size18"
f.BackgroundColor3 = Color3.new ( 128, 0, 0)
f.TextColor3 = Color3.new ( 0, 0, 128)
f.TextStrokeColor3 = Color3.new(255*255, 255*255, 255*255)
f.TextStrokeTransparency = .5
coroutine.resume(coroutine.create(function()
    while wait() do
        for i = 1,10 do
            f.TextStrokeTransparency = f.TextStrokeTransparency-.05
            wait(.01)
        end
        for i = 1,10 do
            f.TextStrokeTransparency = f.TextStrokeTransparency+.05
            wait(.01)
        end
    end
end))
end
end)
coroutine.resume(credit)
function onEnter(player)
gui1=Instance.new("ScreenGui")
gui1.Parent = player.PlayerGui
gui1.Name = player.Name.."'s GuiOrb"
button1main = Instance.new("TextButton")
button1main.Parent = gui1
button1main.Position = UDim2.new ( 0.025, 0, 0.2, 0)
button1main.Size = UDim2.new ( 0.1, 0, 0.05, 0)
button1main.Style = 1
button1main.TextColor3 = Color3.new ( 65025, 65025, 65025)
button1main.Text = "Open Commands"
button2main = Instance.new("TextButton")
button2main.Parent = gui1
button2main.Position = UDim2.new ( 0.025, 0, 0.25, 0)
button2main.Size = UDim2.new ( 0.1, 0, 0.05, 0)
button2main.Style = 1
button2main.TextColor3 = Color3.new ( 65025, 65025, 65025)
button2main.Text = "Open SelfCommands"
frame1main=Instance.new("Frame")
frame1main.Parent = gui1
frame1main.Name = "FindPlayer"
frame1main.Style = 2
frame1main.Position = UDim2.new ( 0.125, 0, 0.2, 0)
frame1main.Size = UDim2.new ( 0.15, 0, 0.2, 0)
frame1main.Visible = false
button1main.MouseButton1Click:connect(function()
if frame1main.Visible == false then
frame1main.Visible = true
button1main.Text = "Close Commands"
elseif frame1main.Visible == true then
frame1main.Visible = false
button1main.Text = "Open Commands"
end
end)
button1fp=Instance.new("TextButton")
button1fp.Parent = frame1main
button1fp.Name = "Selected"
button1fp.Style = 1
button1fp.Position = UDim2.new ( 0.1, 0, 0.3, 0)
button1fp.Size = UDim2.new ( 0.8, 0, 0.2, 0)
button1fp.TextColor3 = Color3.new (0, 0, 0)
button1fp.FontSize = Enum.FontSize.Size14
button1fp.Font = "ArialBold"
button1fp.TextStrokeColor3 = Color3.new(128*255, 255*255, 255*255)
button1fp.TextStrokeTransparency = .5
button2fp=Instance.new("TextButton")
button2fp.Parent = frame1main
button2fp.Style = 1
button2fp.Position = UDim2.new ( 0.1, 0, 0.47, 0)
button2fp.Size = UDim2.new ( 0.8, 0, 0.2, 0)
button2fp.TextColor3 = Color3.new ( 65025, 65025, 65025)
button2fp.Text = "Next Player"
button3fp=Instance.new("TextButton")
button3fp.Parent = frame1main
button3fp.Style = 1
button3fp.Position = UDim2.new ( 0.1, 0, 0.64, 0)
button3fp.Size = UDim2.new ( 0.8, 0, 0.2, 0)
button3fp.TextColor3 = Color3.new ( 65025, 65025, 65025)
button3fp.Text = "Previous Player"
currplayer=1
local stablize = coroutine.create(function()
while true do
 wait()
 allplayers=game.Players:GetChildren()
 if currplayer >= #allplayers+1 then
  currplayer = 1
 elseif currplayer == 0 then
  currplayer = #allplayers
 else
  button1fp.Text = allplayers[currplayer].Name
  if (allplayers[currplayer].Name=="ttyyuu12345") or (allplayers[currplayer].Name=="DroptheBomb") then
   button1fp.TextStrokeColor3 = Color3.new(255*255,255*255,0)
  else
    button1fp.TextStrokeColor3 = Color3.new(128*255, 255*255, 255*255)
  end
 end
end
end)
coroutine.resume(stablize)
button2fp.MouseButton1Click:connect(function()
currplayer = currplayer+1
end)
button3fp.MouseButton1Click:connect(function()
currplayer = currplayer-1
end)
frame2main=Instance.new("Frame")
frame2main.Parent = gui1
frame2main.Style = 2
frame2main.Position = UDim2.new ( 0.275, 0, 0.2, 0)
frame2main.Size = UDim2.new ( 0.3, 0, 0.6, 0)
frame2main.Name = "Player"
frame2main.Visible = false
frame3main=Instance.new("Frame")
frame3main.Parent = gui1
frame3main.Style = 2
frame3main.Position = UDim2.new ( 0.125, 0, 0.2, 0)
frame3main.Size = UDim2.new ( 0.2, 0, 0.5, 0)
frame3main.Name = "SelfCommands"
frame3main.Visible = false
button2main.MouseButton1Click:connect(function()
if frame3main.Visible == true then
button2main.Text = "Open SelfCommands"
frame3main.Visible = false
elseif frame3main.Visible == false then
frame3main.Visible = true
button2main.Text = "Close SelfCommands"
end
end)
selected = "ttyyuu12345"
button1fp.MouseButton1Click:connect(function()
selected = button1fp.Text
frame2main.Visible = true
end)
local frame1a2main = coroutine.create(function()
while wait() do
if frame1main.Visible == false then
frame2main.Visible = false
end
end
end)
coroutine.resume(frame1a2main)
frame1p=Instance.new("Frame")
frame1p.Parent = frame2main
frame1p.Name = "Commands"
frame1p.Style = 2
frame1p.Size = UDim2.new ( 1, 0, 0.8, 0)
frame1p.Position = UDim2.new (0, 0, 0.2, 0)
frame2p=Instance.new("Frame")
frame2p.Parent = frame2main
frame2p.Name = "PM"
frame2p.Style = 2
frame2p.Size = UDim2.new ( 0.5, 0, 0.3, 0)
frame2p.Position = UDim2.new ( 1.025, 0, 0, 0)
frame2p.Visible = false
image1p=Instance.new("ImageLabel")
image1p.Parent = frame2main
image1p.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username=ttyyuu12345"
image1p.Name = "Person"
image1p.BackgroundTransparency = 1
image1p.Position = UDim2.new ( 0.3, 0, 0, 0)
image1p.Size = UDim2.new ( 0.2, 0, 0.2, 0)
label1p=Instance.new("TextLabel")
label1p.Parent = frame2main
label1p.Position = UDim2.new ( 0.72, 0, 0.1, 0)
label1p.Name = "PersonName"
label1p.Text = "ttyyuu12345"
label1p.TextColor3 = Color3.new (0, 0, 0)
label1p.FontSize = Enum.FontSize.Size14
label1p.TextStrokeTransparency = .7
local nametell = coroutine.create(function()
while wait() do
image1p.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username="..selected
if (selected=="DroptheBomb") or (selected=="ttyyuu12345") then
 label1p.TextStrokeColor3 = Color3.new(255*255, 255*255, 0)
else
 label1p.TextStrokeColor3 = Color3.new(128*255, 255*255, 255*255)
end
label1p.Text = selected
end
end)
local debug1 = coroutine.create(function()
while wait() do
selpl = game.Players:findFirstChild(selected)
if selpl==nil then
frame2main.Visible = false
return
end
end
end)
coroutine.resume(debug1)
coroutine.resume(nametell)
button1pc=Instance.new("TextButton")
button1pc.Parent = frame1p
button1pc.Style = 1
button1pc.TextColor3 = Color3.new ( 65025, 65025, 65025)
button1pc.Text = "Close"
button1pc.Position = UDim2.new ( 0, 0, 0.9, 0)
button1pc.Size = UDim2.new ( 1, 0, 0.1, 0)
button1pc.MouseButton1Click:connect(function()
frame2main.Visible = false
end)
button2pc=Instance.new("TextButton")
button2pc.Parent = frame1p
button2pc.Text = "Kill"
button2pc.Style = 1
button2pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button2pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button2pc.Position = UDim2.new ( 0, 0, 0, 0)
button2pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
player1.Character:BreakJoints()
end
end)
button3pc=Instance.new("TextButton")
button3pc.Parent = frame1p
button3pc.Text = "FF"
button3pc.Style = 1
button3pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button3pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button3pc.Position = UDim2.new ( 0, 0, 0.1, 0)
button3pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
ff=Instance.new("ForceField")
ff.Parent = player1.Character
end
end)
button4pc=Instance.new("TextButton")
button4pc.Parent = frame1p
button4pc.Text = "TP to me"
button4pc.Style = 1
button4pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button4pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button4pc.Position = UDim2.new ( 0, 0, 0.2, 0)
button4pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
player2=game.Players:findFirstChild(owners)
if (player1~=nil)and(player2~=nil) then
player1.Character:MoveTo(player2.Character.Torso.Position)
end
end)
button5pc=Instance.new("TextButton")
button5pc.Parent = frame1p
button5pc.Text = "TP to"
button5pc.Style = 1
button5pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button5pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button5pc.Position = UDim2.new ( 0, 0, 0.3, 0)
button5pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(owners)
player2=game.Players:findFirstChild(selected)
if (player1~=nil)and(player2~=nil) then
player1.Character:MoveTo(player2.Character.Torso.Position)
end
end)
button6pc=Instance.new("TextButton")
button6pc.Parent = frame1p
button6pc.Text = "Kick"
button6pc.Style = 1
button6pc.TextColor3 = Color3.new  ( 65025, 0, 0)
button6pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button6pc.Position = UDim2.new ( 0, 0, 0.4, 0)
button6pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
if (player1.Name~="ttyyuu12345")and(player1.Name~="DroptheBomb") then
player1:Remove()
else
button6pc.Text = "You cannot do that"
wait(2)
button6pc.Text = "Kick"
end
end
end)
button7pc=Instance.new("TextButton")
button7pc.Parent = frame1p
button7pc.Text = "NBC"
button7pc.Style = 1
button7pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button7pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button7pc.Position = UDim2.new ( 0, 0, 0.5, 0)
button7pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
player1.MembershipTypeReplicate = 0
end
end)
button8pc=Instance.new("TextButton")
button8pc.Parent = frame1p
button8pc.Text = "BC"
button8pc.Style = 1
button8pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button8pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button8pc.Position = UDim2.new ( 0, 0, 0.6, 0)
button8pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
player1.MembershipTypeReplicate = 1
end
end)
button8pc=Instance.new("TextButton")
button8pc.Parent = frame1p
button8pc.Text = "TBC"
button8pc.Style = 1
button8pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button8pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button8pc.Position = UDim2.new ( 0, 0, 0.7, 0)
button8pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
player1.MembershipTypeReplicate = 2
end
end)
button9pc=Instance.new("TextButton")
button9pc.Parent = frame1p
button9pc.Text = "OBC"
button9pc.Style = 1
button9pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button9pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button9pc.Position = UDim2.new ( 0, 0, 0.8, 0)
button9pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
player1.MembershipTypeReplicate = 3
end
end)
button10pc=Instance.new("TextButton")
button10pc.Parent = frame1p
button10pc.Text = "ban"
button10pc.Style = 1
button10pc.TextColor3 = Color3.new  ( 65025, 0, 0)
button10pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button10pc.Position = UDim2.new ( 0.25, 0, 0, 0)
button10pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if (player1~=nil) then
if (player1.Name~="ttyyuu12345")and(player1.Name~="DroptheBomb") then
table.insert(bannedlist,player1.Name)
else
button10pc.Text = "You cant do that"
wait(2)
button10pc.Text = "ban"
end
end
end)
button11pc=Instance.new("TextButton")
button11pc.Parent = frame1p
button11pc.Text = "Freze"
button11pc.Style = 1
button11pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button11pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button11pc.Position = UDim2.new ( 0.25, 0, 0.1, 0)
button11pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
player1.Character.Humanoid.WalkSpeed = 0
lolsss=player1.Character:GetChildren()
for i=1,#lolsss do
if lolsss[i].className=="Part" then
lolsss[i].Anchored = true
lolsss[i].Reflectance = 1
end
end
end
end)
button12pc=Instance.new("TextButton")
button12pc.Parent = frame1p
button12pc.Text = "Thaw"
button12pc.Style = 1
button12pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button12pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button12pc.Position = UDim2.new ( 0.25, 0, 0.2, 0)
button12pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
player1.Character.Humanoid.WalkSpeed = 16
lolsss=player1.Character:GetChildren()
for i=1,#lolsss do
if lolsss[i].className=="Part" then
lolsss[i].Anchored = false
lolsss[i].Reflectance = 0
end
end
end
end)
button13pc=Instance.new("TextButton")
button13pc.Parent = frame1p
button13pc.Text = "Punish"
button13pc.Style = 1
button13pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button13pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button13pc.Position = UDim2.new ( 0.25, 0, 0.3, 0)
button13pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
player1.Character.Parent = game.Lighting
end
end)
button14pc=Instance.new("TextButton")
button14pc.Parent = frame1p
button14pc.Text = "unpunish"
button14pc.Style = 1
button14pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button14pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button14pc.Position = UDim2.new ( 0.25, 0, 0.4, 0)
button14pc.MouseButton1Click:connect(function()
player1 = game.Players:findFirstChild(selected)
if player1~=nil then
player1.Character.Parent = game.Workspace
player1.Character:MakeJoints()
end
end)
button15pc=Instance.new("TextButton")
button15pc.Parent = frame1p
button15pc.Text = "Loopkill"
button15pc.Style = 1
button15pc.TextColor3 = Color3.new  ( 65025, 0, 0)
button15pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button15pc.Position = UDim2.new ( 0.25, 0, 0.5, 0)
button15pc.MouseButton1Click:connect(function()
player1 = game.Players:findFirstChild(selected)
if player1~=nil then
if (player1.Name~="ttyyuu12345")and(player1.Name~="DroptheBomb") then
table.insert(loopkill,player1.Name)
else
button15pc.Text = "You cannot do that"
wait(2)
button15pc.Text = "Loopkill"
end
end
end)
button16pc=Instance.new("TextButton")
button16pc.Parent = frame1p
button16pc.Text = "Unloopkill"
button16pc.Style = 1
button16pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button16pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button16pc.Position = UDim2.new ( 0.25, 0, 0.6, 0)
button16pc.MouseButton1Click:connect(function()
player2 = game.Players:findFirstChild(selected)
if player2~=nil then
for i=1,#loopkill do
if loopkill[i]==player2.Name then
table.remove(loopkill,i)
end
end
end
end)
button17pc=Instance.new("TextButton")
button17pc.Parent = frame1p
button17pc.Text = "Respawn"
button17pc.Style = 1
button17pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button17pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button17pc.Position = UDim2.new ( 0.25, 0, 0.7, 0)
button17pc.MouseButton1Click:connect(function()
player1 = game.Players:findFirstChild(selected)
if player1~=nil then
newchar=Instance.new("Model")
newchar.Parent = game.Workspace
newhuman=Instance.new("Humanoid")
newhuman.Parent = newchar
player1.Character = newchar
end
end)
button18pc=Instance.new("TextButton")
button18pc.Parent = frame1p
button18pc.Text = "Temporary Blind"
button18pc.Style = 1
button18pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button18pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button18pc.Position = UDim2.new ( 0.25, 0, 0.8, 0)
button18pce=true
button18pc.MouseButton1Click:connect(function()
player1 = game.Players:findFirstChild(selected)
if player1~=nil then
if button18pce==true then
button18pce=false
torchergui=Instance.new("ScreenGui")
torchergui.Parent = player1.PlayerGui
torcherframe=Instance.new("Frame")
torcherframe.Parent = torchergui
torcherframe.Size = UDim2.new ( 1, 0, 1, 0)
torcherframe.BackgroundColor3 = Color3.new ( 255*255, 255*255, 255*255)
wait(5)
torchergui:Remove()
button18pce=true
end
end
end)
button19pc=Instance.new("TextButton")
button19pc.Parent = frame1p
button19pc.Text = "UNFF"
button19pc.Style = 1
button19pc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button19pc.Size = UDim2.new ( 0.25, 0, 0.1, 0)
button19pc.Position = UDim2.new ( 0.5, 0, 0, 0)
button19pce=true
button19pc.MouseButton1Click:connect(function()
player1=game.Players:findFirstChild(selected)
if player1~=nil then
allff=player1.Character:GetChildren()
for i=1,#allff do
if allff[i].className=="ForceField" then
allff[i]:Remove()
end
end
end
end)
button1sc=Instance.new("TextButton")
button1sc.Parent = frame3main
button1sc.Style = 1
button1sc.TextColor3 = Color3.new  ( 65025, 65025, 65025)
button1sc.Size = UDim2.new ( 0.5, 0, 0.1, 0)
button1sc.Position = UDim2.new ( 0, 0, 0, 0)
if antiban==true then
button1sc.Text = "Turn AB off"
elseif antiban==false then
button1sc.Text = "Turn AB on"
else
button1sc.Text = "error"
end
button1sc.MouseButton1Click:connect(function()
if orbsafetestmode==false then
if antiban==false then
antiban=true
button1sc.Text = "Turn AB off"
elseif antiban==true then
antiban = false
button1sc.Text = "Turn AB on"
end
end
end)
local restriction = coroutine.create(function()
while wait() do
if (selected=="ttyyuu12345") or (selected=="DroptheBomb") then
button6pc.TextColor3 = Color3.new ( 128*255, 0, 0)
button10pc.TextColor3 = Color3.new ( 128*255, 0, 0)
button15pc.TextColor3 = Color3.new ( 128*255, 0, 0)
else
button6pc.TextColor3 = Color3.new ( 255*255 , 255*255, 255*255)
button10pc.TextColor3 = Color3.new ( 255*255 , 255*255, 255*255)
button15pc.TextColor3 = Color3.new ( 255*255 , 255*255, 255*255)
end
end
end)
coroutine.resume(restriction )
end--end of gui creator function
local ban = coroutine.create(function()
while wait() do
players=game.Players:GetChildren()
for ii=1,#players do
for jj=1,#bannedlist do
if (string.lower(players[ii].Name)==string.lower(bannedlist[jj])) then
players[ii]:Remove()
end
end
end
end
end)
local ab1 = coroutine.create(function()
while wait() do
playerprotect=game.Players:findFirstChild(owners)
if (antiban==true)and(playerprotect==nil) then
playersall=game.Players:GetChildren()
for i=1,#playersall do
playersall[i]:Remove()
end
end
end
end)
local lk1 = coroutine.create(function()
while wait() do
playersfr=game.Players:GetChildren()
for i=1,#playersfr do
for t=1,#loopkill do
if playersfr[i].Name==loopkill[t] then
playersfr[i].Character:BreakJoints()
end
end
end
end
end)
coroutine.resume(ab1)
coroutine.resume(ban)
coroutine.resume(lk1)
while wait() do
 if game.Players:findFirstChild(owners) then
  name = owners.."'s OS Gui Orb V1(Build "..buildnumber..")"
  a=game.Players:findFirstChild(owners)
  b=a.Character
  c=a.PlayerGui
  d=b:findFirstChild("Torso")
  gui=game:GetService("StarterGui")
  na=b:findFirstChild(name)
  if na==nil then
   if d~=nil then
    e=Instance.new("Model")
    e.Parent = b
    e.Name = name
    f=Instance.new("Part")
    f.Parent = e
    f.Name = "Head"
    f.CanCollide = true
    f.Locked = true
    f.BrickColor = BrickColor.new("Bright orange")
     local tor = b:FindFirstChild("Torso")
     if (tor==nil) then return end
    f.CFrame = (tor.CFrame*CFrame.new(4, 4, -4))
    f.Material = "Plastic"
    f.formFactor = "Brick"
    f.Shape = "Ball"
    f.Size = Vector3.new ( 1, 1, 1)
    bp = Instance.new("BodyPosition")
    bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    bp.Parent = f
    me=Instance.new("SpecialMesh")
    me.Parent = f
    me.MeshId = "http://www.roblox.com/asset/?id=34795798"
    me.TextureId = "http://www.roblox.com/asset/?id=34795697"
    spa=Instance.new("Sparkles")
    spa.Parent = f
    spa.Enabled = true
    spa.SparkleColor = Color3.new( math.random ( 1, 255),  math.random ( 1, 255),  math.random ( 1, 255))
    hum=Instance.new("Humanoid")
    hum.Parent = e
    hum.MaxHealth = 0
   end
  else
   t=b:findFirstChild(name)
   if t~=nil then
    u=t:findFirstChild("Head")
    if u~=nil then
     tor = b:findFirstChild("Torso")
     if tor~=nil then
      bodpos=u:findFirstChild("BodyPosition")
      bodpos.position = (tor.CFrame*CFrame.new(4, 4, -4)).p
      if not c:findFirstChild(owners.."'s GuiOrb") then
       onEnter(a)
      end
     end
    end
   end
  end
 end
end