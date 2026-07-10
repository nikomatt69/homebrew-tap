# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-10T00:54:23.441Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.152.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.152.0/nikcli-ai-darwin-x64.zip"
      sha256 "a579bf2e0f994f9fd21a9ed821930d032f968681d4da38c73f9c9f8f16f53f83"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.152.0/nikcli-ai-darwin-arm64.zip"
      sha256 "f4eee31e43538131432d2a399ec836fe92edf148ed0563d41a0ec1733f0f8be9"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.152.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "cd7b5a7e813705a365a638e938312818692d4e78fab56a2bfc5489b5e23a640f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.152.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "92491b82c1b54374b5506dafa1576267bf1e3de86732498ab306c9de3ebe85cf"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

