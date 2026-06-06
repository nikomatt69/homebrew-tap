# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-06T18:05:50.070Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.52.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.52.0/nikcli-ai-darwin-x64.zip"
      sha256 "d14539f6e8e2d8e70aef82ef595e8759d5727e38564ed0fb2a1eade8e7d93aa9"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.52.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a241e9ec4631401afb3eeaf3bb0755223bbe4b3ab27910d1cb1256c52f043967"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.52.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "06a516a96eaf68198c4886384345f135df5511ddb9e5f76e1143ac792453c677"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.52.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "988a9606c71e0056355b58eb02691ef631b88a456bcf9e52ff2645d221d49f9b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

