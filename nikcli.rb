# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-31T01:10:26.926Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.218.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.218.0/nikcli-ai-darwin-x64.zip"
      sha256 "7b10d7a048c984aedb3ac3dd3c6f39007819e29a35fe92a06a64711d5a18030a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.218.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a12f5db2d26e098598271e3d6841b87ce677afe22b21e570931d76f30f84b6ab"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.218.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "79f9bcae42f0b61e696b3939e59d161addd045f4a248dfd9599c5c78785b738e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.218.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "609ed67f147b317d4b42b1bc3aa0c20f646859dacc10b00291d8397ef2d03f65"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

