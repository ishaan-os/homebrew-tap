cask "jot" do
  version "0.1.4"
  sha256 "71d9bb721bcea6b6e3e8c6a72cf367e1e0ab77f897a17d60db74339b87b04dce"

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
