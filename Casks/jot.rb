cask "jot" do
  version "0.1.3"
  sha256 "c8b99019c44905fbda29fad7dfc6c231204bd876071890d51bbce09833fac6ed"

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
