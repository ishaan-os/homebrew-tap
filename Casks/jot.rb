cask "jot" do
  version "0.1.1"
  sha256 "4963c31827c5b10d0d4207df571e8277f055c1716a29cd0243067a542224e263"

  url "https://github.com/ishaan-os/jot/releases/download/v#{version}/Jot-#{version}.dmg"
  name "Jot"
  desc "Scratchpad for reviewing AI output: capture, annotate, paste back"
  homepage "https://github.com/ishaan-os/jot"

  depends_on macos: :sonoma

  app "Jot.app"

  zap trash: [
    "~/Library/Application Support/Jot",
    "~/Library/Logs/Jot.log",
    "~/Library/Preferences/io.github.ishaan-os.jot.plist",
  ]
end
