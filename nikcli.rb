# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-13T22:45:07.849Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.282.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.282.0/nikcli-ai-darwin-x64.zip"
      sha256 "acfe682c49324cb46d9b6b3253816a26963235cd77abd92290fedda012c07204"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.282.0/nikcli-ai-darwin-arm64.zip"
      sha256 "4bd2ceef54baeebbe27639d69de0349cb60480c0fe6f1de6c62bef1004237048"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.282.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "06e82ce0d136337f5dd3b8ac00e5700542499ffab9fccd2bf31c1e1fc0a8bd5f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.282.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "ba1d74e8ad89e8e2b48310330f659c1709368c4a3cdd929e0862f3f5d3238668"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

