# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-17T20:50:23.375Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.82.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.82.0/nikcli-ai-darwin-x64.zip"
      sha256 "0fc3f6b5e42c2c3297f54024ca2b28bb5262315791c2f5d3e0082e662139e987"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.82.0/nikcli-ai-darwin-arm64.zip"
      sha256 "4d854ea4cf5eba4b8314af4f3a0bd4035126d30c740a9767bf27bea9d220e5ab"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.82.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "698a42f39dd0918d8ffb2f88f42b2f2dfa22fec4beb05bacd953329f620f8676"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.82.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "623b4023df359c896fe45064e11ba301772c303e03a5d4b2a559b4bba293886f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

