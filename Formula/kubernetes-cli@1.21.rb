class KubernetesCliAT121 < Formula
  desc "Kubernetes command-line interface"
  homepage "https://kubernetes.io/"
  version "v1.21.8"
  url "https://dl.k8s.io/release/#{version}/bin/darwin/amd64/kubectl"
  sha256 "f4b95b0fd01137d9976aa3c617b3a0f02204123ff06160988af1db4b2c813b27"
  license "Apache-2.0"

  # https://kubernetes.io/releases/patch-releases/#1-21
  deprecate! date: "2022-04-28", because: "enters maintenance mode"

  def install
    bin.install Dir["*"]
  end

  test do
    system "#{bin}/kubectl", "version", "--client"
  end
end
