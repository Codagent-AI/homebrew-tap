class AgentRunner < Formula
  desc "CLI workflow orchestrator for AI agents"
  homepage "https://github.com/Codagent-AI/agent-runner"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/Codagent-AI/agent-runner/releases/download/v0.1.0/agent-runner_darwin_arm64.tar.gz"
      sha256 "b404ca16e721f34a9707adeee5ffa0b5cfc427b9fda74de8a4aa6dba304c5ba5"
    end
    on_intel do
      url "https://github.com/Codagent-AI/agent-runner/releases/download/v0.1.0/agent-runner_darwin_amd64.tar.gz"
      sha256 "619d0aa0ecde47995345a64e8f796f8d5ef6fd20e27cc9f1df695b3fd230af5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Codagent-AI/agent-runner/releases/download/v0.1.0/agent-runner_linux_arm64.tar.gz"
      sha256 "7723b24d8b81ae0b4f743c4910b4143e35533709a1d121962aa8d2842d03d3bc"
    end
    on_intel do
      url "https://github.com/Codagent-AI/agent-runner/releases/download/v0.1.0/agent-runner_linux_amd64.tar.gz"
      sha256 "5b09a60a49d55c8d71ea59113f131c38214c405ad3d550d8c3541bed792df007"
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
