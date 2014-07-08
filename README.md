# ![alt text](https://dl.dropboxusercontent.com/u/14423790/snappro.png "Snap Building Pro")
___

## *Installation*

Create and add new **compiles.sqf** file (you can reuse an old one if you already have it) and add this to **init.sqf** file:

Find:
```c++
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";	
```

Add this line right after, like so:
```c++
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";				//Compile regular functions
call compile preprocessFileLineNumbers "custom\compiles.sqf";							 //Compile custom compiles
```

**compiles.sqf** can be either found in project folder here on github or you can just create new file and add these lines:

```c++
if (!isDedicated) then {
	player_build = compile preprocessFileLineNumbers "custom\snap_pro\player_build.sqf";
	snap_build = compile preprocessFileLineNumbers "custom\snap_pro\snap_build.sqf";
	dayz_spaceInterrupt = compile preprocessFileLineNumbers "custom\snap_pro\dayz_spaceInterrupt.sqf";
};
```

Copy **snap_pro** folder inside your **custom** folder and you are done. Simple as that!

Open your **description.ext** (root of your MPMissions folder), add this to the very bottom:
```c++
#include "custom\snap_pro\snappoints.hpp"
```

### Infistar Antihack (07/07/2014 - AH0332A)
Open your **AHconfig.sqf** and find:
```c++
_dayzActions =
```
add these actions to it, like this:
```c++
/*  ALLOWED Actions      */ _dayzActions =
[
	"s_player_toggleSnap","s_player_toggleSnapSelect","s_player_toggleSnapSelectPoint",
	// rest of infistar code here
```
That's it , Congratulations, you are done!
---

### (Previous versions of Infistar Antihack 04/07/2014)
If you haven't updated Infistar AH yet, you will need to whitelist these actions:

Open your **AHconfig.sqf** and down at the bottom find **ALLOWED Actions** part. You will need to add 2 static actions and an array of actions, so **PLEASE** follow this carefully:

On very top of the list whitelist snap actions add:
```c++
/*  ALLOWED Actions      */ _dayzActions =
"([
	s_player_toggleSnap, s_player_toggleSnapSelect,
	// Rest of Infistar code here!
```
Scroll down to the bottom of this array and add this right after `+ s_vehicle_lockunlock` :
```c++
+ s_player_toggleSnapSelectPoint)";
```

###### (Optional)

To disable tutorial text on bottom-right corner, add this to your **init.sqf**:
```c++
snapTutorial = false;
```

To only show tutorial text once (per log-in), add this right before closing bracket in line #236 in *snap_build.sqf*:

```c++
				] spawn bis_fnc_dynamicText;
			};
		};
	snapTutorial = false;	
};
```
