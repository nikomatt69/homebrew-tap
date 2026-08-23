# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-23T23:05:05.366Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.313.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.313.0/nikcli-ai-darwin-x64.zip"
      sha256 "9671d39d954c6519f181e25b8992493b3fc5bbab04182d45a246c93731afcf47"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.313.0/nikcli-ai-darwin-arm64.zip"
      sha256 "32299491118c51968ddc513a58de8a62cb2a01f9f2aa8678f5839523196e96ec"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.313.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "d0cb5f2178e546770e7b091c8adc0979bd1222d4b2aa527ce96711d70e32b4a6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.313.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "71858055e55da23f58c84c36242b6e6be9edf3585b42962a62b42eef7ffeacdb"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

