# Bas Veeg Arc FPS - Windows Installation Guide

## For Your Classmates to Install and Play

---

## Quick Install (5 Minutes)

### Step 1: Download Xonotic
1. Go to: https://xonotic.org/download/
2. Download **Xonotic 0.8.6** (Windows ZIP)
3. Extract to `C:\Games\Xonotic\` (or anywhere you want)

### Step 2: Install the Mod
1. Download `BasVeegArc-v0.1.pk3` (send them this file)
2. Copy it to `C:\Games\Xonotic\data\`
3. Done!

### Step 3: Play
1. Run `xonotic.exe` (or `xonotic-wgl.exe` for older PCs)
2. Go to **Multiplayer** → **Create**
3. Select your character (one of the 13 classmates)
4. Start playing!

---

## LAN Party Setup

### On the Host PC:
1. Launch Xonotic
2. Click **Multiplayer** → **Create**
3. Select:
   - Game type: **Deathmatch** or **Team Deathmatch**
   - Map: **Afterslime** (good for 13 players)
   - Max players: **16**
   - Time limit: **15 minutes**
   - Frag limit: **50**
4. Click **Play**
5. Note your IP address:
   - Press `Windows Key + R`
   - Type: `cmd` and press Enter
   - Type: `ipconfig`
   - Look for "IPv4 Address" (e.g., `192.168.1.100`)
   - Tell everyone this IP address

### On Friend's PC:
1. Launch Xonotic
2. Click **Multiplayer** → **Server List**
3. Click **Search LAN** (if on same network)
   - OR -
4. Click **Address** → Enter host's IP → **Join**
5. Select your character
6. Play!

---

## Easy Distribution Package

To share with your classmates, create a folder with:

```
BasVeegArc-FPS/
├── BasVeegArc-v0.1.pk3  (the mod - 8.5MB)
├── INSTALL.txt (instructions)
└── Xonotic-0.8.6.zip (1.2GB - or tell them to download)
```

**INSTALL.txt content:**
```
HOW TO INSTALL:

1. Extract Xonotic-0.8.6.zip
2. Copy BasVeegArc-v0.1.pk3 to Xonotic\data\
3. Run xonotic.exe
4. Go to Multiplayer > Create
5. Choose your character!

CHARACTERS:
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

Have fun!
```

---

## Portable Installation (USB Drive)

To run from USB drive without installation:

1. Extract Xonotic to USB drive
2. Copy `BasVeegArc-v0.1.pk3` to `USB:\Xonotic\data\`
3. Plug USB into any PC
4. Run `xonotic-portable.exe` (if available) or `xonotic.exe`
5. Play!

Note: Performance may be slower from USB.

---

## Network Requirements

### For LAN (Same WiFi/Network):
- No internet needed
- All players on same network
- Automatic server discovery works
- Fastest, no lag

### For Online (Over Internet):
- Host needs to port forward
- Port: **26000** (UDP)
- Or use Hamachi/ZeroTier for virtual LAN

---

## System Requirements

**Minimum:**
- Windows 7 or newer
- 2 GB RAM
- Intel HD Graphics or better
- 2 GB disk space

**Recommended:**
- Windows 10/11
- 4 GB RAM
- Dedicated graphics card
- 3 GB disk space

---

## Troubleshooting

### "Characters don't show up"
- Make sure `BasVeegArc-v0.1.pk3` is in the `data` folder
- Restart Xonotic

### "Can't find friends' server"
- Make sure you're on the same WiFi network
- Try manually entering IP address
- Check Windows Firewall allows Xonotic

### "Game won't start"
- Try `xonotic-wgl.exe` instead of `xonotic.exe`
- Update graphics drivers
- Run as Administrator

### "Connection timeout"
- Host needs to add firewall exception
- Host might need to port forward (if not on LAN)

---

## Making it Even Faster

### Shared Folder Install (For School/LAN Party)
1. Install Xonotic on one PC
2. Share the folder over network
3. Everyone runs `\\PC-NAME\Xonotic\xonotic.exe`
4. All use same installation!

---

## Best Game Modes for 13 Players

1. **Team Deathmatch** - 6v7 teams
2. **Capture the Flag** - Strategic team play
3. **Clan Arena** - Round-based elimination
4. **Last Man Standing** - Battle royale style
5. **Keepaway** - Hold the ball longest

---

## Recommended Maps for Large Groups

- **Afterslime** - 12-16 players
- **Stormkeep** - 10-16 players
- **Warfare** - 12-20 players
- **Bloodrun** - 8-12 players (fast-paced)
- **Dance** - 8-12 players (close combat)

---

## Creating a Desktop Shortcut

1. Right-click `xonotic.exe`
2. Send to → Desktop (create shortcut)
3. Rename to "Bas Veeg Arc FPS"
4. Done!

---

## Auto-Join Server (For Friends)

Create a shortcut with:
```
"C:\Games\Xonotic\xonotic.exe" +connect 192.168.1.100
```
(Replace IP with host's IP)

Friends can double-click to auto-join your server!

---

## Next Version Features (Coming Soon)

- [ ] Unique textures for each character
- [ ] Custom abilities per character
- [ ] Voice lines
- [ ] Custom maps
- [ ] Character selection screen with portraits

---

## Sharing Tips

**USB Drive Distribution:**
1. Copy entire Xonotic folder to USB (1.5GB)
2. Add mod in data folder
3. Share USB with classmates
4. They can copy to their PC

**Cloud Distribution:**
1. Upload to Google Drive / OneDrive
2. Share link with classmates
3. They download and extract
4. Play!

**School Network:**
1. Put Xonotic on shared drive
2. Everyone copies to their PC
3. Host creates server
4. Everyone joins!

---

## Have Fun!

This mod was created in 1 day as a proof-of-concept.
More features coming in updates!

**Version:** 0.1 Alpha
**Characters:** 13
**Release Date:** 2025-11-13
