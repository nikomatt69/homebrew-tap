# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-30T17:51:02.922Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.212.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.212.0/nikcli-ai-darwin-x64.zip"
      sha256 "671b2747d41f61430699defb4dd40aaf3b38d7f8bef92a0605d9e6808cddc99f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.212.0/nikcli-ai-darwin-arm64.zip"
      sha256 "575dd9783c48516da0f4c2dcfe3c28a81c467f353a3cb63d1ff5b6264662f59b"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.212.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "41055702f220cfa063f6a6e8fe1d7d4c0a9f2105fb3516f0d03cd851e118101f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.212.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "29f1ea1d6defb97a17c04f8f0147a4346cf37fddedef8d1e830cf6845cac0e02"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

