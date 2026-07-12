# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-12T15:45:01.456Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.159.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.159.0/nikcli-ai-darwin-x64.zip"
      sha256 "8228103adfb38ab5afa3d318cca03a3b82a109ddf08f6e3aacd36ae670ad0587"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.159.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5c489da7d1ce9240a739ac99a0ee173d095a0c0641691ef48b1528a183049af0"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.159.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "91808c24100a0d1135274507640d9e9c70dc2c71d0bff8cdd8d74c8d67584db8"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.159.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "86d18711360211449956836e6578dd64095572ff41df5a440e5677fc1d343601"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

