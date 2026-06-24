# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-24T20:36:13.015Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.115.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.115.0/nikcli-ai-darwin-x64.zip"
      sha256 "aaabe21a19a889e7ba6dc8155f78ef4b25f6c496181b89f1c82a2a2ddb01a03f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.115.0/nikcli-ai-darwin-arm64.zip"
      sha256 "979d7cc6544b3316538dd6047229af4c88d4fed092c88f012e3baa29bcc8a18f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.115.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "61843d9b18454fb1858a55f2c19e77165acb767e2a1b3de0980ede0c0fafb3fb"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.115.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "6712c1671f552a6675b65f934ea469a27cfb2189a8f6b13136e9f7782603cfcf"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

