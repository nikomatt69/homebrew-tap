# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-30T00:02:47.428Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.132.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.132.0/nikcli-ai-darwin-x64.zip"
      sha256 "79a12ec1538eb2983343d96365367a1663112ec955558951e524a6d836826e72"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.132.0/nikcli-ai-darwin-arm64.zip"
      sha256 "0965a81f98de5ddf1c7d51f08da79646722d9b167bff83d63dfbb28fc9c8fb3b"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.132.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "4e08f6d69940a1072dc43d18756fa7b9a87b8fa00d8c3dc9424ddc9ea9781e2c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.132.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "7c23faea195081396e6dcfa20143f8ee9323c1024303370ac34a65524d517a3c"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

