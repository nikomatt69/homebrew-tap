# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-20T16:34:08.865Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.375.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.375.0/nikcli-ai-darwin-x64.zip"
      sha256 "7897ba9b59184f752e898da7456e06633cf93ca82a277da64156f53e3dfdcfe8"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.375.0/nikcli-ai-darwin-arm64.zip"
      sha256 "3af0e01d58a15e883bdd8e630fca983d332bb85a70980a66024b18283fc6826f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.375.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "65deb23a64126c9eb5d51d338b576a653e35a21736b3b9949a2c4bb9976bbc9d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.375.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "578ce193f48b0897e51be1c384d4f84114bb49e3d6c89bc9d023ddffe7e60ab5"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

