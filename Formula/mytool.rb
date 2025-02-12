class Mytool < Formula
  desc "A tool"
  homepage "https://github.com/dlomellini/homebrew-testtab"
  url "https://github.com/dlomellini/homebrew-testtab/releases/download/tag1/mytool-1.0.0.tar.gz"
  sha256 "95fcce62f5f3fb960401c2efc1c3a27bf37bb59f479e12727069563041a09907"  # Replace with actual SHA256 checksum
  license "MIT"
  
  depends_on "perl"

  def install
    # Install the Perl scripts into Homebrew's bin directory
    bin.install "setup_cron.pl"
    bin.install "myscript.pl"

    # Ensure both scripts are executable
    chmod 0755, bin/"setup_cron.pl"
    chmod 0755, bin/"myscript.pl"
  end

  def post_install
    # Run the Perl script to set up the cron job
    system "#{bin}/setup_cron.pl"
  end

  test do
    # Verify that Perl runs
    system "perl", "-v"

    # Ensure the cron job exists
    assert_match "myscript.pl", shell_output("crontab -l")
  end
end
