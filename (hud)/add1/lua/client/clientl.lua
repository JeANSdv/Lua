print('clientl')
-- Отключение ориг худа
local function HUDHide(myhud)
	for k, v in pairs{'CHudHealth', 'CHudBattery', 'CHudAmmo', 'CHudSecondaryAmmo'} do
		if myhud==v then return false end
	end;
end;

hook.Add('HUDShouldDraw', 'hidehudlol', HUDHide) 

-- создание переменных xy, которые отвечаю за расположение худа + создание шрифта для текста
local x=50
local y=ScrH() -150
surface.CreateFont('fontforhud', {
	font='BudgetLabel',
	size=24,
	weight=800
} )

-- создание самого худа
local function JAHUD()
	local ply=LocalPlayer()
	local hp=ply:Health() or 0
	local maxhp=ply:GetMaxHealth() or 0
	local arm=ply:Armor() or 0
	local maxarm=ply:GetMaxArmor() or 0
	draw.RoundedBox(4, x, y, 200, 100, Color(255, 255, 255, 100)) --base
	draw.RoundedBox(4, x, y, 200, 50, Color(80, 0, 0, 180)) -- hplow
	draw.RoundedBox(4, x, y+50, 200, 50, Color(0, 0, 80, 180)) -- armlow
	if hp<=100 then
		draw.RoundedBox(4, x, y, math.Clamp(hp, 0, 200)*2, 50, Color(255, 0, 0, 255)) -- hp
	else
		draw.RoundedBox(4, x, y, 200, 50, Color(255, 0, 0, 255)) --hp
	end
	if arm<=100 then
		draw.RoundedBox(4, x, y+50, math.Clamp(arm, 0, 200)*2, 50, Color(0, 0, 255, 255)) -- arm
	else
		draw.RoundedBox(4, x, y+50, 200, 50, Color(0, 0, 255, 255))
	end
	draw.SimpleText('Health: ' .. hp .. '/' .. maxhp, 'fontforhud', x+15, y+10, Color(0, 0, 0, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP) --hp
	draw.SimpleText('Armor: ' .. arm .. '/' .. maxarm, 'fontforhud', x+15, y+60, Color(0, 0, 0, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP) --ar 
end

hook.Add('HUDPaint', 'jahud', JAHUD) 





