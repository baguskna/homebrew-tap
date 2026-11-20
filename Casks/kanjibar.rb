cask "kanjibar" do
  version "1.0.0"
  sha256 "5836bd70a37db962aea7b156b839b5e75e1d6ecc7e101e315a881ade5f0994e3"

  url "https://github.com/baguskna/mac_kanji_toggle/releases/download/v#{version}/KanjiBar-#{version}.zip"
  name "KanjiBar"
  desc "JLPT N3 kanji and vocabulary widget for the macOS menu bar"
  homepage "https://github.com/baguskna/mac_kanji_toggle"

  livecheck do
    url "https://github.com/baguskna/mac_kanji_toggle"
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "KanjiBar.app"

  uninstall quit: "com.baguskna.kanjibar"

  zap trash: [
    "~/Library/Application Support/KanjiBar",
  ]

  caveats <<~EOS
    KanjiBar lives in the menu bar (no Dock icon). Click it for a card.
    Quit it from the right-click menu.
  EOS
end
