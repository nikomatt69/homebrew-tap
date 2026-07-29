# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-29T16:50:39.728Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.211.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.211.0/nikcli-ai-darwin-x64.zip"
      sha256 "90208d576ba2cf86d45b92a36ba6640820198f168b7724adaf647ca8da57f2b1"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.211.0/nikcli-ai-darwin-arm64.zip"
      sha256 "1a6e20f631d9242a4f4374d85881553bd3cd3f78433f76c1e68b542f453c9c71"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.211.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "e1a422c5083e29a96d8dbd496b1914914f31aa74e90cb926fb51c566db86c4cc"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.211.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f9cdeffbc258a17760fc4b8204109f44179fcb77954e94cf4e77cff652340ca3"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

