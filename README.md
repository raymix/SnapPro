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
Open your **description.ext** (root of your MPMissions folder), add this to the very bottom:
```c++
#include "custom\snap_pro\snappoints.hpp"
```

Copy **snap_pro** folder inside your **custom** folder and you are done. Simple as that!

### Infistar Antihack
##### Newest Infistar AH (13/07/2014) comes with actions whitelisted by default

That's it , Congratulations, you are done!
---

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
