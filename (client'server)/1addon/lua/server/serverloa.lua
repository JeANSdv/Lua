print('serverloa')

-- (1)
--[[ hook.Add('PlayerSay', 'playersayany'. function())
	print('1')
end; ]]

-- (2)
--[[ function plysay(ply, text)
	print('123')
	print(ply)
	print(text)
end;
hook.Add('PlayerSay', 'playersayany', plysay) ]]

-- (3)
--[[ function plysay()
	 ply:ChatPrint('hi')
end;
hook.Add('PlayerSay', 'playersayany', plysay) ]]

