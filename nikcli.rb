# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-18T02:23:22.020Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.175.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.175.0/nikcli-ai-darwin-x64.zip"
      sha256 "5f61100cb182cce001f6fae22b72a925364733820b07705dce53f59a55c7cec2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.175.0/nikcli-ai-darwin-arm64.zip"
      sha256 "3c2754f2e8fe0c0302ef91a8d5fecb1ba92e4944db573e6b0dbf05c9cc753198"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.175.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "6f37c358a471ce6fe9cb967a9afba8fab25f265ae1aa64a9850fe02742229394"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.175.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "22825fcb6ec64e9d6f6e236ab1d1caf320d9dc57d085c3b5b18b9371f026b5f5"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

