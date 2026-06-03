# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-03T23:14:48.320Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.50.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.50.0/nikcli-ai-darwin-x64.zip"
      sha256 "a9a8ea12297309cd0c8a5af186af441d7e871f3558fe66d80ae6d16fd43c01d9"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.50.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5bc310304935fb5684fc3ccd22cb208e6ca0082e57733a96254695a8280ddb94"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.50.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "a90b11b8fac94eccbe409fb42f696685862543a2678882e439a873a019943609"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.50.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "c74107b9cc59f618874724344f892f42c8d977749c80ca8d91426d6d7d06a0b8"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

