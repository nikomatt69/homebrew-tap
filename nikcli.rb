# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-07T01:37:30.906Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.249.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.249.0/nikcli-ai-darwin-x64.zip"
      sha256 "c8ab281c362f381ea68d6da621279e82676cd66eadc0e3bcd2bb6f9c702f2e22"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.249.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5b616377be5cc122e4a4c3154d52be11ba2733483fae41b2a4e73680396897fb"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.249.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "72c1dd1c108be95be5703da9e57dc2819162e82deaa42eece4fe3ea8bb69fa37"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.249.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f9a776fac8973232c0a32c182e2f766d3ed23d307476110e6ce810ce16cb8135"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

