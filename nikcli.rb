# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-20T20:27:30.538Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.301.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.301.0/nikcli-ai-darwin-x64.zip"
      sha256 "c8706ab6f20fa966d14b0b02cc1d41eb2fa67880e22e1fa5e104f62f0a506ece"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.301.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a56b031644863025f4440e2b22746418f91c8693df5c1038b201d547c5e79db8"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.301.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "83d44a10ea43580d5f8fcc5421711a4ebd24bf050eae9b521e18f1e856eb9a85"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.301.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "c74c8dc15efa452680f362045c82dbe06ce3852970fbc0426cc48da1c8de8517"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

