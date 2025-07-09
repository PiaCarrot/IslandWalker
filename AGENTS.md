# AGENTS.md — CrystalShireEngine  
Guidelines for autonomous coding agents (OpenAI Codex, GitHub Copilot Agents, GPT‑4o agent mode, etc.).

> **Precedence**  This file sits at repo root. Its rules cover the entire tree unless a deeper `AGENTS.md` overrides them.

---

## 1  Project overview  *(for the agent’s mental model)*

| Aspect        | Details |
|---------------|---------|
| Domain        | Game Boy Color ROM‑hack engine (fork of pret/pokecrystal, extended for **16‑bit Pokémon/move/item indexes**) |
| Main languages| RGBDS SM83 assembly (primary), plus portable C & Python helpers in `/tools` and `/utils` |
| Build system  | GNU `make` (see `Makefile`) |
| Primary artefacts | `pokecrystal.gbc`, `pokecrystal_debug.gbc`, `pokecrystal.patch` |

---

## 2  Required build & self‑test workflow

Agents **must** execute these steps and **abort the PR** if any fails or reports warnings:

```bash
# 0 Toolchain
rgbasm -V || { echo "RGBDS missing"; exit 1; }

# 1 Full build (default target builds everything)
make -j$(nproc)

# 2 Optimization scan (peephole & jmp→jr suggestions)
python utils/optimize.py || { echo "Fix optimize.py warnings (esp. jmp→jr)"; exit 1; }
```

---

## 3  Commit / PR template

* **Title:** `feat(engine/ai): port Gen V AI weighting`
* **Body checklist**  
  - [ ] Linked issue / discussion  
  - [ ] `make` + `utils/optimize.py` pass locally with zero warnings  
  - [ ] All `jmp`‑macro warnings resolved (see § 5.2)  
  - [ ] Docs / comments updated if behaviour changed  
* **Never commit generated files** (`*.2bpp`, `*.sym`, `.map`, etc.).

---

## 4  Directory primer

| Path      | Contents                     | Typical edits |
|-----------|-----------------------------|---------------|
| `engine/` | Core gameplay logic         | Frequent |
| `gfx/`    | Source PNGs → compiled gfx  | Medium |
| `maps/`   | Map headers & events        | High |
| `tools/`  | Build / analysis helpers    | Medium |
| `utils/`  | Python optimisers & linters | Medium |
| `macros/` | Shared RGBDS macro library  | Careful! |

---

## 5  Coding & formatting style

### 5.1 Canon rules (verbatim from *pret/pokecrystal* `STYLE.md`)

#### Comments

```asm
; Use tabs for indentation, and spaces for alignment.
; When tabs get in the way of alignment, use spaces instead.

; Comments lead with spaces after the semicolon.

; 80 char soft limit. This isn't enforced, but you should try to keep lines from being any longer.
; rgbasm doesn't have newline escapes so there's no avoiding exceeding the limit for longer macros.

; capitalization and punctuation dont matter
; but it should be consistent with the surroundings

; Space out paragraphs with two newlines. Don't put ;s on blank lines.

; Code comments should be wrapped to whatever
; is most readable rather than what's closest
; to the 80 char limit.

; Especially since most code is going to be
; under 30 chars per line, including tabs.

; Comments should go above the code they're describing, not below, and not inline.
	ld a, [hl]
	add b
	ld [hl], a
	ret

; Avoid comments on the same line as instructions.
	cp 10
	jr c, .elsewhere ; don't do this

; If you have a larger comment and want to make
; a side note on a snippet of code:
	; You can indent the comment,
	; but each line should be shorter
	; and spaced away from the parent comment
	halt
	nop

; To comment out code, put the ; before the tab indent.
;	nop
	cp 10
;	jr c, .bye
	ret
```

#### Labels

```asm
; ROM Labels
PascalCase: ; label
PascalCase:: ; global label
.snake_case ; local jump
.PascalCase: ; an atomic chunk of code or data that's local
; don't define unused labels when a comment would do

; Labels are prefixed with lower case letters depending on location
wPascalCase: ; wram
sPascalCase: ; sram
vPascalCase: ; vram
hPascalCase: ; hram
PascalCase:  ; rom

; Some constants are also prefixed
DEF rBGP EQU $ff47 ; hardware register

; Most other constants should be upper case
DEF UPPER_CASE EQU 1

; Long lists of constants should be aligned
DEF SHORT_CONSTANT       EQU 1
DEF LONGER_CONSTANT      EQU 2
DEF PRETTY_LONG_CONSTANT EQU 3
DEF TINY                 EQU 4

DEF BUT_ONLY_RELATED_CONSTANTS EQU 5
```

#### Directives

```asm
; meta and high-level directives should be uppercase
SECTION "section", ROMX
INCLUDE "filename"
INCBIN "filename"
MACRO my_macro
	nop
ENDM
DEF TEST EQUS "test"
PURGE TEST
DEF TEST EQU 2

; data macros should be lowercase
	db 1
	dw 2
	my_macro SOME_CONSTANT
	; one exception is RGB
	RGB 31, 31, 31

; code macros are currently lowercase but this seems to be causing confusion with actual instructions
	ld b, TEST
	farcall DistantFunction
	ret

; the rest is up to you, just be consistent (prefer lowercase)
set X, 1
rept 10
	nop
endr
```

#### Macros

```asm
MACRO when_in_doubt_lowercase

; only shift if it's required or more readable
	; dont
	db \1
	shift
	db \1

	; do
rept 10
	db \1
	shift
endr

	; do
	db \1, \2, \3, \4, \5
	shift 5
	db \1, \2, \3, \4, \5

ENDM


MACRO UPPER_CASE_IS_OK_SOMETIMES

; but I can't think of any examples besides ACRONYMS
ENDM
```

### 5.2 CrystalShireEngine override — **`jmp` vs `jp`**

*Use the `jmp` macro instead of the raw `jp` instruction.*  
`jmp` functions identically to `jp` **but emits a warning if the jump target is within ±128 bytes and could therefore be replaced by the shorter two‑byte `jr`**.  
All `jmp` warnings **must be eliminated** (by changing to `jr` or restructuring code) before a PR is submitted.

---

## 6  16‑bit index system appendix

CrystalShireEngine inherits the **pokecrystal16** mechanism that maps 8‑bit IDs used by legacy code to true 16‑bit indexes stored in WRAM‑resident *conversion tables* (one each for Pokémon, moves, and items).

### 6.1 Key concepts
* **16‑bit index** – permanent identifier (0‑65535) for Pokémon, moves, items.  
* **8‑bit ID** – transient handle (1‑254) allocated on demand so classic routines remain unchanged.

### 6.2 Conversion tables
Each table is declared with the `wram_conversion_table` macro and auto‑generates bookkeeping fields (`UsedSlots`, `Entries`, `LockedEntries`, etc.). A sample Pokémon table:

```asm
DEF MON_TABLE_ENTRIES              EQU $40
DEF MON_TABLE_LOCKED_ENTRIES       EQU 4
DEF MON_TABLE_CACHE_SIZE           EQU 8
DEF MON_TABLE_MINIMUM_RESERVED_INDEX EQU $F0

SECTION "MonConversion", WRAM0[$D000]
    wram_conversion_table wPokemonIndexTable, MON_TABLE
```

### 6.3 Public helpers
These wrappers live in the home bank and must be used instead of manual table access:

```asm
; Pokémon
GetPokemonIndexFromID::  ___conversion_table_homecall read,  _GetPokemonIndexFromID
GetPokemonIDFromIndex::  ___conversion_table_homecall write, _GetPokemonIDFromIndex
LockPokemonID::          ___conversion_table_homecall lock,  _LockPokemonID
GetLockedPokemonID::     ___conversion_table_homecall_readlocked wPokemonIndexTable

; Moves
GetMoveIndexFromID::     ___conversion_table_homecall read,  _GetMoveIndexFromID
GetMoveIDFromIndex::     ___conversion_table_homecall write, _GetMoveIDFromIndex
LockMoveID::             ___conversion_table_homecall lock,  _LockMoveID
GetLockedMoveID::        ___conversion_table_homecall_readlocked wMoveIndexTable

; Items
GetItemIndexFromID::     ___conversion_table_homecall read,  _GetItemIndexFromID
GetItemIDFromIndex::     ___conversion_table_homecall write, _GetItemIDFromIndex
LockItemID::             ___conversion_table_homecall lock,  _LockItemID
GetLockedItemID::        ___conversion_table_homecall_readlocked wItemIndexTable
```

Utility shortcut:

```asm
; hl→a : 16‑bit item index → 8‑bit ID
GetItemIDFromHL::
    push hl
    ld   a, [hli]
    ld   h, [hl]
    ld   l, a
    call GetItemIDFromIndex
    pop  hl
    ret
```

### 6.4 Indirection tables
Large data blocks are paged via **indirection tables** so they can exceed a single bank size. Always add new blocks rather than extending ones that threaten to overflow.

---

## 7  Helper scripts available to agents

| Script / Tool           | Purpose |
|-------------------------|---------|
| `utils/optimize.py`     | Peephole optimiser & **`jmp`→`jr`** detector |

---

## 8  Conflict resolution

1. A deeper‑path `AGENTS.md` overrides this one for its subtree.  
2. Human reviewer instructions override any rule in this file.  

*Happy hacking — keep the boot screen green!*  
