# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-08T20:44:34.511Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.57.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.57.0/nikcli-ai-darwin-x64.zip"
      sha256 "9d3a553688a88fac73976f9945e14ccde5d1d0e25bb1ad89421876c3d3309dd4"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.57.0/nikcli-ai-darwin-arm64.zip"
      sha256 "3c39f0eae3a9bdfc9de55c3cf8aaa900509b2e809d0fa51de2b2b6205b8e498a"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.57.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "72845d64fb7d3d83dcd9680ba97bf79d4ba1b34f89128180e75750810f2c2011"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.57.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "fc6724478d96870eaa62371787cab93585e7e1a1d8d20dd15753d024f60dab05"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

