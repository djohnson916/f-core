--[[
Fax Core, made by FAXES
Change blacklisted weapons in config.lua, Do not edit this file unless you know what your doing.
]]
function ManageRestrictWeaps()
	local ped_l = PlayerPedId()

        if curAuthLvlRank < authLvlRank["Owner"] then
            for i = 1, #restrictedWeapsGen do
                local restrictedWeap = GetHashKey(restrictedWeapsGen[i])
                if HasPedGotWeapon(ped_l, rweap, false) then
                    RemoveWeaponFromPed(ped_l, restrictedWeap)
                    ShowInfo("~r~Restricted Weapon Model.")
                end
                local temp, currentWeap = GetCurrentPedWeapon(ped_l, true)
                if GetWeaponDamageType(currentWeap) == 5 then
                    RemoveWeaponFromPed(ped_l, currentWeap)
                    ShowInfo("~r~Restricted Weapon Model.")
                end
            end	
        end

		if curAuthLvlRank < authLvlRank["M3"] then
			for i = 1, #restrictedWeapsM3 do
				local restrictedWeap = GetHashKey(restrictedWeapsM3[i])
				if HasPedGotWeapon(ped_l, rweap, false) then
                    RemoveWeaponFromPed(ped_l, restrictedWeap)
                    ShowInfo("~r~Restricted Weapon Model.")
				end
				local temp, currentWeap = GetCurrentPedWeapon(ped_l, true)
				if GetWeaponDamageType(currentWeap) == 5 then
                    RemoveWeaponFromPed(ped_l, currentWeap)
                    ShowInfo("~r~Restricted Weapon Model.")
				end
			end
		end	

		if curAuthLvlRank < authLvlRank["M1"] then
			for i = 1, #restrictedWeapsM1 do
				local restrictedWeap = GetHashKey(restrictedWeapsM1[i])
				if HasPedGotWeapon(ped_l, restrictedWeap, false) then
                    RemoveWeaponFromPed(ped_l, restrictedWeap)
                    ShowInfo("~r~Restricted Weapon Model.")
				end
				local temp, currentWeap = GetCurrentPedWeapon(ped_l, true)
				if GetWeaponDamageType(currentWeap) == 5 then
                    RemoveWeaponFromPed(ped_l, currentWeap)
                    ShowInfo("~r~Restricted Weapon Model.")
				end
			end
		end
end

--[[
	List for weapon damage types.
	https://runtime.fivem.net/doc/reference.html#_0x3BE0BB12D25FB305
]]--
