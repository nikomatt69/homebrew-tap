# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-22T17:47:45.835Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.388.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.388.0/nikcli-ai-darwin-x64.zip"
      sha256 "1021355411b55bae4336d48d9109da4beae2456e2bb209b3450498ba27363bc5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.388.0/nikcli-ai-darwin-arm64.zip"
      sha256 "1e9580ebf15c615077b1c7f5a440fe8475c6a3f3de607ed315e1be589638aa35"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.388.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "f24ca9c42a5ed07af821eca29b1eee641711e5fa9c5d5f69e5b93c67994fde97"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.388.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "28e8956cf56ea80aad853a55bf9756342cd35fe4fbe33da5b8115313436f58f9"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

