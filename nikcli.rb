# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-24T16:47:51.963Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.198.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.198.0/nikcli-ai-darwin-x64.zip"
      sha256 "6c00c0993932ec9b666cadf851ac17b1b89eedddcbea5e1c83154bdcfb24bac2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.198.0/nikcli-ai-darwin-arm64.zip"
      sha256 "4788a5452f0223f021584da7111a25db9a4ed3f359525f8fef42691639b385f8"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.198.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "08ce0a78a3503480bc2559c34a6a244e9c542beb1e3019756ebc6d72e6e24586"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.198.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "0f8eed48f4345b093e8b8ac70df2f9904a3a548b8e94e25765b691aea1261674"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

