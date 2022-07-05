class KubernetesCliAT122 < Formula
  desc "Kubernetes command-line interface"
  homepage "https://kubernetes.io/"
  version "v1.22.11"
  url "https://dl.k8s.io/release/#{version}/bin/darwin/amd64/kubectl"
  sha256 "988ef08cb26f9be19cf125e95f04fa31a4187507ac3d8d8f1fcdf6e0a21c9984"
  license "Apache-2.0"

  # https://kubernetes.io/releases/patch-releases/#1-22
  deprecate! date: "2022-08-28", because: "enters maintenance mode"

  def install
    bin.install Dir["*"]
  end

  test do
    system "#{bin}/kubectl", "version", "--client"
  end
end
