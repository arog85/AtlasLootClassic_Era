local ALName, ALPrivate = ...

local AtlasLoot = _G.AtlasLoot
local ContentPhase = {}
AtlasLoot.Data.ContentPhase = ContentPhase
local AL = AtlasLoot.Locales
local IMAGE_PATH = ALPrivate.IMAGE_PATH
local ACTIVE_PHASE = 6

--##START-DATA##
local PHASE_ITEMS = {
	[21184] = 6, 	[21185] = 6, 	[21186] = 6, 	[21189] = 6, 	[22224] = 6, 	[22352] = 6, 	[22353] = 6, 	[22354] = 6, 	[22355] = 6, 	[22356] = 6, 	[22357] = 6,
	[22358] = 6, 	[22359] = 6, 	[22360] = 6, 	[22361] = 6, 	[22362] = 6, 	[22363] = 6, 	[22364] = 6, 	[22365] = 6, 	[22366] = 6, 	[22367] = 6, 	[22368] = 6,
	[22369] = 6, 	[22370] = 6, 	[22371] = 6, 	[22372] = 6, 	[22416] = 6, 	[22417] = 6, 	[22418] = 6, 	[22419] = 6, 	[22420] = 6, 	[22421] = 6, 	[22422] = 6,
	[22423] = 6, 	[22424] = 6, 	[22425] = 6, 	[22426] = 6, 	[22427] = 6, 	[22428] = 6, 	[22429] = 6, 	[22430] = 6, 	[22431] = 6, 	[22436] = 6, 	[22437] = 6,
	[22438] = 6, 	[22439] = 6, 	[22440] = 6, 	[22441] = 6, 	[22442] = 6, 	[22443] = 6, 	[22464] = 6, 	[22465] = 6, 	[22466] = 6, 	[22467] = 6, 	[22468] = 6,
	[22469] = 6, 	[22470] = 6, 	[22471] = 6, 	[22476] = 6, 	[22477] = 6, 	[22478] = 6, 	[22479] = 6, 	[22480] = 6, 	[22481] = 6, 	[22482] = 6, 	[22483] = 6,
	[22484] = 6, 	[22488] = 6, 	[22489] = 6, 	[22490] = 6, 	[22491] = 6, 	[22492] = 6, 	[22493] = 6, 	[22494] = 6, 	[22495] = 6, 	[22496] = 6, 	[22497] = 6,
	[22498] = 6, 	[22499] = 6, 	[22500] = 6, 	[22501] = 6, 	[22502] = 6, 	[22503] = 6, 	[22504] = 6, 	[22505] = 6, 	[22506] = 6, 	[22507] = 6, 	[22508] = 6,
	[22509] = 6, 	[22510] = 6, 	[22511] = 6, 	[22512] = 6, 	[22513] = 6, 	[22514] = 6, 	[22515] = 6, 	[22516] = 6, 	[22517] = 6, 	[22518] = 6, 	[22519] = 6,
	[22520] = 6, 	[22525] = 6, 	[22527] = 6, 	[22529] = 6, 	[22589] = 6, 	[22600] = 6, 	[22601] = 6, 	[22602] = 6, 	[22603] = 6, 	[22604] = 6, 	[22605] = 6,
	[22606] = 6, 	[22607] = 6, 	[22608] = 6, 	[22609] = 6, 	[22610] = 6, 	[22611] = 6, 	[22612] = 6, 	[22613] = 6, 	[22614] = 6, 	[22615] = 6, 	[22616] = 6,
	[22617] = 6, 	[22618] = 6, 	[22619] = 6, 	[22620] = 6, 	[22621] = 6, 	[22622] = 6, 	[22623] = 6, 	[22624] = 6, 	[22625] = 6, 	[22626] = 6, 	[22630] = 6,
	[22631] = 6, 	[22632] = 6, 	[22635] = 6, 	[22636] = 6, 	[22638] = 6, 	[22651] = 6, 	[22652] = 6, 	[22654] = 6, 	[22655] = 6, 	[22656] = 6, 	[22657] = 6,
	[22658] = 6, 	[22659] = 6, 	[22660] = 6, 	[22661] = 6, 	[22662] = 6, 	[22663] = 6, 	[22664] = 6, 	[22665] = 6, 	[22666] = 6, 	[22667] = 6, 	[22668] = 6,
	[22669] = 6, 	[22670] = 6, 	[22671] = 6, 	[22672] = 6, 	[22673] = 6, 	[22676] = 6, 	[22678] = 6, 	[22679] = 6, 	[22680] = 6, 	[22681] = 6, 	[22682] = 6,
	[22683] = 6, 	[22684] = 6, 	[22685] = 6, 	[22686] = 6, 	[22687] = 6, 	[22688] = 6, 	[22689] = 6, 	[22690] = 6, 	[22691] = 6, 	[22692] = 6, 	[22694] = 6,
	[22695] = 6, 	[22696] = 6, 	[22697] = 6, 	[22698] = 6, 	[22699] = 6, 	[22700] = 6, 	[22701] = 6, 	[22702] = 6, 	[22703] = 6, 	[22704] = 6, 	[22705] = 6,
	[22707] = 6, 	[22712] = 4, 	[22713] = 4, 	[22715] = 4, 	[22725] = 6, 	[22726] = 6, 	[22727] = 6, 	[22733] = 6, 	[22734] = 6, 	[22736] = 6, 	[22737] = 6,
	[22740] = 6, 	[22741] = 6, 	[22742] = 6, 	[22743] = 6, 	[22744] = 6, 	[22745] = 6, 	[22747] = 6, 	[22748] = 6, 	[22749] = 6, 	[22750] = 6, 	[22752] = 6,
	[22753] = 6, 	[22756] = 6, 	[22757] = 6, 	[22758] = 6, 	[22759] = 6, 	[22760] = 6, 	[22761] = 6, 	[22762] = 6, 	[22763] = 6, 	[22764] = 6, 	[22766] = 6,
	[22767] = 6, 	[22768] = 6, 	[22769] = 6, 	[22770] = 6, 	[22771] = 6, 	[22772] = 6, 	[22773] = 6, 	[22774] = 6, 	[22798] = 6, 	[22799] = 6, 	[22800] = 6,
	[22801] = 6, 	[22802] = 6, 	[22803] = 6, 	[22804] = 6, 	[22806] = 6, 	[22807] = 6, 	[22808] = 6, 	[22809] = 6, 	[22810] = 6, 	[22811] = 6, 	[22812] = 6,
	[22813] = 6, 	[22815] = 6, 	[22816] = 6, 	[22818] = 6, 	[22819] = 6, 	[22820] = 6, 	[22821] = 6, 	[22890] = 6, 	[22891] = 6, 	[22897] = 6, 	[22935] = 6,
	[22936] = 6, 	[22937] = 6, 	[22938] = 6, 	[22939] = 6, 	[22940] = 6, 	[22941] = 6, 	[22942] = 6, 	[22943] = 6, 	[22947] = 6, 	[22954] = 6, 	[22960] = 6,
	[22961] = 6, 	[22967] = 6, 	[22968] = 6, 	[22981] = 6, 	[22983] = 6, 	[22988] = 6, 	[22994] = 6, 	[22999] = 6, 	[23000] = 6, 	[23001] = 6, 	[23004] = 6,
	[23005] = 6, 	[23006] = 6, 	[23009] = 6, 	[23014] = 6, 	[23017] = 6, 	[23018] = 6, 	[23019] = 6, 	[23020] = 6, 	[23021] = 6, 	[23023] = 6, 	[23025] = 6,
	[23027] = 6, 	[23028] = 6, 	[23029] = 6, 	[23030] = 6, 	[23031] = 6, 	[23032] = 6, 	[23033] = 6, 	[23035] = 6, 	[23036] = 6, 	[23037] = 6, 	[23038] = 6,
	[23039] = 6, 	[23040] = 6, 	[23041] = 6, 	[23042] = 6, 	[23043] = 6, 	[23044] = 6, 	[23045] = 6, 	[23046] = 6, 	[23047] = 6, 	[23048] = 6, 	[23049] = 6,
	[23050] = 6, 	[23053] = 6, 	[23054] = 6, 	[23056] = 6, 	[23057] = 6, 	[23059] = 6, 	[23060] = 6, 	[23061] = 6, 	[23062] = 6, 	[23063] = 6, 	[23064] = 6,
	[23065] = 6, 	[23066] = 6, 	[23067] = 6, 	[23068] = 6, 	[23069] = 6, 	[23070] = 6, 	[23071] = 6, 	[23073] = 6, 	[23075] = 6, 	[23078] = 6, 	[23081] = 6,
	[23082] = 6, 	[23084] = 6, 	[23085] = 6, 	[23087] = 6, 	[23088] = 6, 	[23089] = 6, 	[23090] = 6, 	[23091] = 6, 	[23092] = 6, 	[23093] = 6, 	[23124] = 6,
	[23125] = 6, 	[23126] = 6, 	[23127] = 6, 	[23128] = 6, 	[23129] = 6, 	[23132] = 6, 	[23139] = 6, 	[23156] = 6, 	[23168] = 6, 	[23169] = 6, 	[23170] = 6,
	[23171] = 6, 	[23173] = 6, 	[23177] = 6, 	[23178] = 6, 	[23206] = 6, 	[23207] = 6, 	[23219] = 6, 	[23220] = 6, 	[23221] = 6, 	[23226] = 6, 	[23237] = 6,
	[23238] = 6, 	[23242] = 6, 	[23320] = 6, 	[23323] = 0, 	[23324] = 0, 	[23545] = 6, 	[23548] = 6, 	[23577] = 6, 	[23663] = 6, 	[23664] = 6, 	[23665] = 6,
	[23666] = 6, 	[23667] = 6, 	[23668] = 6, 	[23705] = 6, 	[23709] = 6, 	[23714] = 6, 	[23716] = 6, 	[24101] = 6, 	[24102] = 6, 	[24222] = 6
}
--##END-DATA##
PHASE_ITEMS[0] = 0

local PHASE_TEXTURE_PATH = {
	[2] = IMAGE_PATH.."P2",
	[2.5] = IMAGE_PATH.."P2-5",
    [3] = IMAGE_PATH.."P3",
    [4] = IMAGE_PATH.."P4",
    [5] = IMAGE_PATH.."P5",
    [6] = IMAGE_PATH.."P6",
}

function ContentPhase:GetForItemID(itemID)
    return PHASE_ITEMS[itemID or 0], self:IsActive(PHASE_ITEMS[itemID or 0])
end

function ContentPhase:GetPhaseTexture(phase)
    return PHASE_TEXTURE_PATH[phase], self:IsActive(phase)
end

function ContentPhase:GetPhaseTextureForItemID(itemID)
    return PHASE_TEXTURE_PATH[PHASE_ITEMS[itemID or 0] or 0], self:IsActive(PHASE_ITEMS[itemID or 0])
end

function ContentPhase:GetActivePhase()
    return ACTIVE_PHASE
end

function ContentPhase:IsActive(phase)
    return (phase or 0) <= ACTIVE_PHASE
end
