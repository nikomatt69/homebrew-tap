# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-30T19:03:55.216Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.214.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.214.0/nikcli-ai-darwin-x64.zip"
      sha256 "2b5db2d044155a772661cdd20775a74187aa5066ad750c1d92b1fde3d2cd8594"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.214.0/nikcli-ai-darwin-arm64.zip"
      sha256 "3d04033064947dbbf90849e30c3f76fcbc29302d691f0e1457788750e9d03630"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.214.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "f0246ad504bc69795de79f17cc11bea5021db3bef255f0e03ea6bbd6e54fec7d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.214.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "720340d770fcf978e94458d3f411e6f3a0d46806ddebf2fb54f5d7213d1ab256"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

