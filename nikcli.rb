# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-05T20:57:43.235Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.139.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.139.0/nikcli-ai-darwin-x64.zip"
      sha256 "76ccada4ed4123514614634452b133177cdaa08bbfaa29e7e8a16a9b777798c9"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.139.0/nikcli-ai-darwin-arm64.zip"
      sha256 "d4be582305bf9bb2c342eeeaa54aa804ea050f09852b9e3ea8aa209e33fa400c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.139.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "b228e76e885ce4ced126f898dfcae50e29e58e6f22a6d13225e2b27e101e6eee"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.139.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "5f92babbbf11e6ec38a24d466d1b992efc6edab06aec4aa577200156c6061210"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

