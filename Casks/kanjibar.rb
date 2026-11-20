cask "kanjibar" do
  version "1.0.0"
  sha256 "5836bd70a37db962aea7b156b839b5e75e1d6ecc7e101e315a881ade5f0994e3"

  url "https://github.com/baguskna/mac_kanji_toggle/releases/download/v#{version}/KanjiBar-#{version}.zip"
  name "KanjiBar"
  desc "JLPT N3 kanji and vocabulary widget for the macOS menu bar"
  homepage "https://github.com/baguskna/mac_kanji_toggle"

  depends_on macos: ">= :big_sur"

  app "KanjiBar.app"

  uninstall quit: "com.baguskna.kanjibar"

  # Releases are ad-hoc signed (no Developer ID yet), so the downloaded bundle
  # carries a quarantine flag and macOS would refuse its first launch. Clear it
  # after install. If releases are ever notarized, this block can be deleted.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/KanjiBar.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/KanjiBar",
  ]

  caveats <<~EOS
    KanjiBar lives in the menu bar (no Dock icon). Click it for a card.
    Quit it from the right-click menu.
  EOS
end
