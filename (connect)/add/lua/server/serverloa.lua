print('serverloa')

util.AddNetworkString('notify')

hook.Add('PlayerInitialSpawn', 'connectply', function(ply)
if !IsValid(ply) then return false end
	print('Player ', ply:Name() .. ' Присоединился')
	local SendText={Color(0, 0, 0), '[', Color(0, 5, 245), 'SERVER', Color(0, 0, 0), '] ', Color(200, 0, 0), ply:Name(), Color(0, 255, 0), ' Присоединился'}

	net.Start('notify')
		net.WriteTable(SendText)
	net.Broadcast()
end)


print('svEnd')