-- [ZENTURION RP/LEAKS]
-- https://discord.gg/KYSTsxj8Nb
-- https://discord.gg/3xea35p85X


local blips = {
-- Ej: {title="", colour=, id=, x=, y=, z=},
     {title="Bahama Mamas Club", colour=3, id=93, x = -1388.16, y = -591.28, z = 30.32},
   --{title="Marlowe Vineyard", colour=3, id=499, x = -1873.58, y = 2023.76, z = 138.83}
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
