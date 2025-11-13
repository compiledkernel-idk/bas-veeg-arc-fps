# How to Play Bas Veeg Arc - FPS Edition

## Installation Complete! ✓

Your mod is installed at: `Xonotic/data/BasVeegArc-v0.1.pk3`

---

## Selecting Your Character

### Method 1: In-Game Menu (Easiest)
1. Launch Xonotic
2. Go to **Multiplayer** → **Create**
3. Click on your player model preview
4. You should see the 13 new characters:
   - Bas Veeg
   - Berkay
   - Gefferinho
   - Hadi
   - Luca
   - Nitin
   - Yigit Baba
   - Fufinho
   - Efe abi
   - Jad
   - Umut
   - Keizer Bom Taha
   - Goon Lord Tobese

### Method 2: Console (Advanced)
1. Press `~` to open console
2. Type: `_cl_playermodel charactername`
3. Examples:
   ```
   _cl_playermodel bas
   _cl_playermodel berkay
   _cl_playermodel gefferinho
   ```

---

## Character Abilities (To Be Implemented)

Currently all characters use the same base stats. To add unique abilities:

### Option 1: Use Mutators
Xonotic has built-in mutators that modify gameplay:
- **Vampire** - Gain health on kills (good for Nitin - fire theme)
- **InstaGib** - One-hit kills (good for Luca - damage specialist)
- **Jetpack** - Flight ability (good for Taha - plane theme)
- **Buffs** - Random powerups (good for general variety)

### Option 2: Create Custom Configs
Create config files for each character that modify:
- `g_balance_health_start` - Starting health
- `sv_maxspeed` - Movement speed
- `g_weapondamagefactor` - Damage multiplier

---

## LAN Multiplayer Setup

### As Host (Server):
1. Launch Xonotic
2. Go to **Multiplayer** → **Create**
3. Select your character
4. Choose game mode:
   - **Deathmatch** - Free for all
   - **Team Deathmatch** - Team vs Team
   - **Capture the Flag** - Best for 13 players
5. Select map (recommended maps):
   - **Afterslime** - Medium arena
   - **Stormkeep** - Large fortress map
   - **Dance** - Fast-paced small map
6. Set:
   - Max players: 16
   - Bot fill: Off (or add bots if needed)
   - Time limit: 15-20 minutes
   - Frag limit: 50
7. Click **Play!**
8. Share your IP address with friends

### As Client (Joining):
1. Launch Xonotic
2. Go to **Multiplayer** → **Server Info**
3. Click **Address** and enter host's IP
4. Click **Join**
5. Select your character
6. Play!

### Finding LAN Games Automatically:
1. Go to **Multiplayer** → **Server List**
2. Click **Search LAN**
3. Servers on your local network will appear
4. Double-click to join

---

## Testing Your Characters

To test if characters loaded correctly:

1. Launch Xonotic
2. Open console (`~` key)
3. Type: `_cl_playermodel bas`
4. Start a local game
5. Look at your character - it should show "Bas Veeg" in the UI

Repeat for all 13 characters to verify they all work.

---

## Character Stat Balance (Recommended for Custom Configs)

Based on the original game abilities:

| Character | Speed | Damage | Health | Special |
|-----------|-------|--------|--------|---------|
| Bas | 1.0x | 1.2x | 100 | AOE grenades |
| Berkay | 1.0x | 2.2x | 135 | Damage boost |
| Gefferinho | 2.0x | 2.0x | 125 | Berserker |
| Hadi | 3.2x | 1.5x | 100 | Speed demon |
| Luca | 0.8x | 2.8x | 115 | Tank damage |
| Nitin | 1.0x | 1.0x | 100 | Fire DOT |
| Yigit Baba | 3.0x | 3.0x | 130 | Ultimate |
| Fufinho | 1.0x | 1.0x | 100 | Projectiles |
| Efe abi | 2.5x | 2.0x | 100 | Balanced |
| Jad | 2.2x | 2.5x | 100 | Fast attack |
| Umut | 1.0x | 2.3x | 100 | Damage boost |
| Taha | 1.0x | 1.0x | 100 | Airstrikes |
| Tobese | 1.8x | 1.6x | 140 | Tank |

---

## Troubleshooting

**Q: Characters don't appear in menu?**
A: Make sure `BasVeegArc-v0.1.pk3` is in `Xonotic/data/` folder

**Q: Game crashes when selecting character?**
A: Check console for errors. May need to regenerate .pk3 file

**Q: All characters look the same?**
A: This is normal for v0.1 - they use the same base model with different stats/names

**Q: How do I add custom textures?**
A: Edit the `.jpg` files in each character's folder and repackage the .pk3

**Q: LAN multiplayer not working?**
A: Make sure:
- All players on same network
- Firewall allows Xonotic
- Host has forwarded ports (if needed)
- Everyone has the same mod version

---

## Next Steps for Development

### Day 2 Goals:
- [ ] Create character-specific config files with abilities
- [ ] Add custom textures/colors for each character
- [ ] Set up dedicated server config
- [ ] Test all characters in LAN multiplayer

### Day 3 Goals:
- [ ] Fine-tune balance
- [ ] Create custom maps (optional)
- [ ] Package for Windows distribution
- [ ] Final testing and bug fixes

---

## Quick Reference: Console Commands

```bash
# Change character
_cl_playermodel bas

# Host server
map dance

# Show FPS
showfps 1

# Show player models
playermodel

# Restart map
restart

# Change team (in team games)
selectteam red
selectteam blue

# Toggle third-person view (to see your character)
chase_active 1
```

---

## File Structure

```
BasVeegArc-v0.1.pk3
└── models/
    └── player/
        ├── bas/
        │   ├── bas.iqm (model)
        │   ├── bas.iqm.framegroups (animations)
        │   ├── bas.iqm_0.txt (character info)
        │   ├── bas.iqm_0.skin (texture mapping)
        │   └── bas.iqm_0.jpg (texture)
        ├── berkay/
        ├── gefferinho/
        └── ... (13 total)
```

---

## Credits

- Original Game: Bas Veeg Arc (Rust/Macroquad)
- Mod Engine: Xonotic (GPL v3)
- Characters: Based on your classmates

Enjoy the game!
