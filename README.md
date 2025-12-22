# homebrew-macprefs tap

This is the Homebrew tap for `macprefs`.

## Install

```bash
brew tap jmcombs/macprefs
brew install macprefs
```

Or one-liner:

```bash
brew install jmcombs/macprefs/macprefs
```

## Formula

See Formula/macprefs.rb. Update `url` and `sha256` for each release.

## Release update steps
1. Build/sign/notarize/package macprefs (see main repo docs/RELEASE.md).
2. Copy the binary into a GitHub release and note its SHA256.
3. Edit Formula/macprefs.rb with the new version, URL, and SHA256.
4. Commit and push to this tap repo.
5. Test:
   ```bash
   brew uninstall macprefs || true
   brew untap jmcombs/macprefs || true
   brew tap jmcombs/macprefs
   brew install macprefs
   macprefs --help
   ```
