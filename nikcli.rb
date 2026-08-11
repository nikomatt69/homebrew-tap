# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-11T17:57:27.771Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.268.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.268.0/nikcli-ai-darwin-x64.zip"
      sha256 "ba11c1d66e546d87483092d4e4d7caeaa3f2c9ccaed49e1b859b2e884c856c18"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.268.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a7eb3f9657ef35b5704c614e203a99219107d5db20248d5916fd3d8bace7ac48"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.268.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "4fda573395b247dccaca75ba465a7fd2ce91316ca786ee886e0fb2f9136622eb"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.268.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "527128756e14330dc45dcb1b39a7f672ec9db15357f991f5f13f27a8c6463ad6"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

