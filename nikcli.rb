# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-27T19:06:47.531Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.405.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.405.0/nikcli-ai-darwin-x64.zip"
      sha256 "3e2023da694b20979f1305f5ab80e530a00919c236576433f7032263c1e6bede"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.405.0/nikcli-ai-darwin-arm64.zip"
      sha256 "22b72ee9b7b662c5c5e040dbbcb376ec8d447f1e56d6a10dbfefb8cb6580ee0c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.405.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ee3f8fc9b13e9176cb0c0fd6bf3db62098e1d6032c7943004420fc7f0daa56b3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.405.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "72fbff36330971bfa7bb13404fdb0e11c9e491e8c0049ebede0ef2ca02c011d0"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

