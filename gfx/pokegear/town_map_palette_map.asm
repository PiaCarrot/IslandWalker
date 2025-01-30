	const_def
	const PAL_TOWNMAP_BORDER   ; 0
	const PAL_TOWNMAP_EARTH    ; 1
	const PAL_TOWNMAP_MOUNTAIN ; 2
	const PAL_TOWNMAP_CITY     ; 3
	const PAL_TOWNMAP_POI      ; 4
	const PAL_TOWNMAP_POI_MTN  ; 5

MACRO townmappals
	rept _NARG / 2
		dn PAL_TOWNMAP_\2, PAL_TOWNMAP_\1
		shift 2
	endr
ENDM

; gfx/pokegear/town_map.png
	townmappals EARTH,    EARTH,    EARTH,    MOUNTAIN, MOUNTAIN, MOUNTAIN, EARTH,   EARTH
	townmappals EARTH,    EARTH,    CITY,     EARTH,    POI,      POI_MTN,  CITY,      EARTH
	townmappals EARTH,    EARTH,    EARTH,    MOUNTAIN, MOUNTAIN, MOUNTAIN, EARTH,   EARTH
	townmappals EARTH,    EARTH,    EARTH,   BORDER,    EARTH,    EARTH,   EARTH,   EARTH
	townmappals EARTH,    EARTH,    EARTH,    MOUNTAIN, MOUNTAIN, MOUNTAIN, EARTH,   EARTH
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER
; gfx/pokegear/pokegear.png
	townmappals EARTH,   EARTH,   EARTH,   EARTH,   EARTH,      EARTH,      EARTH,      EARTH
	townmappals EARTH,   EARTH,   EARTH,   EARTH,   EARTH,   EARTH,   POI,   BORDER
	townmappals EARTH,     EARTH,     EARTH,     EARTH,     EARTH,     EARTH,     EARTH,     EARTH
	townmappals EARTH,     EARTH,     EARTH,     BORDER,     BORDER,     BORDER,     BORDER,     BORDER
	townmappals CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   EARTH,   EARTH
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER
