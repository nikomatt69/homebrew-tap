# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-21T18:02:40.048Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.306.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.306.0/nikcli-ai-darwin-x64.zip"
      sha256 "2bedf44274bdaa16b56690e00258fd6571771f4059562b75a146e7c745a29216"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.306.0/nikcli-ai-darwin-arm64.zip"
      sha256 "8e21c744b21c98d603f46b35922a226a16e76cad30efcdc5e0a7944012761c5e"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.306.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "cb4152abeb4cc0557417a49d83a16d176277eaa412286ae0c3cd373a25ca8263"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.306.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "9f52ed898724d680c974c019b1e6104432c42ade84c701a6720ea0fc9f88dfea"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

