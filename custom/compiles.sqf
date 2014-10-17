
if (!isDedicated) then {
	player_build = compile preprocessFileLineNumbers "custom\snap_pro\player_build.sqf";
	snap_build = compile preprocessFileLineNumbers "custom\snap_pro\snap_build.sqf";
	F_KEY = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 33) then { DZE_F = true; }"];
};
