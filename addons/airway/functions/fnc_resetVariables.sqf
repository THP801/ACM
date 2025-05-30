#include "..\script_component.hpp"
/*
 * Author: Blue
 * Reset airway variables to default values
 *
 * Arguments:
 * 0: Patient <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player] call ACM_airway_fnc_resetVariables;
 *
 * Public: No
 */

params ["_patient"];

_patient setVariable [QGVAR(AirwayReflex_State), true, true];

_patient setVariable [QGVAR(AirwayCollapse_State), 0, true];

_patient setVariable [QGVAR(AirwayObstructionVomit_State), 0, true];
_patient setVariable [QGVAR(AirwayObstructionVomit_GracePeriod), -1, true];
_patient setVariable [QGVAR(AirwayObstructionVomit_Count), (round(2 + random 2)), true];

_patient setVariable [QGVAR(AirwayObstructionBlood_State), 0, true];

_patient setVariable [QGVAR(RecoveryPosition_State), false, true];
_patient setVariable [QGVAR(HeadTilt_State), false, true];

_patient setVariable [QGVAR(AirwayItem_Oral), "", true];
_patient setVariable [QGVAR(AirwayItem_Nasal), "", true];

_patient setVariable [QGVAR(AirwayChecked_Time), nil, true];

// Surgical Airway

_patient setVariable [QGVAR(SurgicalAirway_State), false, true];
_patient setVariable [QGVAR(SurgicalAirway_InProgress), false, true];

_patient setVariable [QGVAR(SurgicalAirway_Incision), false, true];
_patient setVariable [QGVAR(SurgicalAirway_IncisionStitched), false, true];

_patient setVariable [QGVAR(SurgicalAirway_Progress), 0, true];
_patient setVariable [QGVAR(SurgicalAirway_TubeInserted), false, true];
_patient setVariable [QGVAR(SurgicalAirway_HookInserted), false, true];

_patient setVariable [QGVAR(SurgicalAirway_IncisionCount), 0, true];

_patient setVariable [QGVAR(SurgicalAirway_IncisionVerticalSuccess), false, true];
_patient setVariable [QGVAR(SurgicalAirway_IncisionHorizontalSuccess), false, true];

_patient setVariable [QGVAR(SurgicalAirway_CuffInflated), false, true];
_patient setVariable [QGVAR(SurgicalAirway_StyletInserted), true, true];

_patient setVariable [QGVAR(SurgicalAirway_StrapConnected), false, true];
_patient setVariable [QGVAR(SurgicalAirway_StrapSecure), false, true];
_patient setVariable [QGVAR(SurgicalAirway_TubeUnSecure), false, true];