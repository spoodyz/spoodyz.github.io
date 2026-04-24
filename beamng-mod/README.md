# BeamNG Mod: Infinite JATO Rocket Fuel

A BeamNG.drive mod that gives the stock **JATO Liquid Fuel Rockets** body
accessory infinite fuel. No parts-menu changes required.

## How it works

The mod is a vehicle-side Lua auto-extension. On every spawned vehicle it
scans `energyStorage` each frame and, for any storage whose name or fuel
type contains `jato`, `rocket`, or `thruster`, it:

- resets `storedEnergy` to the tank's full capacity, and
- resets `remainingVolume` to the tank's capacity, and
- zeroes `currentLeakRate`.

Regular gasoline / diesel tanks are untouched.

## Install

1. Zip the contents of `infinite_jato_fuel/` so `lua/` and `info.json`
   are at the **top level** of the archive (not inside an extra folder):

   ```bash
   cd beamng-mod/infinite_jato_fuel
   zip -r ../infinite_jato_fuel.zip .
   ```

   Or just grab the prebuilt `beamng-mod/infinite_jato_fuel.zip`.

2. Drop `infinite_jato_fuel.zip` into the BeamNG mods folder:

   - Windows: `%USERPROFILE%\AppData\Local\BeamNG.drive\<version>\mods\`
   - Linux (Proton): `~/.steam/steam/steamapps/compatdata/284160/pfx/drive_c/users/steamuser/AppData/Local/BeamNG.drive/<version>/mods/`

3. Launch the game, spawn your vehicle, open **Parts → Body Accessory**
   and pick **JATO Liquid Fuel Rockets** as normal. Fire and forget.

## Uninstall

Delete `infinite_jato_fuel.zip` from the mods folder.
