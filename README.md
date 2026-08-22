# homebrew-tap

Homebrew casks for my macOS apps.

```sh
brew tap piro0919/tap
brew install --cask mac-classic-player
```

All of them are free, open source, and Apple Silicon only.

| Cask | What it is | Source |
| --- | --- | --- |
| `chappie` | Hands-free voice AI assistant in the menu bar | [chappie](https://github.com/piro0919/chappie) |
| `galopen` | Opens meeting URLs from your calendar | [galopen](https://github.com/piro0919/galopen) |
| `gocci` | Mounts Google Drive in Finder | [gocci](https://github.com/piro0919/gocci) |
| `konechi` | Shows whether you are on Ethernet or Wi-Fi | [konechi](https://github.com/piro0919/konechi) |
| `mac-classic-player` | Keyboard-driven media player | [mac-classic-player](https://github.com/piro0919/mac-classic-player) |
| `macopy` | Minimal clipboard history | [macopy](https://github.com/piro0919/macopy) |
| `mekuri` | Comic reader for archives and image folders | [mekuri](https://github.com/piro0919/mekuri) |
| `nonja` | Quiet inbox for macOS notifications | [nonja](https://github.com/piro0919/nonja) |
| `okigae` | Swaps menu bar icons for character artwork | [okigae](https://github.com/piro0919/okigae) |

These aren't in homebrew/cask itself — none of the repositories clear its
notability bar yet — so the tap is the way to get them through `brew` for now.

Each cask points at the DMG on that project's GitHub Releases. When an app gets
a new release, its cask needs the version and sha256 bumped here too.
