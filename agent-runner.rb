class AgentRunner < Formula
  desc "CLI workflow orchestrator for AI agents"
  homepage "https://github.com/Codagent-AI/agent-runner"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/Codagent-AI/agent-runner/releases/download/v0.1.1/agent-runner_darwin_arm64.tar.gz"
      sha256 "37981164eeb0fe5de2d3fb531ddfbe349ffcb47c905965a88374e7686cea7441"
    end
    on_intel do
      url "https://github.com/Codagent-AI/agent-runner/releases/download/v0.1.1/agent-runner_darwin_amd64.tar.gz"
      sha256 "82a963f72dfe030b55db37eb874e2b0ef407928f5bf7b638f641afffd5f73d0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Codagent-AI/agent-runner/releases/download/v0.1.1/agent-runner_linux_arm64.tar.gz"
      sha256 "7c4ba5343ee4fbb4c588dde2c0078a542566a2c30181aec7407792c0fb608676"
    end
    on_intel do
      url "https://github.com/Codagent-AI/agent-runner/releases/download/v0.1.1/agent-runner_linux_amd64.tar.gz"
      sha256 "623983565be64dbde9e0c03156ce9cdda36c149d9da1fccd15cf548884bc282d"
    end
  end

  license "MIT"

  def install
    bin.install "agent-runner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-runner --version")
  end
end
