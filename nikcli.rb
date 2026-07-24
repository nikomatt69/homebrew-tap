# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-24T19:17:44.546Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.200.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.200.0/nikcli-ai-darwin-x64.zip"
      sha256 "eb4fe21b2ae720fa501828a6b6bce221d0a770c701caa29553cce76a980167e7"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.200.0/nikcli-ai-darwin-arm64.zip"
      sha256 "ada64f9fc42b642238e074c70d4a37fea1891dab2079cc82c03614b9bcd8309b"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.200.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "47cd73f2ce17a16ce549036edb2a1c683bfab442648df75007f606149ece6214"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.200.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "ebb1385cf940a65af15793705a7dfe922f1c422f4a859b30f4e0288fc19697b0"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

