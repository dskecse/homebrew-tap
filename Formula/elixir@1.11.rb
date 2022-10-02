class ElixirAT111 < Formula
  desc "Functional metaprogramming aware language built on Erlang VM"
  homepage "https://elixir-lang.org/"
  url "https://github.com/elixir-lang/elixir/archive/v1.11.4.tar.gz"
  sha256 "85c7118a0db6007507313db5bddf370216d9394ed7911fe80f21e2fbf7f54d29"
  license "Apache-2.0"
  head "https://github.com/elixir-lang/elixir.git"

  # https://hexdocs.pm/elixir/compatibility-and-deprecations.html#compatibility-between-elixir-and-erlang-otp
  depends_on "erlang@24"

  def install
    system "make"
    bin.install Dir["bin/*"] - Dir["bin/*.{bat,ps1}"]

    Dir.glob("lib/*/ebin") do |path|
      app = File.basename(File.dirname(path))
      (lib/app).install path
    end

    system "make", "install_man", "PREFIX=#{prefix}"
  end

  test do
    assert_match(%r{(compiled with Erlang/OTP 24)}, shell_output(system "#{bin}/elixir", "-v"))
  end
end
