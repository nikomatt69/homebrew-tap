# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-26T21:46:20.368Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.122.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.122.0/nikcli-ai-darwin-x64.zip"
      sha256 "e885e72fef8204a55c0a8f88a61ed1d974cd89189e02ed08a7092941b593d441"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.122.0/nikcli-ai-darwin-arm64.zip"
      sha256 "f17bca1de28d34c7183f1f7dfaf628a0207eed906baaa426c4fd923af6eb8b88"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.122.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "42aadc4747c71eaae9afd0d38159740c4ea8bcfce4ad500dc2eeb6962e94b4a1"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.122.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "3d66587321afccca87c3cac6270e8d5fa920d2669a174aba7e536c8f53e7d3bf"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

