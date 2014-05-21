// F2 - OA Briefing
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// FACTION: TAKISTANI MILITIA

// ====================================================================================

// TASKS
// The code below creates tasks. A (commented-out) sample task is included.

// _task1 = player createSimpleTask ["OBJ_1"];
// _task1 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task1 setSimpleTaskDestination WAYPOINTLOCATION;
// _task1 setTaskState "Created";

// ====================================================================================

if ( isNil { targetZone } ) then { targetZone = 0 };

_targetName	= switch ( targetZone ) do {
				case 0: { "this area" };
				case 1: { "mountaintop outpost Baker" };
				case 2: { "valley overwatch Mike 1" };
				case 3: { "hill camp Kinno" };
				case 4: { "hill camp Mike 2" };
				case 5: { "hidden forest town Mandingara" };
				case 6: { "midvalley stronghold Hysad" };
				case 7: { "Ovallestan City" };
				case 8: { "river delta township Agresoran" };
				case 9: { "Plains mosque Mini-al-Malak" };
			};

// ====================================================================================


// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Made by Dogface.
<br/><br/>
Made with F2 (http://www.ferstaberinde.com/f2/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
We can leave the red area, but the British will win if they seize it.
<br/><br/>
We have cars with us.
<br/><br/>
Their LPPVs are tough and will take AT to destroy.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Kill the British without letting them seize the area.
<br/><br/>
MOVEMENT PLAN
<br/>
At commander's discretion.
<br/><br/>
FIRE SUPPORT PLAN
<br/>
There's no fire support available.
<br/><br/>
SPECIAL TASKS
<br/>
None.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
The British forces start <marker name='start'>here</marker> and will try to seize <marker name='target'>this area</marker>. Kill all of them.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation",format["
<br/>
Our raiding force recently captured an important strategic location: <marker name='mkrTarget'>%1</marker>. Now the British are coming back for it. 
<br/><br/>
ENEMY FORCES
<br/>
A motorized infantry detachment is on the way.
<br/><br/>
FRIENDLY FORCES
<br/>
No-one is nearby.
",_targetName]]];

// ====================================================================================