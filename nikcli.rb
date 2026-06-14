# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-14T22:19:11.604Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.76.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.76.0/nikcli-ai-darwin-x64.zip"
      sha256 "2ec4fd6e43932f453ebff22710a9cca664e0ed0dabb763f5df647bead50f77d0"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.76.0/nikcli-ai-darwin-arm64.zip"
      sha256 "678f54cdcd28103a7adcbd1e6cc73511524c35bf46382b53823c246910fccb6d"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.76.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "1d627b3278a8efb580ab3fa65f0323c8d707911b3e993b49323792adad38b93c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.76.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "2988e4be66a924a70a85077f0247e2d88861777d27e2a7e4ddcde3e572a3d59e"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

