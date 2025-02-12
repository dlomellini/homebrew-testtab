class Mytool < Formula
  desc "A tool that sets up a cron job using Perl"
  homepage "https://github.com/dlomellini/homebrew-testtab"
  url "https://example.com/mytool-1.0.0.tar.gz"
  sha256 "95fcce62f5f3fb960401c2efc1c3a27bf37bb59f479e12727069563041a09907"  # Replace with actual SHA256 checksum
  license "MIT"

  depends_on "perl"

  def install
    bin.install "setup_cron.pl"
    bin.install "myscript.pl"

    # Ensure the script has execute permissions
    chmod 0755, bin/"setup_cron.pl"
    chmod 0755, bin/"myscript.pl"
  end

  def post_install
    # Run the Perl script after installation to set up the cron job
    system "#{bin}/setup_cron.pl"
  end

  test do
    # Check if Perl runs correctly
    system "perl", "-v"

    # Verify cron job is set (for testing)
    system "crontab", "-l"
  end
end
