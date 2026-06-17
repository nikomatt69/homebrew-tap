# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-17T00:28:10.647Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.79.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.79.0/nikcli-ai-darwin-x64.zip"
      sha256 "854f8f0b8d8c0753b4416c6c1ce867f74078280c7c3b294b2d1d86914ca4e04c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.79.0/nikcli-ai-darwin-arm64.zip"
      sha256 "fa6a5f04c773a64023b2acf00b665b79fca883db46ab23206141ef908e2c56ff"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.79.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "5172b23b33e4b739713e0643ad05f9d4286fbec3f2a1bc8273d6bd3814791bbe"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.79.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "20c299a23a09ab67407c3c52557ec6659306bf0a8460b75f4115d02812cfb281"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

