# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-14T04:24:19.551Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.284.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.284.0/nikcli-ai-darwin-x64.zip"
      sha256 "0d9de070a8c7d7f30d1b090607e5e226e19df174f64da28d2032a88c95ef28fa"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.284.0/nikcli-ai-darwin-arm64.zip"
      sha256 "f8f7db65877be0463768ccb7be009eade5614ac414a9f64178783b0e21d9b06f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.284.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "300c87c8f55ddd2abd6f4b4b843f500740232181c0153ad3e89b5fef1e8f421e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.284.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "3af77af82626c07b7366c7df8965af606af1180ad4e6c7da3323489842faae4c"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

