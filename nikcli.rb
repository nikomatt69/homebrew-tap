# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-07T01:10:35.584Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.143.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.143.0/nikcli-ai-darwin-x64.zip"
      sha256 "dd935fc712dbbe11aca8a139fcd4239ddd3f1f6c0b92d97db6bada15c770a479"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.143.0/nikcli-ai-darwin-arm64.zip"
      sha256 "036acdfbac159b7539648e9573af969397e8c6d3dcd4bf49454aaf3e03f8e517"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.143.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "8253507754908f385fe0a96477f1f4fb108d3554679840aeeb694e5ad036365f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.143.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "7b15cfea562a6633a3b964be27339165e94ad13f491f7d7bd3d3ba19e4302fa1"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

