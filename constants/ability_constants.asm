; Ability IDs for Pokémon abilities of Gen III
;
; Indexes for:
; - Ability Names        (see data/abilities/names.asm)
; - Ability Descriptions (see data/abilities/descriptions.asm)
; - Possible Abilities   (see data/pokemon/base_stats/*/*.asm)
; - Ability Effects      (- TODO -)
; - Ability Effects Text (- TODO -)
;
; For the sake of coding and ease of editing, similar abilities are grouped together
; Additional information is provided for several abilities here.

	const_def

; Prevents fleeing of certain pokemon, provided they do not have Run Away or a Smoke Ball. Also prevents switching out, except by added move effect.
	const NO_ABILITY  ; sentinel for lack of ability
	const ARENA_TRAP  ; ✔ Also doubles the overworld encounter rate if in the first slot
	const SHADOW_TAG  ; ✔ Only affects non-Ghost type Pokémon
	const MAGNET_PULL ; ✔ Only may affect Steel-type Pokémon. Also increases the overworld encounter rate of Steel-type Pokémon by 50% if in the first slot

; Stat boosting
; Boosts damage of specific moves in a "pinch" (1/3 or less max health)
	const BLAZE    ; ✔ Fire
	const OVERGROW ; ✔ Grass
	const TORRENT  ; ✔ Water
	const SWARM    ; ✔ Bug (THE OVERWORLD EFFECT OF INCREASING OVERWORLD CRIES IS NOT BEING IMPLEMENTED IN CSE)
	const PERSISTANCE ; ✔ Normal
	const OVERCHARGED ; ✔ Electric
	const DRAGOON ; ✔ Dragon
; Boosts stat upon status infliction
	const GUTS         ; ✔ Attack
	const MARVEL_SCALE ; ✔ Defense
    const TANGLED_FEET ; ✔
    const QUICK_FEET   ; ✔
	const TOXIC_BOOST  ; ✔
    const FLARE_BOOST  ; ✔ Boosts Special Attack when inflicted with a burn
    const STEADFAST ; ✔
; Passively boosts...
	const COMPOUNDEYES ; ✔ Accuracy by 30%. Also increases the rate of wild Pokémon holding an item by 50% if in the first slot
	const HUSTLE       ; ✔ Attack by 50%, but decreases accuracy of Physical moves by 20%. Also decreases the overworld encounter rate of wild Pokémon if in the first slot
	const HUGE_POWER   ; ✔ Doubles Attack
	const FUR_COAT     ; ✔ Doubles Defense
	const SPEED_BOOST  ; ✔ Speed at the end of the turn, until maxed out
	const PLUS         ; ✔ Sp Attack at the end of the turn, until maxed out
	const MINUS        ; ✔ Sp Defense at the end of the turn, until maxed out
	const BATTLE_BOND  ; ✔ Increases several stats upon KO

; Weather related
; Prevents the effects of the weather
	const CLOUD_NINE   ; ✔
; Boosts speed in weather conditions
	const CHLOROPHYLL  ; ✔ Sunlight
	const SWIFT_SWIM   ; ✔ Rain
; Changes type to match the weather
	const FORECAST ; UNUSED IN ORANGE
; Causes a specific weather condition
	const DROUGHT      ; ✔ Sunlight
	const DRIZZLE      ; ✔ Rain
	const SAND_STREAM  ; ✔ Sandstorm. Also halves the wild Pokémon encounter rate if in the first slot during an overworld sandstorm
    const SNOW_WARNING ; ✔ Hail
	const ELECTRIC_SURGE ; ✔
	const PSYCHIC_SURGE ; ✔
	const MISTY_SURGE ; ✔
	const GRASSY_SURGE ; ✔
; Boosts stats in weather
	const SAND_VEIL    ; ✔ Evasion by 20% during a sandstorm
    const SNOW_CLOAK ; ✔
    const FLOWER_GIFT
; Heals during weather
	const RAIN_DISH    ; ✔ Heals during rain

; Nullifies or weakens specific moves/move effects
; Nullifies...
	const CACOPHONY    ; ✔ Sound-based moves (THIS ABILITY IS UNUSED IN THE BASE GAMES - Grasswhistle, Growl, Heal Bell, Hyper Voice, Metal Sound, Perish Song, Sing, Sonicboom, Supersonic, Screech, Snore and Uproar)
	const SOUNDPROOF   ; ✔ Sound-based moves (Grasswhistle, Growl, Heal Bell, Hyper Voice, Metal Sound, Perish Song, Sing, Sonicboom, Supersonic, Screech, Snore and Uproar)
	const LEVITATE     ; ✔ Ground-type moves
	const WONDER_GUARD ; ✔ Non-super-effective moves
	const STURDY       ; ✔ One-hit KO moves
	const SUCTION_CUPS ; ✔ Roar and Whirlwind. Also increases capture rate of hooked wild Pokémon if in Battle X
	const DAMP         ; ✔ Selfdestruct and Explosion
; Entirely prevents any form of enemy inflicted stat reduction
	const CLEAR_BODY   ; ✔
	const WHITE_SMOKE  ; ✔ Also decreases the overworld encounter rate by 50% (UNUSED)
; Prevents specifically...
	const ROCK_HEAD    ; ✔ Recoil damage from moves, except from Struggle
	const BATTLE_ARMOR ; ✔ Critical hits - Monsta
	const SHELL_ARMOR  ; ✔ Critical hits - Monsta
	const INNER_FOCUS  ; ✔ Flinching
	const KEEN_EYE     ; ✔ Accuracy loss. Also decreases the encounter rate of lower-leveled wild Pokémon
	const HYPER_CUTTER ; ✔ Attack loss. Also increases the amount of grass removed when using Cut in the overworld
	const INSOMNIA     ; ✔ Sleep
	const VITAL_SPIRIT ; ✔ Sleep. Also decreases the overworld encounter rate of higher leveled Pokémon by 50% if in the first slot
	const IMMUNITY     ; ✔ Poisoning
	const LIMBER       ; ✔ Paralysis
	const WATER_VEIL   ; ✔ Burn
	const OBLIVIOUS    ; ✔ Infatuation and the moves Captivate and Taunt. Also Blocks Intimidate.
	const OWN_TEMPO    ; ✔ Confusion. Also Blocks Intimidate.
	const MAGMA_ARMOR  ; ✔ Freezing. Pokémon eggs will also hatch in half the time.
	const SHIELD_DUST  ; ✔ Added move effects
	const STICKY_HOLD  ; Item loss. Also increases capture rate of hooked wild Pokémon if in Battle (Holding off on this till more moves are done)
	const GOOD_AS_GOLD ; ✔ Status Moves
; Weakens...
	const THICK_FAT ; ✔ Fire-type and Ice-type moves by half

; Causes additional effects upon move usage
; Contact-based status effects (30% chance on contact)
	const CUTE_CHARM    ; ✔ Infatuation. Also increases the overworld encounter rate of Pokémon of the opposite gender by 67% if in the first slot
	const EFFECT_SPORE  ; ✔ Sleep, Paralysis or Poison (33% chance each)
	const FLAME_BODY    ; ✔ Burn. Pokémon eggs will also hatch in half the time.
	const POISON_POINT  ; ✔ Poisoning
	const STATIC        ; ✔ Paralysis. Also increases the overworld encounter rate of electric Pokémon by 50% if in the first slot
	const CURSED_BODY ; ✔
; Alters added move effects
	const LIQUID_OOZE   ; ✔ Damages Pokémon attempting to use life-sucking moves
	const SERENE_GRACE  ; ✔ Doubles the chance of added move effects
; Pokémon's type changes to match the last damaging move that it was hit by
	const COLOR_CHANGE  ; ✔
; Boosts power  of Fire-type moves upon being hit by one unless frozen or protected
	const FLASH_FIRE    ; ✔ Also provides complete immunity to Fire-type moves
; Synchronizes select status effects (Burn, Poisoning or Paralysis) if one is inflicted (it also can activate from the contact-based status effects)
	const SYNCHRONIZE   ; ✔ Has a 50% chance to force encountered Pokémon to share the same nature if in the first slot
; Draws the move to the ability holder
	const LIGHTNINGROD  ; ✔ Electric-type moves. Also increases the rate of telephone calls
; Heals up to 25% of max HP upon being hit by a damaging move of the...
	const VOLT_ABSORB   ; ✔ Electric-type
	const WATER_ABSORB  ; ✔ Water-type
; Damages Physical attackers by 1/16th of their max HP (1/8th is in Gen IV+)
    const ROUGH_SKIN    ; ✔

    const MOTOR_DRIVE ; ✔
    const STORM_DRAIN ; ✔
	const SAP_SIPPER ; ✔
	const RATTLED ; ✔


; Heals statuses...
; In-battle
	const SHED_SKIN  ; ✔ 33% chance to recover from major statuses (does not include Confusion or Infatuation)
	const EARLY_BIRD ; ✔ Wakes up from sleep 50% earlier
; Upon exiting the battle
	const NATURAL_CURE ; ✔

; Ability activates upon entrance
; Lowers...
	const INTIMIDATE ; ✔ Attack. Also reduces encounter rates of Pokémon at least 5 levels lower by 50%
; Copies the opponent's ability
	const TRACE ; ✔

; Doubles PP usage. Also halves the wild Pokémon encounter rate if in the first slot
	const PRESSURE ; ✔

; Allows the user to run away from any wild Pokémon battle without fail
	const RUN_AWAY ; ✔
	
; Transforms into foe
	const IMPOSTER ; Exclusive to Ditto and Mew ✔
	
; Boosts damage based on opponent's gender
    const RIVALRY ; ✔

; Purely has an overworld effect
; Doubles wild Pokémon encounter rate if in the first slot
	const ILLUMINATE ; ✔
; Halves wild Pokémon encounter rate if in the first slot
	const STENCH ; ✔
; Randomly may find an item after battle
	const PICKUP ; ✔
    const HONEY_GATHER ; ✔
	const POWER_OF_ALCHEMY ; ✔ no double battles so battle effect is irrelevant
; Evolution
	const COIN_COLLECTOR ; ✔ Possible evolution method for Gimmighoul, collects coins after battle. When 999 are obtained, it evolves. ✔
	
; Held item and Berry interactions
	const GLUTTONY		; Consumes its held Berry earlier than usual
	const UNNERVE		; Prevents opposing Pokémon from eating Berries
	const UNBURDEN	; Doubles Speed after the held item is used or lost
	const RIPEN		; Doubles the effect of a consumed Berry
	const CUD_CHEW	; Eats the same Berry again at the end of the turn
	const HARVEST	; May forage a Berry after battle

; Stat changes caused by battle events
	const ANGER_POINT	; Maxes Attack when struck by a critical hit
	const SIMPLE		; Doubles the magnitude of stat changes
	const CONTRARY	; Reverses all stat stage adjustments
	const COMPETITIVE	; Sharply raises Sp. Atk if a stat is lowered
	const DEFIANT	; Sharply raises Attack if a stat is lowered
	const WEAK_ARMOR	; Loses Defense but boosts Speed after a physical hit
	const WATER_COMPACTION	; Greatly raises Defense when hit by a Water move
	const DOWNLOAD	; Raises the better attacking stat on switch-in
	const MOXIE		; Raises Attack after knocking out a foe
	const BERSERK	; Raises Sp. Atk when HP drops below half
	const SUPREME_OVERLORD	; Powers up as party members faint

; Offensive move modifiers
	const IRON_FIST	; Boosts the power of punching moves
	const RECKLESS	; Boosts recoil moves despite the backlash
	const SHEER_FORCE	; Boosts moves at the cost of their added effects
	const ADAPTABILITY	; Increases same-type attack bonus damage
	const SKILL_LINK	; Ensures multi-hit moves strike the maximum times
	const TECHNICIAN	; Powers up moves with 60 base power or less
	const SNIPER		; Raises damage dealt by critical hits
	const SUPER_LUCK	; Makes landing critical hits easier
	const TINTED_LENS	; Powers up attacks that would be resisted
	const ANALYTIC	; Boosts moves used after the opponent acts
	const MERCILESS	; Guarantees critical hits on poisoned targets
	const STEELWORKER	; Strengthens the user's Steel-type attacks
	const MEGA_LAUNCHER	; Boosts aura and pulse moves
	const TOUGH_CLAWS	; Boosts the power of contact moves
	const SHARPNESS	; Strengthens slicing moves
	const MOLD_BREAKER	; Ignores abilities that would impede attacks
	const INFILTRATOR	; Lets attacks bypass substitutes and screens

; Type, form, and coverage adjustments
	const NORMALIZE	; Changes all moves to become Normal type
	const PROTEAN	; Changes the user’s type to match its move
	const PIXILATE	; Turns Normal-type moves into Fairy-type moves
	const GALVANIZE	; Turns Normal-type moves into Electric-type moves
	const SCRAPPY		; Lets Normal- and Fighting-type moves hit Ghosts
	const MIMICRY	; Changes type based on the current terrain
	const ILLUSION	; Appears as the last healthy party member until hit
	const STANCE_CHANGE	; Switches forms with attacking or defending moves
	const DISGUISE	; Blocks one damaging hit by breaking its disguise

; Weather, terrain, and environmental adaptation
	const DRY_SKIN	; Loses HP in sunlight but heals in rain or water
	const HYDRATION	; Cures status conditions while it is raining
	const SOLAR_POWER	; Boosts Sp. Atk in sunlight at the cost of HP
	const LEAF_GUARD	; Blocks status conditions during strong sunlight
	const SAND_RUSH	; ✔ Doubles Speed during a sandstorm
	const SLUSH_RUSH	; ✔ Doubles Speed during hail
	const SURGE_SURFER  ; ✔ Doubles Speed on Electric Terrain
	const ICE_BODY	; The Pokémon regains HP in a hailstorm.
	const OVERCOAT	; Immune to weather damage and powder moves
	const WIND_POWER	; Charges power when hit by wind-based moves
	const CRYSTAL_BODY	; Water type is not very effective, but Fire is super effective

; Status, recovery, and residual protection
	const POISON_HEAL	; Recovers HP instead of taking poison damage
	const MAGIC_GUARD	; Prevents indirect or residual damage
	const MAGIC_BOUNCE	; Reflects status moves back at the user
	const REGENERATOR	; Restores HP when withdrawing from battle
	const PASTEL_VEIL	; Prevents and cures poison for the party

; Status spreading and contact punishment
	const POISON_TOUCH	; ✔ May poison foes that make contact
	const CORROSION	; Can poison Steel- and Poison-type Pokémon
	const AFTERMATH	; Damages the foe if it is KO’d by contact
	const IRON_BARBS	; Damages attackers on contact
	const GOOEY		; Lowers the attacker’s Speed on contact
	const TANGLING_HAIR	; Harshly lowers Speed on contact
	const PERISH_BODY	; Applies a perish count if struck by contact
	const GULP_MISSILE	; Retaliates after Surf or Dive with stored prey

; Defensive resilience
	const FILTER		; Reduces damage from super-effective hits
	const SOLID_ROCK	; Reduces damage from super-effective hits
	const MULTISCALE	; Halves damage when at full HP
	const BULLETPROOF	; Immune to ball and bomb moves
	const ARMOR_TAIL	; Blocks enemy priority moves

; Awareness and field control
	const ANTICIPATION	; Shudders if the foe has threatening moves
	const FOREWARN	; Reveals the foe’s strongest known move
	const UNAWARE	; Ignores the foe’s stat changes in battle
	const FRISK		; Reveals the foe’s held item
	const SCREEN_CLEANER	; Removes protective screens upon entering battle
	const NEUTRALIZING_GAS	; Suppresses all other abilities while active
	const CURIOUS_MEDICINE	; Cures status conditions upon switch-in
	const SUPERSWEET_SYRUP	; Lowers opposing evasion on entry
	const STEELY_SPIRIT	; Strengthens the user's Steel-type attacks

; Speed and accuracy manipulation
	const QUICK_DRAW	; May move first regardless of Speed
	const NO_GUARD	; All moves used by or on the user will hit
	const MINDS_EYE	; Ignores accuracy drops and strikes Ghost-types

DEF NUM_ABILITIES EQU const_value - 1
