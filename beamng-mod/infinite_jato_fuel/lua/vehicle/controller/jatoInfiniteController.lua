local M = {}
M.type = "auxiliary"

local tankName = "jato_tank"

local function updateGFX(dt)
  local tank = energyStorage.getStorage(tankName)
  if tank ~= nil then
    tank.storedEnergy = tank.energyCapacity
    tank.remainingVolume = tank.capacity
    tank.currentLeakRate = 0
  end
end

local function init(jbeamData)
  if jbeamData and jbeamData.tankName then
    tankName = jbeamData.tankName
  end
end

M.init = init
M.updateGFX = updateGFX

return M
