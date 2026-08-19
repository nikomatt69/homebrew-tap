# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-19T19:14:53.132Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.298.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.298.0/nikcli-ai-darwin-x64.zip"
      sha256 "883339656dcedcdfce3c70d60ffa507b9e371c8e5e1bc4581dc9c0fce56fc935"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.298.0/nikcli-ai-darwin-arm64.zip"
      sha256 "7b6f5fb71547a576a6caaff304dff4b011a39709a851b46f285a85d15ebdb6b4"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.298.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "cacbcc0d6ce62a5c4c6e08a3bfc940bbbccb01b32d8d614d990c81429d963b75"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.298.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "05595f7d30dad0324e06c50561cdf1016728a1248e8216a47139267a027ddd37"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

