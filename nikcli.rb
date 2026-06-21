# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-21T17:20:17.165Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.94.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.94.0/nikcli-ai-darwin-x64.zip"
      sha256 "83e5b025d0bc55efb2413c2e3e4ced743efb038437a6f8a2aeb811aef8d8a358"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.94.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a34c05e6ef898a6f94196848e70bafa915498c722971e157a953360e8966a939"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.94.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "b40a8e6f0b47e8d00d125517ad9f8a1e6df02ed9eaf91b25186cf3e73ace0972"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.94.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "bd2333f24b372b8034f9ec557cec3b3276ba0e1e19e9ea2046aca47d2733b130"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

