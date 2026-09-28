# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-28T00:10:31.078Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.406.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.406.0/nikcli-ai-darwin-x64.zip"
      sha256 "f05587cdf0ba60622729621a35783728f64df8688d1de2ba3b45fc8944923477"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.406.0/nikcli-ai-darwin-arm64.zip"
      sha256 "22128869a6391341999aa0b515325e139f72e87d21638af88ffda64e549ff41c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.406.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "7aa1c8253ac93b4edf2dfacb6d5f205514c69fee0e3a64f6f1cb4c6e49dac690"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.406.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "32e99525d39c06f2331c29ab913813bfad0061c4c53158c1625c2e7bfca57c2b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

