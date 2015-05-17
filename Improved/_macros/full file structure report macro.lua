
function each_file(rgd)
	function parse(i, v, lvl)
		if lvl == nil then lvl = 1 end
		local lvlstr = ""
		for i=0,lvl do
			lvlstr = lvlstr .. "    "
		end
		local t = type(v)
		if t == "table" or t == "userdata" then
			print(lvlstr.."["..i.."] = {");
			for j,w in v do
				parse(j, w, lvl+1)
			end
			print(lvlstr.."}");
		else
			print(lvlstr.."["..i.."] = "..tostring(v))
		end
	end
	
	print("["..rgd.path.."]")
	for i,v in rgd do
		parse(i, v, 1)
	end
end

function at_end()
end
