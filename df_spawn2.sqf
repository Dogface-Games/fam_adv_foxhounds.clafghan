IF ( !isServer ) exitwith {};

targetZone		= paramsarray select 5;						// Number 0-9

if ( targetZone == 0 ) THEN { targetZone = ceil random 9 };		// 0 = "Random"

// targetZone:
//	1: { "mountaintop outpost Baker" };
//	2: { "valley overwatch Mike 1" };
//	3: { "hill camp Kinno" };
//	4: { "hill camp Mike 2" };
//	5: { "hidden forest town Mandingara" };
//	6: { "midvalley stronghold Hysad" };
//	7: { "Ovallestan City" };
//	8: { "river delta township Agresoran" };
//	9: { "Prozakhar Airport" };

_triggerName	= format ["trig_%1",targetZone];			// Move red rectangle to cover the relevant trigger (marks the seize area)
_triggerPos		= markerPos _triggerName;
_triggerDir		= markerDir _triggerName;

"target" setMarkerPos _triggerPos;
"target" setMarkerDir _triggerDir;

_startName			= format ["start_%1",targetZone];			// Move BAF start marker as well
_startPos			= markerPos _startName;

"start" setMarkerPos _startPos;

_vehsArr	=		[vehBAF_A,								// List of vehicles to move
				vehBAF_B,
				vehBAF_C,
				vehBAF_D,
				vehBAF_E,
				vehBAF_F,
				vehINS_A,				
				vehINS_B,	
				vehINS_C,	
				vehINS_D,	
				vehINS_E,	
				vehINS_F,	
				vehINS_G					
				];
								
{													// For each entry in that array..
	_markerName	= format ["%1_%2", _x, targetZone];			// Find the right marker
	_markerPos		= markerPos _markerName;
	_markerDir		= markerDir _markerName;

	_x setPos _markerPos;									// Move vehicle there
	_x setDir _markerDir;
} forEach _vehsArr;


	
