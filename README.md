# KanjiBar Homebrew tap

[JLPT N3 kanji & vocabulary widget](https://github.com/baguskna/mac_kanji_toggle)
for the macOS menu bar.

## Install

```sh
brew tap baguskna/tap
brew install --cask kanjibar
```

If Homebrew asks you to trust the tap (Homebrew 5+ requires this for
third-party taps):

```sh
brew trust --tap baguskna/tap
```

Then launch **KanjiBar** from `/Applications` (it lives in the menu bar, no
Dock icon). Upgrades: `brew upgrade --cask kanjibar`. Removal:
`brew uninstall --cask kanjibar && brew untap baguskna/tap`.
