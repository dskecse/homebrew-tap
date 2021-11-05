class ElixirAT19 < Formula
  desc "Functional metaprogramming aware language built on Erlang VM"
  homepage "https://elixir-lang.org/"
  url "https://github.com/elixir-lang/elixir/archive/v1.9.4.tar.gz"
  sha256 "f3465d8a8e386f3e74831bf9594ee39e6dfde6aa430fe9260844cfe46aa10139"
  license "Apache-2.0"
  head "https://github.com/elixir-lang/elixir.git"

  depends_on "erlang@22"

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
    system "#{bin}/elixir", "-v"
  end
end
