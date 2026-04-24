# BeamNG Mod: Infinite JATO Rocket Fuel

A BeamNG.drive mod that gives the JATO rocket booster a bottomless fuel tank so
you can thrust forever.

## What it changes

- Adds a new JATO part (`jato_infinite`) that fits the stock `jato` slot.
- Gives the booster a 9,999,999 L rocket fuel tank.
- Sets fuel consumption to zero by default (tunable via the in-game part tuning
  menu — `JATO Fuel Usage` and `JATO Thrust` sliders).
- Ships a tiny Lua controller that also refills the tank every frame, so even
  if you crank consumption up for show, it will never empty.

## Install

1. Zip the contents of `infinite_jato_fuel/` so that `vehicles/` and `lua/`
   are at the top of the archive (not nested inside an extra folder):

   ```bash
   cd beamng-mod/infinite_jato_fuel
   zip -r ../infinite_jato_fuel.zip .
   ```

2. Drop `infinite_jato_fuel.zip` into your BeamNG mods folder:

   - Windows: `%USERPROFILE%\AppData\Local\BeamNG.drive\<version>\mods\`
   - Linux (Proton): `~/.steam/steam/steamapps/compatdata/284160/pfx/drive_c/users/steamuser/AppData/Local/BeamNG.drive/<version>/mods/`

3. Launch BeamNG, spawn a vehicle that supports JATO, open the Parts
   Selector, and pick **JATO Rocket Booster (Infinite Fuel)** in the JATO slot.

## Tuning

In the Tuning menu under the JATO category you'll find:

- `JATO Fuel Usage` — 0 = infinite (default). Raise it and the Lua refill
  controller still keeps you topped off.
- `JATO Thrust` — peak thrust per booster in Newtons.

## Uninstall

Remove `infinite_jato_fuel.zip` from the mods folder.
