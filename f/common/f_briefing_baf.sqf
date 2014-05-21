// F2 - OA Briefing
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// FACTION: BRITISH ARMED FORCES

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
Assets:
<br/><br/>
Ridgeback LPPV - Like a big, tough humvee. CROWS HMG. Can't look up. Good lead vehicle.
<br/><br/>
3 x Foxhound LPPV w/ fireteam - Big tough van. 2 MMG hatches. Fast.
<br/><br/>
Jackal w/ support team (2 Engineers, 2 paramedics).
<br/><br/>
Jackal w/ CO.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
At commander's discretion.
<br/><br/>
MOVEMENT PLAN
<br/>
Each element has an armed vehicle with which to approach the target area.
<br/><br/>
FIRE SUPPORT PLAN
<br/>
No support is available.
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
We start <marker name='start'>here</marker>. Seize <marker name='target'>this area</marker>, or neutralize all enemy forces.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_briefingText	= format ["
<br/>
A TK Militia raiding force has occupied <marker name='target'>%1</marker>. We're taking it back.
<br/><br/>
ENEMY FORCES
<br/>
The main force has withdrawn but some rearguard troops remain. Expect light troops with some AT equipment.
<br/><br/>
FRIENDLY FORCES
<br/>
It's just us and the mountain.
",_targetName];

_sit = player createDiaryRecord ["diary", ["Situation",_briefingText]];

// ====================================================================================