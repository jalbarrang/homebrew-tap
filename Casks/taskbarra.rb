cask "taskbarra" do
  version "0.2.0"
  sha256 :no_check

  url "https://github.com/jalbarrang/taskbarra/releases/download/v#{version}/Taskbarra-#{version}.dmg"
  name "Taskbarra"
  desc "Windows-style per-window taskbar for macOS"
  homepage "https://github.com/jalbarrang/taskbarra"

  depends_on macos: ">= :sonoma"

  app "Taskbarra.app"

  caveats <<~EOS
    Taskbarra is ad-hoc signed. Install it without quarantine:
      brew install --cask jalbarrang/tap/taskbarra --no-quarantine

    If macOS still blocks it, run:
      xattr -dr com.apple.quarantine /Applications/Taskbarra.app

    Re-grant Accessibility permission after every update because the ad-hoc signature changes.
  EOS
end
