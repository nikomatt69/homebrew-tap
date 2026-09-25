# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-25T21:17:44.506Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.398.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.398.0/nikcli-ai-darwin-x64.zip"
      sha256 "de87a53e150785b6e551d03129f38a96899484717616b957dc9701b800a5df57"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.398.0/nikcli-ai-darwin-arm64.zip"
      sha256 "ed66f24735b212750b1922b4fb9c4546b22eee0aa8faeab0d2bc647814237d4a"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.398.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "70775217d9b823cbac48b98c0837335681aa0a33d40e23c21b147239268ac0db"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.398.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "3c035e02516e4a6bc5b48bb0da112a415034bd11f3bceb060848f1aa1ad23886"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

