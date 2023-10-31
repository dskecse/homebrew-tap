class KubernetesCliAT126 < Formula
  desc "Kubernetes command-line interface"
  homepage "https://kubernetes.io/"
  version "v1.26.10"
  url "https://dl.k8s.io/release/#{version}/bin/darwin/amd64/kubectl"
  sha256 "325a65e3ba0ece81be327f68dfe9132c2c6befd209c0a6a4463cc9668add2e37"
  license "Apache-2.0"

  # https://kubernetes.io/releases/patch-releases/#1-26
  deprecate! date: "2023-12-28", because: "enters maintenance mode"

  def install
    bin.install Dir["*"]
  end

  test do
    system "#{bin}/kubectl", "version", "--client"
  end
end
