# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-21T18:06:17.565Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.185.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.185.0/nikcli-ai-darwin-x64.zip"
      sha256 "5b0dd973a7d0e93a6a4b4fcacfa0d8ebb3ae14ae7b744a13a0b5ce1c5c467d9f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.185.0/nikcli-ai-darwin-arm64.zip"
      sha256 "02e24da669476463df57ed16869effa5c836507c79533a2f862b6caf6bb63f97"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.185.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "e059fdaaad4dcabe14934cf43f15376b6d966d9ddbb57ee49488b1351a11c86a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.185.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "6221bf88f7caee2fa9904ffa841242b57a9ae24cc117ed79d9a89c8b69e0b0db"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

