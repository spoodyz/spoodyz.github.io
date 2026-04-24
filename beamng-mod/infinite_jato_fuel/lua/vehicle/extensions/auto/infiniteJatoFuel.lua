local M = {}

local function looksLikeJato(name, storage)
  if type(name) == "string" then
    local n = name:lower()
    if n:find("jato") or n:find("rocket") or n:find("thruster") then
      return true
    end
  end
  if type(storage) == "table" then
    local t = storage.energyType or storage.type or ""
    if type(t) == "string" then
      t = t:lower()
      if t:find("rocket") or t:find("jato") or t:find("thruster") then
        return true
      end
    end
  end
  return false
end

local function topUp(storage)
  if type(storage) ~= "table" then return end
  if storage.energyCapacity then
    storage.storedEnergy = storage.energyCapacity
  end
  if storage.capacity and storage.remainingVolume then
    storage.remainingVolume = storage.capacity
  end
  storage.currentLeakRate = 0
end

local function refillAll()
  if energyStorage == nil then return end
  local storages = energyStorage.storages
  if type(storages) == "table" then
    for name, s in pairs(storages) do
      if looksLikeJato(name, s) then topUp(s) end
    end
    return
  end
  if type(energyStorage.getStorage) == "function" then
    for _, n in ipairs({"jato_tank","jato","rocket_fuel","rocketFuel","jatoTank"}) do
      local s = energyStorage.getStorage(n)
      if s ~= nil then topUp(s) end
    end
  end
end

M.updateGFX = function(dt) refillAll() end
M.onReset   = function()   refillAll() end
M.onInit    = function()   refillAll() end

return M
