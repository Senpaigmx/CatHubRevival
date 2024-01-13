local Library = require(game.ReplicatedStorage.Library)

local GetSave = function()
    return require(game.ReplicatedStorage.Library.Client.Save).Get()
end

HugesAm = 0
for i, v in pairs(GetSave().Inventory.Pet) do
    local id = v.id
    local dir = Library.Directory.Pets[id]
    if dir.huge == true then
        HugesAm = HugesAm + 1
    end
end

if HugesAm == 1 or HugesAm >= 1 then
  print("Work")
  print(HugesAm)
elseif HugesAm == 0 or HugesAm <= 1 then
  print("Test Work")
  print(HugesAm)
end
