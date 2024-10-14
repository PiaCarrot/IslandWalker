; std scripts associated with tile collisions

MACRO stdcoll
	db \1
	dw (\2StdScript - StdScripts) / 3
ENDM

TileCollisionStdScripts:
	; collision type, std script
	stdcoll COLL_BOOKSHELF,      MagazineBookshelfScript
	stdcoll COLL_PC,             PCScript
	stdcoll COLL_RADIO,          Radio1Script
	stdcoll COLL_TOWN_MAP,       TownMapScript
	stdcoll COLL_MART_SHELF,     MerchandiseShelfScript
	stdcoll COLL_TV,             TVScript
	stdcoll COLL_WINDOW,         WindowScript
	stdcoll COLL_PERSIAN_STATUE, PersianStatueScript
	stdcoll COLL_PC_2F_SIGN,     Pokecenter2FSignScript
	stdcoll COLL_SINISTER_MACHINE,     SinisterMachineSignScript
	db -1 ; end
