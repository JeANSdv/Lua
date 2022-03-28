if SERVER then
	include('server/serverloa.lua') --Включение файлов на сервере
	AddCSLuaFile('client/clientloa.lua') --скачивание файла на клиент
	
	--[[ local files = file.Find('server/*.lua', 'LUA');
	table.foreach(files, function(key, gui)
		include('server/' .. gui))
	end
	
	local files = file.Find('client/*.lua', 'LUA');
	table.foreach(files, function(key, gui)
		AddCSLuaFile('client/' .. gui))
	end; ]]
end;

if CLIENT then 
	include('client/clientloa.lua')

	--[[ local files = file.Find('client/*.lua', 'LUA');
	table.foreach(files, function(key, gui)
		include('client/' .. gui))
	end; ]]
end;

print('startup');