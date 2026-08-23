# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-23T02:57:22.868Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.310.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.310.0/nikcli-ai-darwin-x64.zip"
      sha256 "ad3d23c0c0a9fa0d495cfcc0b373ee851d6dcd19c8ce500672878a953e8ab599"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.310.0/nikcli-ai-darwin-arm64.zip"
      sha256 "cf1edfa4e64bc3326cf824699ad70a27fd798e96e4ce3413657ccea03c7d4966"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.310.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ef7ab3444a5e832e4a0a599239dca0f79040b18aebe166e10f34d2111c214bf4"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.310.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "53b6d34c1a15674e91cbdad471ba51488e552d133ceb0512d9339889910271a0"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

