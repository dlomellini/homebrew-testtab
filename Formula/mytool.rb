class Mytool < Formula
  desc "A tool"
  homepage "https://github.com/dlomellini/homebrew-testtab"
  url "https://github.com/dlomellini/homebrew-testtab/releases/download/tag1/mytool-1.0.0.tar.gz"
  sha256 "bc3456d49627eccc125a55fc89c4cf4a246d856e4fedbaf07f0ff9333d20aeee"  # Replace with actual SHA256 checksum
  license "MIT"
  
  depends_on "perl"

  def install
    bin.install "setup_cron.pl"
    bin.install "myscript.pl"

    # Ensure execute permissions
    chmod 0755, bin/"setup_cron.pl"
    chmod 0755, bin/"myscript.pl"
  end

  def post_install
    # Run the Launchd setup script
    system "echo 'test' > /opt/homebrew/etc/test.txt"
    system "#{bin}/setup_cron.pl"
  end

  def caveats
    <<~EOS
      A Launchd job has been created to run myscript.pl every 60 seconds.
      If you want to remove it, run:
        launchctl unload -w ~/Library/LaunchAgents/com.mytool.myscript.plist
    EOS
  end

  test do
    # Check if Launchd plist file exists
    assert_predicate testpath/"#{ENV["HOME"]}/Library/LaunchAgents/com.mytool.myscript.plist", :exist?
  end
end
