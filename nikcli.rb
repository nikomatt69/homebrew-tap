# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-17T21:24:11.127Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.84.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.84.0/nikcli-ai-darwin-x64.zip"
      sha256 "0783c99bf73b200ad3f557c08f4be12793f37e284dfc6ed694ae806c8a7bfd2d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.84.0/nikcli-ai-darwin-arm64.zip"
      sha256 "7f4338e221c025439461ed42e58dd7d7b1a7af1d7a91f912572870f1e0fd6ed8"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.84.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ba84c977a86bc6844ef2cc8bbdf9b8b236e7dc99c2a0f8209b28be7872b77166"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.84.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "57d080cba0620687c51e7c60f8eab13308d99211ff2863d263c2b6f0b4399aee"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

