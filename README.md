# Homebrew tap for Side Screen

Install [Side Screen](https://github.com/tranvuongquocdat/SideScreen) — use an
Android tablet as a low-latency second display for your Mac — via Homebrew:

```bash
brew tap tranvuongquocdat/sidescreen
brew install --cask --no-quarantine sidescreen
```

Recent Homebrew versions ask you to trust third-party taps once — confirm the
prompt, or run `brew trust tranvuongquocdat/sidescreen` first.

`--no-quarantine` skips Gatekeeper's quarantine flag (the app is not notarized
yet). If you installed without it and macOS blocks the first launch:

```bash
xattr -cr /Applications/SideScreen.app
```

Upgrade later with (`--no-quarantine` again — upgrades re-apply the flag):

```bash
brew upgrade --cask --no-quarantine sidescreen
```

The Android APK is on the [releases page](https://github.com/tranvuongquocdat/SideScreen/releases).
