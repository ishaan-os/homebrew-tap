cask "jot" do
  version "0.1.2"
  sha256 "2d854375b5154ee57473cef01f7e465fe941a46e6a6722ad976d33fb9894ef61"

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
