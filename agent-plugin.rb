# typed: false
# frozen_string_literal: true

class AgentPlugin < Formula
  desc "Install agent plugins through native CLIs with skills fallback"
  homepage "https://github.com/Codagent-AI/agent-plugin"
  url "https://registry.npmjs.org/@codagent-ai/agent-plugin/-/agent-plugin-0.1.4.tgz"
  sha256 "7b1e1636cf50ec43957a0bbcd6c552b2b2c7469ab687da2f64e8651ee15ea671"
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
