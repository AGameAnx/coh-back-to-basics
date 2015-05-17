-- This macro was NOT run yet
local exclude_files = {
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\anti_tank_gun\\flak36_88mm_arty.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\flak38_20mm_light_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\flak38_20mm_light_gun_m02.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\flak38_20mm_light_gun_sp_m07.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\flak38_wirblewind.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\flak_43_37mm_aa_ostwind_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\kwk38_20mm_light_armoured_car_gun.rgd",
}
function each_file(rgd)
	for i=1,table.getn(exclude_files) do
		if exclude_files[i] == rgd.path then
			return
		end
	end
	if rgd.GameData and rgd.GameData.weapon_bag then
		rgd.GameData.weapon_bag.damage.min = math.floor(rgd.GameData.weapon_bag.damage.min * 90)/100
		rgd.GameData.weapon_bag.damage.max = math.floor(rgd.GameData.weapon_bag.damage.max * 90)/100
		print("["..rgd.path.."] min:"..rgd.GameData.weapon_bag.damage.min.." max:"..rgd.GameData.weapon_bag.damage.max)
		--rgd:save()
	end
end

function at_end()
end
