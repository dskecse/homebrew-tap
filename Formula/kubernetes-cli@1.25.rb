class KubernetesCliAT125 < Formula
  desc "Kubernetes command-line interface"
  homepage "https://kubernetes.io/"
  version "v1.25.4"
  url "https://dl.k8s.io/release/#{version}/bin/darwin/amd64/kubectl"
  sha256 "b2acd8e949eca67eef4d1217d7d31bed348a0fda94c4b355aa2844f5ad5c6a9f"
  license "Apache-2.0"

  # https://kubernetes.io/releases/patch-releases/#1-25
  deprecate! date: "2023-08-28", because: "enters maintenance mode"

  def install
    bin.install Dir["*"]
  end

  test do
    system "#{bin}/kubectl", "version", "--client"
  end
end
