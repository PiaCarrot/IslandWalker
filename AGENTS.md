# AGENTS.md — CrystalShireEngine (bot-only, ultra-condensed)

**Domain** GBC ROM-hack (pokecrystal fork, 16-bit indexes)  
**Langs** RGBDS asm · C · Python  

----------------------------------------------------------------
## Workflow

```bash
# 1  Snapshot current optimiser warnings (do NOT fix yet)
python utils/optimize.py > .opt.old || true        # temp file, never commit

# 2  Toolchain + build
rgbasm -V || exit 1
make -j"$(nproc)"

# 3  Detect new optimiser warnings
python utils/optimize.py > .opt.new
diff -u .opt.old .opt.new && echo "OK"
```
*If `diff` shows new warnings, fix the affected code, repeat steps 2-3, then delete `.opt.*` before commit.*

----------------------------------------------------------------
## PR checklist
- Issue / discussion linked
- Build succeeds; **no new `optimize.py` warnings**
- All `jmp`→`jr` warnings resolved
- **Never commit** `.opt.old` / `.opt.new` (temp only)

----------------------------------------------------------------
## Style
- **Tabs for indent, spaces only for alignment** (unless existing code differs)  
- Follow pret/pokecrystal `STYLE.md`  
- Use **`jmp`** (not raw `jp`); replace with `jr` when target ±128 B

----------------------------------------------------------------
## 16-bit index helpers (call specs)

| Helper | Input | Output | Clobbers |
|--------|-------|--------|----------|
| `GetPokemonIndexFromID` | `a` | `hl` | `a` |
| `GetPokemonIDFromIndex` | `hl` | `a` | `hl` |
| `GetMoveIndexFromID`    | `a` | `hl` | `a` |
| `GetMoveIDFromIndex`    | `hl` | `a` | `hl` |
| `GetItemIndexFromID`    | `a` | `hl` | `a` |
| `GetItemIDFromIndex`    | `hl` | `a` | `hl` |

*Touch conversion tables **only through these helpers**.*

----------------------------------------------------------------
## Precedence
Deeper-path `AGENTS.md` > this file · Human reviewer instructions override all
