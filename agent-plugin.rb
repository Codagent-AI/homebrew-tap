# typed: false
# frozen_string_literal: true

class AgentPlugin < Formula
  desc "Install agent plugins through native CLIs with skills fallback"
  homepage "https://github.com/Codagent-AI/agent-plugin"
  url "https://registry.npmjs.org/@codagent-ai/agent-plugin/-/agent-plugin-0.1.2.tgz"
  sha256 "a9ec0b7560795c0820bd3cc3cf8b9c950a0f88d468730116b2807d561a4da5f8"
  version "0.1.2"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    shell_output("#{bin}/agent-plugin --version")
  end
end
