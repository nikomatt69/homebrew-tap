# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-05T21:44:50.017Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.140.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.140.0/nikcli-ai-darwin-x64.zip"
      sha256 "7117731794bddcac3e8b3487e1642e835315493a2768ec2b89a99a1d78da77b0"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.140.0/nikcli-ai-darwin-arm64.zip"
      sha256 "85620dfe285b847d554c79949ccdad396f0641c42ab609f12f19af6b7b721549"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.140.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "cc12f930481ede8a9a91ae7f769afadc72e1603a8bc56e3ba52c97b7db3cc767"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.140.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "8f4cd8438e96277853e943da645316b82cc6bffc04b08041a3c3c95ada4cbd96"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

