# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-25T15:56:58.965Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.396.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.396.0/nikcli-ai-darwin-x64.zip"
      sha256 "af42b3cd3bccb3b7a9bf8be88138a28c9cee5961c3d28614d6c31ac22bb8ac77"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.396.0/nikcli-ai-darwin-arm64.zip"
      sha256 "80fb79f5cb90af02d5bd4e7923374d639a7c01497670b10b1c9d5f887be165bc"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.396.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "8d103ca7dd768e48d52cc2e59cff57cc543ecabbb57f463f68a2040542a96da5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.396.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "4838959979a7c1fee143589079dbb45876d691102cf22e3ad2b50fc93a55de86"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

