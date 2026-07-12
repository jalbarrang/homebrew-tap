cask "taskbarra" do
  version "0.2.0"
  sha256 :no_check

  url "https://github.com/jalbarrang/taskbarra/releases/download/v#{version}/Taskbarra-#{version}.dmg"
  name "Taskbarra"
  desc "Windows-style taskbar with one entry per window"
  homepage "https://github.com/jalbarrang/taskbarra"

  depends_on macos: :sonoma

  app "Taskbarra.app"

  caveats <<~EOS
    Taskbarra is ad-hoc signed. Clear its quarantine attribute before launching:
      xattr -dr com.apple.quarantine /Applications/Taskbarra.app

    Re-grant Accessibility permission after every update because the ad-hoc signature changes.
  EOS
end
