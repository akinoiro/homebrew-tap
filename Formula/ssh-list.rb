# ssh-list.rb

class SshList < Formula
    desc "SSH connection manager with a TUI interface "
    homepage "https://github.com/akinoiro/ssh-list"
    url "https://github.com/akinoiro/ssh-list/archive/refs/tags/v1.5.0.tar.gz"
    sha256 "edc37f3fba6780e762027a82fa8508e2a9d01351e3402db81de263d47a22d8ae"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      assert_match /^ssh-list /, shell_output("#{bin}/ssh-list --version")
    end
  end
