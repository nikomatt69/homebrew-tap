# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-12T19:28:59.515Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.69.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.69.0/nikcli-ai-darwin-x64.zip"
      sha256 "005361f19d5667237b19afe92e27dd2f372a16b67a97596d05a41f2f536d041b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.69.0/nikcli-ai-darwin-arm64.zip"
      sha256 "64f4014f16d7414c4d256ff5102a31e71a9380241256335cbe7ef9ca2a2923af"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.69.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "974324927cc0ffe14fcf707d9fc40f27effe208412a49e37af6f639d19296ff0"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.69.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "1b7c8bb46faf68dc4527d88d286ef362ee347430ca74f7321a6db07040038adc"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

