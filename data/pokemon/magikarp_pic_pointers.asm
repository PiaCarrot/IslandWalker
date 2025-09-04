MagikarpPicPointers::
; entries correspond to Magikarp patterns, two apiece
table_width 3 * 2
rept NUM_MAGIKARP
dba MagikarpFrontpic
dba MagikarpBackpic
endr
assert_table_length NUM_MAGIKARP
