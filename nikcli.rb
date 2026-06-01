# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-01T00:14:39.330Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.37.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.37.0/nikcli-ai-darwin-x64.zip"
      sha256 "cabe10a2d8a1514dfb102884130c5f3e2c53e5e3f0ffc691bf3cfdcec3b5c5c6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.37.0/nikcli-ai-darwin-arm64.zip"
      sha256 "e0c6feec58b7e5a371f36516681fb49e522ef1bb173b229ae589bb1b7ea82114"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.37.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "62e5c950cdc076934d19871de0729735274eec6a21a251e3706eec35fc2f7243"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.37.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "b80ccf522755d631c15992f043d5053e11e60a5906135569eebe699f3420d07f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

