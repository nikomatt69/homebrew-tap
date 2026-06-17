# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-17T20:24:48.696Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.81.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.81.0/nikcli-ai-darwin-x64.zip"
      sha256 "a57576b3d0cc181c757ec1280294ee676d93b1a3029c350c2ca75723f4f65840"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.81.0/nikcli-ai-darwin-arm64.zip"
      sha256 "c264537a2013f1779373dddba6f16770ea2a4669a28bc37dba4f110e93793cf1"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.81.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "4ac62062ce0a0cd8eee84ce56721e4cf38822e55bc8f32768949bce5d6a6849f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.81.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "a7d946deb6e40755b30da24da07b212548503c82cdcb22f58a6f43cfe3d6f249"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

