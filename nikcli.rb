# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-10-01T01:49:15.801Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.421.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.421.0/nikcli-ai-darwin-x64.zip"
      sha256 "676646e93a206ea6661c64c6a168c3f6941deec8650616cc3ca2751435fb2ecf"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.421.0/nikcli-ai-darwin-arm64.zip"
      sha256 "e46cc70cdf24717a130dfd0501ebe2d26858e3294a9a96e7dec0d8ed94537906"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.421.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "cef8dec595f1f73eca8c4c96597b9ad38d39e67ca7b45040386855080f2d8bd5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.421.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "cd6ddc68c50418bb33382966e4c163065592551861d1a6684f333f85fc54bf2e"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

