# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-03T15:57:50.600Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.230.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.230.0/nikcli-ai-darwin-x64.zip"
      sha256 "60e1a34d9144e97b6030ad16c9a5459f2f77e131dd057dcb93908f61c9aa4c7a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.230.0/nikcli-ai-darwin-arm64.zip"
      sha256 "6318c3dfc397a1cca5add783b071ecda11ed58c749aea1769fb04c5adbb88ddf"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.230.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "a19c29b5d2a1015b44b60c5c040f212122ba3bd7e618e5aa5e47055753ee13c4"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.230.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "4bc119c5501716acc2657d1e88d64926207237ef672a07d8df52d2deb7ac8ae2"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

