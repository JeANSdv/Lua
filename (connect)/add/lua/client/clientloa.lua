print('clientloa')

local notify={}

net.Receive('notify', function()
	local tbl = table.Copy(notify)
	table.Add(tbl, net.ReadTable())
	chat.AddText(unpack(tbl))
end)

hook.Add("ChatText", "hide_joinleave", function(index, name, text, typ)
	if ( typ == "joinleave" ) then return true end
end )