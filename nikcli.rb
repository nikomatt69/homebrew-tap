# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-12T14:44:23.577Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.275.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.275.0/nikcli-ai-darwin-x64.zip"
      sha256 "031324decb7ff419952660c8f5730ac2ce73586ae08909b0ffd232f73ffaba58"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.275.0/nikcli-ai-darwin-arm64.zip"
      sha256 "cb2155f917de0fce486f03f493c5b21b97ca27cd30f720d558815bc41a7094e1"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.275.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "f8af9c541dbfaa67e42a6aef5c3a0518dbaf06a25c249124213b9ce34dbf0d1d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.275.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "071476a8b08688672c5c32883316938091933666aa7ac67b477d9bf7f803b18f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

