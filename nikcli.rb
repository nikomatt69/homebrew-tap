# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-05T20:29:38.211Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.238.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.238.0/nikcli-ai-darwin-x64.zip"
      sha256 "4d219c3a91cb8a314515a69bd0d219ff10793e70df1bcedc00e44727f9b36020"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.238.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5b7ea660ab4c1e532cb77e82cccfed0a5258cc3524d1f9d705c22d541a5b5a1d"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.238.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "3869136e722ae991aeac494b86c5ae5013c79fc7021686aa0dcb501a1f73e16b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.238.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "255491971590ddaab9091f0c3af8e951ba01a2937ba8c588bd57c2300b2645c6"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

