if event.type == "digiline" then
	if event.channel == "withdraw" then
		port = {a = true, b = true, c = true, d = true}
	elseif (event.channel == "deposit") and mem.item then
		port = {a = false, b = false, c = false, d = false}
		for _=0,31,1 do digiline_send("d", mem.item .. " 99") end
	elseif event.channel == "set" then mem.item = event.msg end
end
