
-- Blip ids: https://docs.fivem.net/docs/game-references/blips/
-- Blip colours: https://wiki.rage.mp/index.php?title=Blip::color

	local blips = {
		 {title="Prison", colour=1, id=252, x=1796.3, y=2602.9, z=45.6},
		 {title="State Bank", colour=2, id=374, x=259.5333, y=204.8372, z=106.2833},
		}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.8)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)

