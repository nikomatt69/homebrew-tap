# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-15T17:16:46.931Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.169.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.169.0/nikcli-ai-darwin-x64.zip"
      sha256 "c852f3089af0eba221d409cafa7fad13260b5fb403e1eeaa792bbbfba27b1335"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.169.0/nikcli-ai-darwin-arm64.zip"
      sha256 "478bbb15c4cbf227527536017efe65bbb86c6ff897f47611b5dc54cb04365109"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.169.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "173ab23d85a4e06f0f00e7722c9fe58fc35a88c79591e0e306c6c4762b5c809d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.169.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "18b353fc4ebf64641ba1336be3a74839a1cb63e96f394d2a62d1a549b82405ef"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

