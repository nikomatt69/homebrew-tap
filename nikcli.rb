# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-26T14:15:18.382Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.400.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.400.0/nikcli-ai-darwin-x64.zip"
      sha256 "a48887481dbd3741795b48a65a1ed4b493c61796f298927a6c679faab113b2dc"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.400.0/nikcli-ai-darwin-arm64.zip"
      sha256 "b5b021e78b484020174c4f8b00cf4f77e625b44b51a0c36683f5b981b1bd7ae9"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.400.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "76f7bd76b3967960072894e5576dc4adeb8eea61adba3e63291f8a245289475c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.400.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "6cefdc1cf1f5cc1c85c96fb5a1bc24fb220fdc0592fd0059cfa6e38ea0355f96"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

