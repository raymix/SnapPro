# ![alt text](https://dl.dropboxusercontent.com/u/14423790/snappro.png "Snap Building Pro")
___

## *Installation* `ver 1.3`

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
## Changelog
|Notes										|Date				|Version	|
| ------------------------------------------|:-----------------:| ---------:|
|Fixed defines, adjustable snap ranges		|23/07/2014			|1.3		|
|Anti-grief temporarily removed				|23/07/2014			|1.2.1		|
|CMD menus removed and pushed to a new repo	|21/07/2014			|1.2.0		|
|Snap point radius is now config based		|18/07/2014			|1.1.6		|
|Build range and anti-grief fix				|16/07/2014			|1.1.5		|
|Missing stairs with support in config		|14/07/2014			|1.1.4		|
|Code optimization, vault points added		|12/07/2014			|1.1.3		|
|Ghost fix for metal floor (GenCamoUGL)		|10/07/2014			|1.1.2		|
|CMD/Action menu toggle						|09/07/2014			|1.1.1		|
|CMD menu added	(mudzerelli)				|09/07/2014			|1.1.0		|
|Missing objects added						|07/07/2014			|1.0.1		|
|SBP release								|06/07/2014			|1.0.0		|