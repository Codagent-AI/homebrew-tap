# typed: false
# frozen_string_literal: true

class AgentPlugin < Formula
  desc "Install agent plugins through native CLIs with skills fallback"
  homepage "https://github.com/Codagent-AI/agent-plugin"
  url "https://registry.npmjs.org/@codagent-ai/agent-plugin/-/agent-plugin-0.1.3.tgz"
  sha256 "fc147a041745b9e06bc73eed89bdea6df592df3caecdb5e935d85d56963eabd9"
  version "0.1.3"
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
