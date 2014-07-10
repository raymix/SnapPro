
if (!isDedicated) then {
    /* Use command menu instead of scroll menu? (default = false) */
    DZE_SNAP_PRO_USE_COMMAND_MENU = false;
    /* Should snapping be enabled by default for every item? (default = false) */
    DZE_SNAP_PRO_DEFAULT_SNAP_ON = false;

    DZE_SNAP_BUILD_NUMKEYS = [0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x0B];

    player_build = compile preprocessFileLineNumbers "custom\snap_pro\player_build.sqf";
    snap_build = compile preprocessFileLineNumbers "custom\snap_pro\snap_build.sqf";
    dayz_spaceInterrupt = compile preprocessFileLineNumbers "custom\snap_pro\dayz_spaceInterrupt.sqf";
};