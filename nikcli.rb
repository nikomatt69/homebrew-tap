# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-21T14:23:23.193Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.182.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.182.0/nikcli-ai-darwin-x64.zip"
      sha256 "dc8f25319ded7eec266758584d76ac06befd78825cc8b89e1f5c986d0c9bc1e8"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.182.0/nikcli-ai-darwin-arm64.zip"
      sha256 "fedfafcc6fbbdd6b11fe9e6b18cd15f02fc27b98a89c93da40bbe908cc6561db"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.182.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ffec31da398ad02d0eca2109a0a3539af052e4772392aaf8cdfde2df9dd4770e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.182.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "4bf32eb57bbc6cb48cd4b1cd345918a8a4f6377546aa688bd8c566964a0c1d4f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

