# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-02T03:03:54.270Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.135.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.135.0/nikcli-ai-darwin-x64.zip"
      sha256 "95f3602127e1aab38d9f0d97b234ad8c9b19c4bb2b239d9b516474de10c80ac6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.135.0/nikcli-ai-darwin-arm64.zip"
      sha256 "524e43badb72a430f5e1438e00da32ee5ebcb7d1e55869179c9b6164c679d3b8"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.135.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "312a4310e9e59910234715d94c6bd111476477d1647e626b65a4603af3ebd5e2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.135.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "a7e35290eee0a34f466ca1bb45dd3df61065e3911bcb4195e2675d9071c941aa"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

