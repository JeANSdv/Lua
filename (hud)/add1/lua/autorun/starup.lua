if SERVER then
	include('server/serverl.lua') 
	AddCSLuaFile('client/clientl.lua') 
end;

if CLIENT then 
	include('client/clientl.lua')
end;

print('sturtup.lua')