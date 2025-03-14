; Maps that roaming monsters can be on, and possible maps they can jump to.
; Notably missing are Route 40 and Route 41, which are water routes.

MACRO roam_map
	map_id \1
	db _NARG - 1
	rept _NARG - 1
		map_id \2
		shift
	endr
	db 0
	DEF list_index += 1
ENDM

RoamMaps:
	list_start
	; start map, ...other maps
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	roam_map NONE, NONE
	assert_list_length NUM_ROAMMON_MAPS
	db -1 ; end
