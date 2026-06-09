# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-09T21:36:07.286Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.59.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.59.0/nikcli-ai-darwin-x64.zip"
      sha256 "f0c9c8fbf3f115b992a2c14e768ab8912c215936d58e5e68c7b5eeb7a603bbcd"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.59.0/nikcli-ai-darwin-arm64.zip"
      sha256 "b560b50aa821e10c76ddd76d5b26b960e8044bc6604808685626ca9968b3d0bc"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.59.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ba16f4a759122976c0a132b9b973638b945215e255e160bb7db0db0849c0c981"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.59.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f859620bb501acb557bfe6439b1c8aee25d5bd5340d88436970667c388c0e825"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

