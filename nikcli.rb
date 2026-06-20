# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-20T16:10:34.989Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.93.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.93.0/nikcli-ai-darwin-x64.zip"
      sha256 "dd1149f0bf912e1c93dff1ddc8cd6f87b046325b03d245b2fabc8df45a876c60"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.93.0/nikcli-ai-darwin-arm64.zip"
      sha256 "3556483abb880fde41c5b6fba9a668204d1ed6406b3491fcc161aa0cd89f6a6d"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.93.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "eda6bb4355dd4d01637810405cfd7e13c24c1777fbf0dcf66b7a0adc9d1e7d28"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.93.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "678fd628bb7a9239b62c57ff302afbf8163a1532e3c4ff78afa22d317e61b014"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

