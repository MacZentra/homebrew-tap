# Homebrew tap for MacZentra

[MacZentra](https://maczentra.com) is a native disk analyzer and storage cleaner for Apple silicon Macs. It scans locally, shows what is using space in a treemap, and finds caches, large files, duplicates, developer junk and app leftovers. Scanning is free; cleaning is a one-time purchase with no subscription.

## Install

```sh
brew install --cask maczentra/tap/maczentra
```

Upgrade:

```sh
brew upgrade --cask maczentra
```

The app also updates itself (`auto_updates true`), so `brew upgrade` is optional.

Uninstall, including its caches and preferences:

```sh
brew uninstall --zap --cask maczentra
```

## Requirements

- Apple silicon (arm64) Mac
- macOS 13 (Ventura) or newer

The cask installs the signed and notarized DMG published at `https://maczentra.com/downloads/`. Version checks (`brew livecheck`) read `https://maczentra.com/updates/latest.json`.

## What it does

- Treemap, sunburst and tree views of what is using space
- Duplicates, similar media, large and stale files
- Caches, logs and developer junk (Xcode DerivedData, `node_modules`, Docker, Conda)
- App uninstaller with leftovers
- Removed files go to the Trash first; system files are protected
- `msc` command-line companion for scans from Terminal (Pro)

## Links

- Website: https://maczentra.com
- Changelog: [CHANGELOG.md](CHANGELOG.md)
- Mac App Store (iPhone and iPad): https://apps.apple.com/us/app/maczentra/id6823965405
- Demo video: https://youtu.be/CaPu6Dv8qKg
- Support: support@maczentra.com
