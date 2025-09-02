SECTION "Audio", ROMX

INCLUDE "audio/engine.asm"
INCLUDE "data/trainers/encounter_music.asm"
INCLUDE "audio/music_pointers.asm"
INCLUDE "audio/music/nothing.asm"
INCLUDE "audio/cry_pointers.asm"
INCLUDE "audio/sfx_pointers.asm"
INCLUDE "audio/ded.asm"
INCLUDE "audio/ded/files.asm"


SECTION "Songs 1", ROMX

INCLUDE "audio/music/route36.asm"
INCLUDE "audio/music/rivalbattle.asm"
INCLUDE "audio/music/rocketbattle.asm"
INCLUDE "audio/music/elmslab.asm"
INCLUDE "audio/music/darkcave.asm"
INCLUDE "audio/music/championbattle.asm"
INCLUDE "audio/music/ssaqua.asm"
INCLUDE "audio/music/newbarktown.asm"
INCLUDE "audio/music/goldenrodcity.asm"
INCLUDE "audio/music/vermilioncity.asm"
INCLUDE "audio/music/ruinsofalphinterior.asm"
INCLUDE "audio/music/lookpokemaniac.asm"
INCLUDE "audio/music/trainervictory.asm"


SECTION "Songs 2", ROMX

INCLUDE "audio/music/route1.asm"
INCLUDE "audio/music/route3.asm"
INCLUDE "audio/music/route12.asm"
INCLUDE "audio/music/kantogymbattle.asm"
INCLUDE "audio/music/kantowildbattle.asm"
INCLUDE "audio/music/pokemoncenter.asm"
INCLUDE "audio/music/looklass.asm"
INCLUDE "audio/music/lookofficer.asm"
INCLUDE "audio/music/route2.asm"
INCLUDE "audio/music/mtmoon.asm"
INCLUDE "audio/music/showmearound.asm"
INCLUDE "audio/music/gamecorner.asm"
INCLUDE "audio/music/bicycle.asm"
INCLUDE "audio/music/looksage.asm"
INCLUDE "audio/music/pokemonchannel.asm"
INCLUDE "audio/music/lighthouse.asm"
INCLUDE "audio/music/lakeofrage.asm"
INCLUDE "audio/music/indigoplateau.asm"
INCLUDE "audio/music/route37.asm"
INCLUDE "audio/music/rockethideout.asm"
INCLUDE "audio/music/dragonsden.asm"
INCLUDE "audio/music/ruinsofalphradio.asm"
INCLUDE "audio/music/lookbeauty.asm"
INCLUDE "audio/music/route26.asm"
INCLUDE "audio/music/ecruteakcity.asm"
INCLUDE "audio/music/lakeofragerocketradio.asm"
INCLUDE "audio/music/magnettrain.asm"
INCLUDE "audio/music/lavendertown.asm"
INCLUDE "audio/music/dancinghall.asm"
INCLUDE "audio/music/contestresults.asm"
INCLUDE "audio/music/route30.asm"


SECTION "Songs 3", ROMX

INCLUDE "audio/music/violetcity.asm"
INCLUDE "audio/music/route29.asm"
INCLUDE "audio/music/halloffame.asm"
INCLUDE "audio/music/healpokemon.asm"
INCLUDE "audio/music/evolution.asm"
INCLUDE "audio/music/printer.asm"
INCLUDE "audio/music/titlescreen.asm"
INCLUDE "audio/music/johtogymbattle.asm"


SECTION "Songs 4", ROMX

INCLUDE "audio/music/viridiancity.asm"
INCLUDE "audio/music/celadoncity.asm"

INCLUDE "audio/music/wildpokemonvictory.asm"
INCLUDE "audio/music/successfulcapture.asm"
assert BANK(Music_WildPokemonVictory) == BANK(Music_SuccessfulCapture)

INCLUDE "audio/music/gymleadervictory.asm"
INCLUDE "audio/music/mtmoonsquare.asm"
INCLUDE "audio/music/gym.asm"
INCLUDE "audio/music/pallettown.asm"
INCLUDE "audio/music/profoakspokemontalk.asm"
INCLUDE "audio/music/profoak.asm"

INCLUDE "audio/music/lookrival.asm"
INCLUDE "audio/music/aftertherivalfight.asm"
assert BANK(Music_LookRival) == BANK(Music_AfterTheRivalFight)

INCLUDE "audio/music/surf.asm"
INCLUDE "audio/music/nationalpark.asm"
INCLUDE "audio/music/azaleatown.asm"
INCLUDE "audio/music/cherrygrovecity.asm"
INCLUDE "audio/music/unioncave.asm"

INCLUDE "audio/music/johtowildbattle.asm"
INCLUDE "audio/music/johtowildbattlenight.asm"
assert BANK(Music_JohtoWildBattle) == BANK(Music_JohtoWildBattleNight)

INCLUDE "audio/music/johtotrainerbattle.asm"
INCLUDE "audio/music/lookyoungster.asm"
INCLUDE "audio/music/tintower.asm"
INCLUDE "audio/music/sprouttower.asm"
INCLUDE "audio/music/burnedtower.asm"
INCLUDE "audio/music/mom.asm"
INCLUDE "audio/music/victoryroad.asm"
INCLUDE "audio/music/pokemonlullaby.asm"
INCLUDE "audio/music/pokemonmarch.asm"
INCLUDE "audio/music/goldsilveropening.asm"
INCLUDE "audio/music/goldsilveropening2.asm"
INCLUDE "audio/music/lookhiker.asm"

INCLUDE "audio/music/lookrocket.asm"
INCLUDE "audio/music/rockettheme.asm"
assert BANK(Music_LookRocket) == BANK(Music_RocketTheme)

INCLUDE "audio/music/mainmenu.asm"
INCLUDE "audio/music/lookkimonogirl.asm"
INCLUDE "audio/music/pokeflutechannel.asm"
INCLUDE "audio/music/bugcatchingcontest.asm"


SECTION "Songs 5", ROMX

INCLUDE "audio/music/mobileadaptermenu.asm"
INCLUDE "audio/music/buenaspassword.asm"
INCLUDE "audio/music/lookmysticalman.asm"
INCLUDE "audio/music/battletowertheme.asm"
INCLUDE "audio/music/suicunebattle.asm"
INCLUDE "audio/music/battletowerlobby.asm"
INCLUDE "audio/music/mobilecenter.asm"


SECTION "Extra Songs 1", ROMX

INCLUDE "audio/music/credits.asm"
INCLUDE "audio/music/clair.asm"
INCLUDE "audio/music/mobileadapter.asm"


SECTION "Extra Songs 2", ROMX

INCLUDE "audio/music/postcredits.asm"
INCLUDE "audio/music/RBY/introbattle.asm"
INCLUDE "audio/music/Title/getbadge.asm"

SECTION "Songs Regen", ROMX

INCLUDE "audio/music/orange/tangelojungle.asm"
INCLUDE "audio/music/orange/crystalcave.asm"
INCLUDE "audio/music/orange/meetjessiejames.asm"
INCLUDE "audio/music/orange/rocketmotto.asm"
INCLUDE "audio/music/orange/pinkanisland.asm"
INCLUDE "audio/music/orange/pinkanislandnight.asm"
INCLUDE "audio/music/orange/imakunitheme.asm"
INCLUDE "audio/music/orange/traceybattle.asm"
INCLUDE "audio/music/orange/marshadowbattle.asm"
INCLUDE "audio/music/orange/PWTfinalorange.asm"

SECTION "Songs Regen 2", ROMX
INCLUDE "audio/music/orange/traceyencounter.asm"
INCLUDE "audio/music/orange/route69heh.asm"
INCLUDE "audio/music/orange/drakebattle.asm"
INCLUDE "audio/music/orange/ascorbiaisland.asm"
INCLUDE "audio/music/orange/route62.asm"
INCLUDE "audio/music/orange/earlyorangeroute.asm"
INCLUDE "audio/music/orange/crimsonroute.asm"
INCLUDE "audio/music/orange/starterorangeroute.asm"
INCLUDE "audio/music/orange/cityorange.asm"
INCLUDE "audio/music/orange/valenciatown.asm"
INCLUDE "audio/music/orange/cityorangenight.asm"
INCLUDE "audio/music/orange/routeorangeexnight.asm"
INCLUDE "audio/music/orange/starterorangeroutenight.asm"

SECTION "Songs Regen 3", ROMX


INCLUDE "audio/music/orange/looker.asm"
INCLUDE "audio/music/orange/orangeencounter.asm"
INCLUDE "audio/music/orange/crossencounter.asm"
INCLUDE "audio/music/orange/routeextra.asm"
INCLUDE "audio/music/Title/orange-title.asm"
INCLUDE "audio/music/Title/orange-title-part2.asm"
INCLUDE "audio/music/orange/squishy.asm"
INCLUDE "audio/music/orange/orangedive.asm"
INCLUDE "audio/music/orange/sm-legendred.asm"
INCLUDE "audio/music/orange/squishynight.asm"
INCLUDE "audio/music/orange/routeextranight.asm"

SECTION "Songs Monstarules", ROMX

INCLUDE "audio/music/orange/crossbattle.asm"
INCLUDE "audio/music/orange/orangewild.asm"
INCLUDE "audio/music/orange/lugiassong.asm"
INCLUDE "audio/music/orange/orangegymbattle.asm"
INCLUDE "audio/music/orange/orangetrainerbattle.asm"
INCLUDE "audio/music/orange/fourisland.asm"
INCLUDE "audio/music/orange/orangewildnight.asm"

SECTION "Songs Other", ROMX
INCLUDE "audio/music/orange/ridinglapras.asm" ;mmmm
INCLUDE "audio/music/rse/rspokemart.asm" ;mmmm
INCLUDE "audio/music/orange/route24gbs.asm"   ;TriteHexagon
INCLUDE "audio/music/orange/ranchtheme.asm"
INCLUDE "audio/music/hgss/cianwoodcity.asm" ;???
INCLUDE "audio/music/orange/rockethq.asm"
INCLUDE "audio/music/rse/slateportcity.asm" ;mmmm
INCLUDE "audio/music/Title/splash.asm" ;piacrt
INCLUDE "audio/music/orange/rocketboss.asm"
INCLUDE "audio/music/orange/sirdbattle.asm"
INCLUDE "audio/music/RBY/seviitrainerbattle.asm"
INCLUDE "audio/music/rse/slateportcitynight.asm"  ;mmmm


SECTION "Songs Other 2", ROMX
INCLUDE "audio/music/kantotrainerbattle.asm" ;updated by zumi
INCLUDE "audio/music/orange/wcsbattle.asm" ;zumi


SECTION "Sound Effects", ROMX

INCLUDE "audio/sfx.asm"


SECTION "Crystal Sound Effects", ROMX

INCLUDE "audio/sfx_crystal.asm"


SECTION "Cries", ROMX

INCLUDE "data/pokemon/cries.asm"

INCLUDE "audio/cries.asm"
