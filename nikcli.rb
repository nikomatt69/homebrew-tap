# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-10T13:55:50.044Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.336.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.336.0/nikcli-ai-darwin-x64.zip"
      sha256 "8406d9046b38617d6173a91c4a10a3bc8146ce37d8c814e73297ae8d62ecba71"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.336.0/nikcli-ai-darwin-arm64.zip"
      sha256 "777e15461513d7231c191103caa43de6984dd71c24f9aecdef313f2aec2c0a86"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.336.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "fc6f2b50ea76bd57e341b7d0e234deb73f4f455decd008896d33e5714b6d755b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.336.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "3e40cd9a6ab77409999ebb5a9e4e65d641d4bd46ec83e7579b201455bd7153e6"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

