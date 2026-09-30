# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-30T22:10:59.993Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.418.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.418.0/nikcli-ai-darwin-x64.zip"
      sha256 "42308e323fffbbad1ba833b03be5f0c9d2210a8cd34aba0971c8aa9102b313af"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.418.0/nikcli-ai-darwin-arm64.zip"
      sha256 "b2c2c27bfda90a83cddadca4144c8acb705447cb587978dc9b7eb63e84f1d562"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.418.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "dac8098113ec20519088509503fa631b911b7d56d4928ec66b5b62b67814b7e7"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.418.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "9e8c3af4fdd0a3cf66623138a2f5cfe76ce80ddc64dcd8e3dd1004c0b9ba521f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

