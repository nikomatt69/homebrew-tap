# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-14T14:45:37.516Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.163.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.163.0/nikcli-ai-darwin-x64.zip"
      sha256 "8c37504f0e9fc34ace4595ed04b47df0f3611fff13b7064c76dc32311c152b63"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.163.0/nikcli-ai-darwin-arm64.zip"
      sha256 "b864808dfaae98590a65477a28009ab1809cd6f19100acc90d1749d48b8ecf5c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.163.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "821f31e813d9d2f0ed77d4381051fa41eee5ce32f7589f5d9c1179fec4500bca"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.163.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "e8c49aca8b3e30343e8617161c42e4ae4f9b58580d2d42b363daf5a2ad175ef9"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

