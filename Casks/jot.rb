cask "jot" do
  version "0.1.0"
  sha256 "81047496aed19f59ac4f6be11215955a7a95182bb10b13896c07992455e9b1c6"

  url "https://github.com/ishaan-os/jot/releases/download/v#{version}/Jot-#{version}.dmg"
  name "Jot"
  desc "Scratchpad for reviewing AI output: capture, annotate, paste back"
  homepage "https://github.com/ishaan-os/jot"

  depends_on macos: ">= :sonoma"

  app "Jot.app"

  zap trash: [
    "~/Library/Application Support/Jot",
    "~/Library/Logs/Jot.log",
    "~/Library/Preferences/io.github.ishaan-os.jot.plist",
  ]
end
