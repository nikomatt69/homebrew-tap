# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-11T22:28:58.129Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.272.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.272.0/nikcli-ai-darwin-x64.zip"
      sha256 "b56ce377611051e7668fdebd3cb40e500fec29a9433e4c050241d065626e668e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.272.0/nikcli-ai-darwin-arm64.zip"
      sha256 "ecad41a052649a77a1074c6b3c01755190b797e276b16f2c3849c3b52a880b7a"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.272.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "13d60a691e34091d2772ac07d23d41056abc53f5375fbf283697dc99fd847542"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.272.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f056b3f48a3bc13f45648fb47d060db99f92b742eb7f4bd00e78c7fad3ca8d84"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

