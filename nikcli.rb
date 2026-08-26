# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-26T18:40:16.412Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.321.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.321.0/nikcli-ai-darwin-x64.zip"
      sha256 "956e91744f3ac7d32516be6174c6c041c6d69e5fb0607a04df436748e82979f9"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.321.0/nikcli-ai-darwin-arm64.zip"
      sha256 "234581802fc8f05994a053f2405ea30cb6ff9ced6a429c98753b3eaa2387e8bc"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.321.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "213a2282dbae25bb504b44a2205c812191b00bb008e8ccbfbf24ad728b1da6d3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.321.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "c246702d74f33bd21093c7b1d78fef5b3fac7fd2b09b34263fd98786b4f18a3d"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

