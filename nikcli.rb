# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-27T14:30:32.074Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.402.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.402.0/nikcli-ai-darwin-x64.zip"
      sha256 "770bed4f4e1c252c555a51d995912166cecabc8e19be8c59c3fa8e5e559bbd09"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.402.0/nikcli-ai-darwin-arm64.zip"
      sha256 "643ec89567a240da6c82574cca8dc289e6ec05faa2ce9e3af969b04c94549dab"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.402.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "8a8f1dd1b58fd7d5f8c3c5324c0bc80050d52580d635eb8b4823d44902d927fa"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.402.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "b68ed8c85f8696056b8caa72ecee52c4088a7e17690c6bd093002e371fad135c"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

